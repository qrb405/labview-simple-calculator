<?xml version='1.0' encoding='utf-8'?>
<Project Type="Project" LVVersion="23008000">
  <Property Name="NI.Project.Description" Type="Str">严格按实验1指导书建立六个字符串控件、初始化、数字/运算符/等号/清除值改变事件。条件结构直接在等号事件内，过程显示保留完整算式及结果。</Property>
  <Item Name="My Computer" Type="My Computer">
    <Property Name="CCSymbols" Type="Str">OS,Win;CPU,x86;OS_hidden,Win;CPU_hidden,x86</Property>
    <Property Name="NI.SortType" Type="Int">3</Property>
    <Item Name="虚拟计算器.vi" Type="VI" URL="../虚拟计算器.vi" />
    <Item Name="虚拟计算器_六控件查看.vi" Type="VI" URL="../虚拟计算器_六控件查看.vi" />
    <Item Name="Dependencies" Type="Dependencies" />
    <Item Name="Build Specifications" Type="Build">
      <Item Name="虚拟计算器" Type="EXE">
        <Property Name="App_INI_aliasGUID" Type="Str">{156D894B-D492-49FB-B80A-A3027C395D83}</Property>
        <Property Name="App_INI_GUID" Type="Str">{6EF3C9EE-96C2-4503-BBAE-25FF7A3403E7}</Property>
        <Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
        <Property Name="App_serverType" Type="Int">1</Property>
        <Property Name="Bld_buildCacheID" Type="Str">{498504ED-5E68-407D-A37D-4D27614C5D1F}</Property>
        <Property Name="Bld_buildSpecName" Type="Str">虚拟计算器</Property>
        <Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
        <Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
        <Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
        <Property Name="Bld_localDestDir" Type="Path">builds/虚拟计算器</Property>
        <Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
        <Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
        <Property Name="Bld_previewCacheID" Type="Str">{A34B77E2-7C91-4B57-9D20-AEB02626F557}</Property>
        <Property Name="Bld_version.major" Type="Int">1</Property>
        <Property Name="Destination[0].destName" Type="Str">虚拟计算器.exe</Property>
        <Property Name="Destination[0].path" Type="Path">builds/虚拟计算器/虚拟计算器.exe</Property>
        <Property Name="Destination[0].type" Type="Str">App</Property>
        <Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
        <Property Name="Destination[1].path" Type="Path">builds/虚拟计算器/data</Property>
        <Property Name="Destination[2].destName" Type="Str">Destination Directory</Property>
        <Property Name="Destination[2].path" Type="Path">builds/虚拟计算器</Property>
        <Property Name="DestinationCount" Type="Int">3</Property>
        <Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
        <Property Name="Source[0].Container.applyInclusion" Type="Bool">true</Property>
        <Property Name="Source[0].Container.applyProperties" Type="Bool">true</Property>
        <Property Name="Source[0].itemID" Type="Str">{9B6E0E72-3793-47EA-8D63-3F36F119A055}</Property>
        <Property Name="Source[0].type" Type="Str">Container</Property>
        <Property Name="Source[1].destinationIndex" Type="Int">0</Property>
        <Property Name="Source[1].itemID" Type="Ref">/My Computer/虚拟计算器.vi</Property>
        <Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
        <Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
        <Property Name="Source[1].properties[1].type" Type="Str">Run when opened</Property>
        <Property Name="Source[1].properties[1].value" Type="Bool">true</Property>
        <Property Name="Source[1].propertiesCount" Type="Int">2</Property>
        <Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
        <Property Name="Source[1].type" Type="Str">VI</Property>
        <Property Name="SourceCount" Type="Int">2</Property>
        <Property Name="TgtF_fileDescription" Type="Str">实验1 虚拟计算器</Property>
        <Property Name="TgtF_internalName" Type="Str">Lab1Calculator</Property>
        <Property Name="TgtF_legalCopyright" Type="Str">Course handout algorithm implementation. Standard NI control styling. Source notices included.</Property>
        <Property Name="TgtF_productName" Type="Str">实验1 虚拟计算器</Property>
        <Property Name="TgtF_targetfileGUID" Type="Str">{E84B6BF8-A534-4E78-9E89-0EEF63AF25A8}</Property>
        <Property Name="TgtF_targetfileName" Type="Str">虚拟计算器.exe</Property>
      </Item>
    </Item>
  </Item>
</Project>
