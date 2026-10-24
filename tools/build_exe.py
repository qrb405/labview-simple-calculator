"""Build the native LabVIEW application with NI's installed Application Builder."""
from pathlib import Path
from datetime import datetime
import json
import sys
import win32com.client

base = Path(__file__).resolve().parent.parent
project = base / '虚拟计算器.lvproj'
builder = Path(r'C:\Program Files (x86)\National Instruments\LabVIEW 2023\vi.lib\AppBuilder\BuildTargetBuildSpecification.vi')
app = win32com.client.Dispatch('LabVIEW.Application')
app._FlagAsMethod('GetVIReference')
vi = app.GetVIReference(str(builder), '', False, 0)
vi._FlagAsMethod('SetControlValue', 'GetControlValue', 'Run')
vi.SetControlValue('Path to project', str(project))
vi.SetControlValue('Name of build specification (if empty: build all)', '虚拟计算器')
vi.SetControlValue('Name of target (My Computer)', 'My Computer')
started = datetime.now().isoformat(timespec='seconds')
print('Building', str(project), flush=True)
vi.Run(False)
error = list(vi.GetControlValue('error out'))
files = list(vi.GetControlValue('Generated files'))
result = {'started': started, 'finished': datetime.now().isoformat(timespec='seconds'), 'project': str(project), 'error': error, 'generated_files': files}
if not error[0]:
    # Application Builder inherits VI Server settings from the local developer
    # environment. This standalone calculator requires no remote-control service.
    # Apply the same explicit runtime configuration after every successful build.
    disabled = {
        'server.app.propertiesEnabled': 'False',
        'server.ole.enabled': 'False',
        'server.tcp.enabled': 'False',
        'server.vi.callsEnabled': 'False',
        'server.vi.propertiesEnabled': 'False',
        'WebServer.Enabled': 'False',
    }
    ini = next(Path(p) for p in files if Path(p).suffix.lower() == '.ini')
    lines = ini.read_text(encoding='mbcs').splitlines()
    replaced = set()
    output = []
    for line in lines:
        key = line.partition('=')[0]
        if key in {'server.tcp.port', 'WebServer.TcpAccess', 'WebServer.ViAccess'}:
            continue
        if key in disabled:
            output.append(f'{key}={disabled[key]}')
            replaced.add(key)
        else:
            output.append(line)
    output.extend(f'{key}={value}' for key, value in disabled.items() if key not in replaced)
    ini.write_text('\n'.join(output) + '\n', encoding='mbcs')
    verified = dict(line.partition('=')[::2] for line in ini.read_text(encoding='mbcs').splitlines() if '=' in line)
    assert all(verified.get(key) == value for key, value in disabled.items())
    result['post_build_runtime_configuration'] = {'ini': str(ini), 'settings': disabled, 'readback_verified': True}
(base / 'build-result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
print(json.dumps(result, ensure_ascii=False, indent=2), flush=True)
sys.exit(1 if error[0] else 0)
