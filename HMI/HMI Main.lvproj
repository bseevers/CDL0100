<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Property Name="varPersistentID:{0817E02E-79B3-4CA9-AAAB-AEC93E607F18}" Type="Ref">/My Computer/Local Variables.lvlib/StopProcess</Property>
	<Property Name="varPersistentID:{12DC0DF3-35CD-4C65-948E-2A477241BCF4}" Type="Ref">/My Computer/Local Variables.lvlib/CurrentRunLevel</Property>
	<Property Name="varPersistentID:{3CE09A52-CCF2-4B54-81CF-F07DE346E17F}" Type="Ref">/My Computer/Local Variables.lvlib/PT5_MO</Property>
	<Property Name="varPersistentID:{42C2830E-4E52-4970-BEEC-44FC5A75BF17}" Type="Ref">/My Computer/Local Variables.lvlib/PT2_MO</Property>
	<Property Name="varPersistentID:{4E9A920F-3275-40C0-AE3B-10EC0249D683}" Type="Ref">/My Computer/Local Variables.lvlib/PT4_MO</Property>
	<Property Name="varPersistentID:{6C6A3A8F-2DD4-4F98-AB20-465EED3A9552}" Type="Ref">/My Computer/Local Variables.lvlib/AutoLogoutTime</Property>
	<Property Name="varPersistentID:{6CD89A52-8836-4DAD-A45D-F4C68A15791E}" Type="Ref">/My Computer/Local Variables.lvlib/UserEmpNumber</Property>
	<Property Name="varPersistentID:{6D767758-A12E-453A-94D7-896E68B26B7D}" Type="Ref">/My Computer/Local Variables.lvlib/PT1_MO</Property>
	<Property Name="varPersistentID:{7B9E79FD-8294-4C0E-A9F0-86D9C5B12D52}" Type="Ref">/My Computer/Local Variables.lvlib/UserName</Property>
	<Property Name="varPersistentID:{93A3E29D-9D92-4E91-91C1-0EB48FE0EC33}" Type="Ref">/My Computer/Local Variables.lvlib/PT3_MO</Property>
	<Property Name="varPersistentID:{9E0CC820-2580-475D-951F-3D56AA7D80EB}" Type="Ref">/My Computer/Local Variables.lvlib/LockOutUser</Property>
	<Property Name="varPersistentID:{A560FBDD-6844-4790-A3E4-21970C2E43B8}" Type="Ref">/My Computer/Local Variables.lvlib/PT6_MO</Property>
	<Property Name="varPersistentID:{B1D32B59-E802-4AA6-9752-77BFD681AD90}" Type="Ref">/My Computer/Local Variables.lvlib/LastLogonTime</Property>
	<Property Name="varPersistentID:{D37A646F-0896-417B-8FB7-1588F2753C2C}" Type="Ref">/My Computer/Local Variables.lvlib/UserLogonName</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Controls" Type="Folder">
			<Item Name="BigTank.ctl" Type="VI" URL="../Controls/BigTank.ctl"/>
			<Item Name="Electric Heater.ctl" Type="VI" URL="../Controls/Electric Heater.ctl"/>
			<Item Name="Heat Exchanger.ctl" Type="VI" URL="../Controls/Heat Exchanger.ctl"/>
			<Item Name="Open Tank.ctl" Type="VI" URL="../Controls/Open Tank.ctl"/>
			<Item Name="Oxide Feeder.ctl" Type="VI" URL="../Controls/Oxide Feeder.ctl"/>
		</Item>
		<Item Name="History Support" Type="Folder">
			<Item Name="Convert JSON Time to Timestamp.vi" Type="VI" URL="../History/Convert JSON Time to Timestamp.vi"/>
			<Item Name="Convert Timestamp to JSON Citadel Timestamp.vi" Type="VI" URL="../History/Convert Timestamp to JSON Citadel Timestamp.vi"/>
			<Item Name="Create Citadel Query Trace Data String.vi" Type="VI" URL="../History/Create Citadel Query Trace Data String.vi"/>
			<Item Name="Get 1 Trace from SCADA.vi" Type="VI" URL="../History/Get 1 Trace from SCADA.vi"/>
			<Item Name="Trace Variable 1 hour Popup.vi" Type="VI" URL="../History/Trace Variable 1 hour Popup.vi"/>
		</Item>
		<Item Name="HMI" Type="Folder">
			<Item Name="AcidClean.vi" Type="VI" URL="../HMI Pages/AcidClean.vi"/>
			<Item Name="basement tank 1.vi" Type="VI" URL="../HMI Pages/basement tank 1.vi"/>
			<Item Name="basement tank 2.vi" Type="VI" URL="../HMI Pages/basement tank 2.vi"/>
			<Item Name="basement tank 3.vi" Type="VI" URL="../HMI Pages/basement tank 3.vi"/>
			<Item Name="basement tank 4.vi" Type="VI" URL="../HMI Pages/basement tank 4.vi"/>
			<Item Name="Dryer.vi" Type="VI" URL="../HMI Pages/Dryer.vi"/>
			<Item Name="Etch.vi" Type="VI" URL="../HMI Pages/Etch.vi"/>
			<Item Name="History.vi" Type="VI" URL="../HMI Pages/History.vi"/>
			<Item Name="Home.vi" Type="VI" URL="../HMI Pages/Home.vi"/>
			<Item Name="LockOut.vi" Type="VI" URL="../HMI Pages/LockOut.vi"/>
			<Item Name="Plate Tank 1.vi" Type="VI" URL="../HMI Pages/Plate Tank 1.vi"/>
			<Item Name="Plate Tank 2.vi" Type="VI" URL="../HMI Pages/Plate Tank 2.vi"/>
			<Item Name="Plate Tank 3.vi" Type="VI" URL="../HMI Pages/Plate Tank 3.vi"/>
			<Item Name="Plate Tank 4.vi" Type="VI" URL="../HMI Pages/Plate Tank 4.vi"/>
			<Item Name="Plate Tank 5.vi" Type="VI" URL="../HMI Pages/Plate Tank 5.vi"/>
			<Item Name="Plate Tank 6.vi" Type="VI" URL="../HMI Pages/Plate Tank 6.vi"/>
			<Item Name="Predip.vi" Type="VI" URL="../HMI Pages/Predip.vi"/>
			<Item Name="Rinse 1.vi" Type="VI" URL="../HMI Pages/Rinse 1.vi"/>
			<Item Name="Rinse 2.vi" Type="VI" URL="../HMI Pages/Rinse 2.vi"/>
			<Item Name="Rinse 3.vi" Type="VI" URL="../HMI Pages/Rinse 3.vi"/>
			<Item Name="Rinse 4.vi" Type="VI" URL="../HMI Pages/Rinse 4.vi"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Add wtaer usage.vi" Type="VI" URL="../Support VIs/Add wtaer usage.vi"/>
			<Item Name="Adjust Controls to Run Level.vi" Type="VI" URL="../Support VIs/Adjust Controls to Run Level.vi"/>
			<Item Name="AlarmTags.csv" Type="Document" URL="../../TagEngine/XMLTagDefs/AlarmTags.csv"/>
			<Item Name="Assemble DC Rectifier Setting Changes for PLC.vi" Type="VI" URL="../Support VIs/Assemble DC Rectifier Setting Changes for PLC.vi"/>
			<Item Name="Assemble Rectifier Setting Changes for PLC.vi" Type="VI" URL="../Support VIs/Assemble Rectifier Setting Changes for PLC.vi"/>
			<Item Name="BadgeScan.vi" Type="VI" URL="../Support VIs/BadgeScan.vi"/>
			<Item Name="BrowseRecipe.vi" Type="VI" URL="../Support VIs/BrowseRecipe.vi"/>
			<Item Name="Calculate Plating Time DC.vi" Type="VI" URL="../Support VIs/Calculate Plating Time DC.vi"/>
			<Item Name="Calculate Plating Time.vi" Type="VI" URL="../Support VIs/Calculate Plating Time.vi"/>
			<Item Name="CDL0100 Recipe Creator v1.0.vi" Type="VI" URL="../Support VIs/CDL0100 Recipe Creator v1.0.vi"/>
			<Item Name="CheckForAutoLogout.vi" Type="VI" URL="../Support VIs/CheckForAutoLogout.vi"/>
			<Item Name="Convert DC RectifierListData to Arrays.vi" Type="VI" URL="../Support VIs/Convert DC RectifierListData to Arrays.vi"/>
			<Item Name="Convert RectifierListData to Arrays.vi" Type="VI" URL="../Support VIs/Convert RectifierListData to Arrays.vi"/>
			<Item Name="Data Check DC Rectifier Settings.vi" Type="VI" URL="../Support VIs/Data Check DC Rectifier Settings.vi"/>
			<Item Name="Data Check Rectifier Settings.vi" Type="VI" URL="../Support VIs/Data Check Rectifier Settings.vi"/>
			<Item Name="Drain to AMB verify dialog.vi" Type="VI" URL="../HMI Pages/Drain to AMB verify dialog.vi"/>
			<Item Name="Drain to ANMB verify dialog.vi" Type="VI" URL="../HMI Pages/Drain to ANMB verify dialog.vi"/>
			<Item Name="Find local ipv4Addr.vi" Type="VI" URL="../../TagEngine/Support/Find local ipv4Addr.vi"/>
			<Item Name="GetUserGroupLevel.vi" Type="VI" URL="../Support VIs/GetUserGroupLevel.vi"/>
			<Item Name="GrayOutButtonFromPSPVar.vi" Type="VI" URL="../Support VIs/GrayOutButtonFromPSPVar.vi"/>
			<Item Name="Handle Rectifer Step Selection.vi" Type="VI" URL="../Support VIs/Handle Rectifer Step Selection.vi"/>
			<Item Name="Load Alarm Tags and Descriptions.vi" Type="VI" URL="../Support VIs/Load Alarm Tags and Descriptions.vi"/>
			<Item Name="Load and Sort Alarm tags from PSP.vi" Type="VI" URL="../Support VIs/Load and Sort Alarm tags from PSP.vi"/>
			<Item Name="Log Rectifier Settings.vi" Type="VI" URL="../Support VIs/Log Rectifier Settings.vi"/>
			<Item Name="Logout User.vi" Type="VI" URL="../Support VIs/Logout User.vi"/>
			<Item Name="LookupBadgeName.vi" Type="VI" URL="../Support VIs/LookupBadgeName.vi"/>
			<Item Name="LVWinFun.dll" Type="Document" URL="../Support VIs/LVWinFun.dll"/>
			<Item Name="No Drain to AMR verify dialog.vi" Type="VI" URL="../HMI Pages/No Drain to AMR verify dialog.vi"/>
			<Item Name="Open PSP library.vi" Type="VI" URL="../../TagEngine/Support/Open PSP library.vi"/>
			<Item Name="OpenRectifierLog.vi" Type="VI" URL="../Support VIs/OpenRectifierLog.vi"/>
			<Item Name="Prep Alarm Tags.vi" Type="VI" URL="../Support VIs/Prep Alarm Tags.vi"/>
			<Item Name="Read Rectifier Recipe.vi" Type="VI" URL="../Support VIs/Read Rectifier Recipe.vi"/>
			<Item Name="ReadTags.csv" Type="Document" URL="../../TagEngine/XMLTagDefs/ReadTags.csv"/>
			<Item Name="ReadWriteTags.csv" Type="Document" URL="../../TagEngine/XMLTagDefs/ReadWriteTags.csv"/>
			<Item Name="Rectifier Log Process.vi" Type="VI" URL="../Support VIs/Rectifier Log Process.vi"/>
			<Item Name="Save Rectifier Recipe.vi" Type="VI" URL="../Support VIs/Save Rectifier Recipe.vi"/>
			<Item Name="SetRunlevelForUser.vi" Type="VI" URL="../Support VIs/SetRunlevelForUser.vi"/>
			<Item Name="TAE Format Active Alarm Display.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/TAE Format Active Alarm Display.vi"/>
			<Item Name="TAE Format Alarm Ticker.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/TAE Format Alarm Ticker.vi"/>
			<Item Name="Validate Plate Tank Enable.vi" Type="VI" URL="../Support VIs/Validate Plate Tank Enable.vi"/>
			<Item Name="Wait for Msg Complete.vi" Type="VI" URL="../Support VIs/Wait for Msg Complete.vi"/>
			<Item Name="Write Boolean To Que.vi" Type="VI" URL="../Support VIs/Write Boolean To Que.vi"/>
			<Item Name="Write Pulse Rectifier Recipe to ListBox.vi" Type="VI" URL="../Support VIs/Write Pulse Rectifier Recipe to ListBox.vi"/>
			<Item Name="Write Rectifier Recipe to ListBox.vi" Type="VI" URL="../Support VIs/Write Rectifier Recipe to ListBox.vi"/>
		</Item>
		<Item Name="HMI Startup.vi" Type="VI" URL="../HMI Startup.vi"/>
		<Item Name="Local Variables.lvlib" Type="Library" URL="../Local Variables.lvlib"/>
		<Item Name="SaveallTraceAttribToMap.vi" Type="VI" URL="../../SaveallTraceAttribToMap.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="1D Boolean Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D Boolean Array Changed__ogtk.vi"/>
				<Item Name="1D CDB Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D CDB Array Changed__ogtk.vi"/>
				<Item Name="1D CSG Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D CSG Array Changed__ogtk.vi"/>
				<Item Name="1D CXT Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D CXT Array Changed__ogtk.vi"/>
				<Item Name="1D DBL Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D DBL Array Changed__ogtk.vi"/>
				<Item Name="1D EXT Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D EXT Array Changed__ogtk.vi"/>
				<Item Name="1D I8 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D I8 Array Changed__ogtk.vi"/>
				<Item Name="1D I16 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D I16 Array Changed__ogtk.vi"/>
				<Item Name="1D I32 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D I32 Array Changed__ogtk.vi"/>
				<Item Name="1D Path Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D Path Array Changed__ogtk.vi"/>
				<Item Name="1D SGL Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D SGL Array Changed__ogtk.vi"/>
				<Item Name="1D String Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D String Array Changed__ogtk.vi"/>
				<Item Name="1D U8 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D U8 Array Changed__ogtk.vi"/>
				<Item Name="1D U16 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D U16 Array Changed__ogtk.vi"/>
				<Item Name="1D U32 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D U32 Array Changed__ogtk.vi"/>
				<Item Name="1D Variant Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/1D Variant Array Changed__ogtk.vi"/>
				<Item Name="2D Boolean Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D Boolean Array Changed__ogtk.vi"/>
				<Item Name="2D CDB Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D CDB Array Changed__ogtk.vi"/>
				<Item Name="2D CSG Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D CSG Array Changed__ogtk.vi"/>
				<Item Name="2D CXT Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D CXT Array Changed__ogtk.vi"/>
				<Item Name="2D DBL Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D DBL Array Changed__ogtk.vi"/>
				<Item Name="2D EXT Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D EXT Array Changed__ogtk.vi"/>
				<Item Name="2D I8 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D I8 Array Changed__ogtk.vi"/>
				<Item Name="2D I16 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D I16 Array Changed__ogtk.vi"/>
				<Item Name="2D I32 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D I32 Array Changed__ogtk.vi"/>
				<Item Name="2D Path Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D Path Array Changed__ogtk.vi"/>
				<Item Name="2D SGL Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D SGL Array Changed__ogtk.vi"/>
				<Item Name="2D String Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D String Array Changed__ogtk.vi"/>
				<Item Name="2D U8 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D U8 Array Changed__ogtk.vi"/>
				<Item Name="2D U16 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D U16 Array Changed__ogtk.vi"/>
				<Item Name="2D U32 Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D U32 Array Changed__ogtk.vi"/>
				<Item Name="2D Variant Array Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/2D Variant Array Changed__ogtk.vi"/>
				<Item Name="Array of VData to VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VArray__ogtk.vi"/>
				<Item Name="Array of VData to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VCluster__ogtk.vi"/>
				<Item Name="Array Size(s)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array Size(s)__ogtk.vi"/>
				<Item Name="Array to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array to Array of VData__ogtk.vi"/>
				<Item Name="Boolean Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/Boolean Changed__ogtk.vi"/>
				<Item Name="Boolean Trigger__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/boolean/boolean.llb/Boolean Trigger__ogtk.vi"/>
				<Item Name="Build Error Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Build Error Cluster__ogtk.vi"/>
				<Item Name="CDB Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/CDB Changed__ogtk.vi"/>
				<Item Name="Cluster to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Cluster to Array of VData__ogtk.vi"/>
				<Item Name="CSG Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/CSG Changed__ogtk.vi"/>
				<Item Name="CXT Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/CXT Changed__ogtk.vi"/>
				<Item Name="Data Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/Data Changed__ogtk.vi"/>
				<Item Name="DBL Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/DBL Changed__ogtk.vi"/>
				<Item Name="EXT Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/EXT Changed__ogtk.vi"/>
				<Item Name="Get Array Element TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TD__ogtk.vi"/>
				<Item Name="Get Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name from TD__ogtk.vi"/>
				<Item Name="Get Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name__ogtk.vi"/>
				<Item Name="Get Element TD from Array TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Element TD from Array TD__ogtk.vi"/>
				<Item Name="Get Header from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Header from TD__ogtk.vi"/>
				<Item Name="Get Last PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Last PString__ogtk.vi"/>
				<Item Name="Get PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get PString__ogtk.vi"/>
				<Item Name="Get TDEnum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get TDEnum from Data__ogtk.vi"/>
				<Item Name="Get Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Variant Attributes__ogtk.vi"/>
				<Item Name="HNE Page Manager (Init).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Init).vi"/>
				<Item Name="HNE Page Manager (Next).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Next).vi"/>
				<Item Name="HNE Page Manager (Set).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Set).vi"/>
				<Item Name="hne_Page State.vi" Type="VI" URL="/&lt;userlib&gt;/HNE/_SubVIs/hne_Page State.vi"/>
				<Item Name="I8 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/I8 Changed__ogtk.vi"/>
				<Item Name="I16 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/I16 Changed__ogtk.vi"/>
				<Item Name="I32 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/I32 Changed__ogtk.vi"/>
				<Item Name="MGI Caller&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Caller&apos;s VI Reference.vi"/>
				<Item Name="MGI Current VI&apos;s Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Current VI&apos;s Reference.vi"/>
				<Item Name="MGI Exit if Runtime.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Exit if Runtime.vi"/>
				<Item Name="MGI Level&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Level&apos;s VI Reference.vi"/>
				<Item Name="MGI Top Level VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Top Level VI Reference.vi"/>
				<Item Name="MGI VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference.vi"/>
				<Item Name="Page Operation.ctl" Type="VI" URL="/&lt;userlib&gt;/HNE/_SubVIs/TypeDefs/Page Operation.ctl"/>
				<Item Name="Parse String with TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Parse String with TDs__ogtk.vi"/>
				<Item Name="QueryCitadelWebServer.vi" Type="VI" URL="/&lt;userlib&gt;/QueryCitadelWebServer.vi"/>
				<Item Name="Reshape 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape 1D Array__ogtk.vi"/>
				<Item Name="Reshape Array to 1D VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape Array to 1D VArray__ogtk.vi"/>
				<Item Name="Set Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Data Name__ogtk.vi"/>
				<Item Name="SGL Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/SGL Changed__ogtk.vi"/>
				<Item Name="Split Cluster TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Split Cluster TD__ogtk.vi"/>
				<Item Name="String Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/String Changed__ogtk.vi"/>
				<Item Name="TAE Alarm Engine.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE Alarm Engine.vi"/>
				<Item Name="TAE AlarmStatusGV.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE AlarmStatusGV.vi"/>
				<Item Name="TAE Close.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE Close.vi"/>
				<Item Name="TAE Format Alarm History Display.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/TAE Format Alarm History Display.vi"/>
				<Item Name="TAE Init.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE Init.vi"/>
				<Item Name="tae_Active Alarms.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_Active Alarms.vi"/>
				<Item Name="tae_Alarm_Config_GV.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/_subVI/tae_Alarm_Config_GV.vi"/>
				<Item Name="tae_AlarmCommOut.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmCommOut.ctl"/>
				<Item Name="tae_AlarmConfiguration.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmConfiguration.ctl"/>
				<Item Name="tae_AlarmEvent.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmEvent.ctl"/>
				<Item Name="tae_AlarmLog.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_AlarmLog.vi"/>
				<Item Name="tae_AlarmStatus.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_AlarmStatus.vi"/>
				<Item Name="tae_AlarmTagConfiguration.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmTagConfiguration.ctl"/>
				<Item Name="tae_AlarmTagList.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmTagList.ctl"/>
				<Item Name="tae_AlarmType.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_AlarmType.ctl"/>
				<Item Name="tae_CheckForAlarm.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_CheckForAlarm.vi"/>
				<Item Name="tae_FixedWidth.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_FixedWidth.vi"/>
				<Item Name="tae_Get Language String.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_Get Language String.vi"/>
				<Item Name="tae_HMI Alarm Display Data.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_HMI Alarm Display Data.ctl"/>
				<Item Name="tae_HMI Event Format State.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_HMI Event Format State.ctl"/>
				<Item Name="tae_Languages.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_Languages.ctl"/>
				<Item Name="tae_LanguageSelection.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_LanguageSelection.vi"/>
				<Item Name="tae_LanguageSelectionOperations.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_LanguageSelectionOperations.ctl"/>
				<Item Name="tae_LineTerminator.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_LineTerminator.ctl"/>
				<Item Name="tae_Next Alarm.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/_subVI/tae_Next Alarm.vi"/>
				<Item Name="tae_Process_Events.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_Process_Events.vi"/>
				<Item Name="tae_Processing_State.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_Processing_State.ctl"/>
				<Item Name="tae_Tag Alarm State.ctl" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/TypeDefs/tae_Tag Alarm State.ctl"/>
				<Item Name="tae_To TPColor.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/_subVI/tae_To TPColor.vi"/>
				<Item Name="tae_WriteLog(string).vi" Type="VI" URL="/&lt;userlib&gt;/TAE/_SubVIs/tae_WriteLog(string).vi"/>
				<Item Name="Type Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Enumeration__ogtk.ctl"/>
				<Item Name="Type Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Header__ogtk.ctl"/>
				<Item Name="Type Descriptor__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor__ogtk.ctl"/>
				<Item Name="U8 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/U8 Changed__ogtk.vi"/>
				<Item Name="U16 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/U16 Changed__ogtk.vi"/>
				<Item Name="U32 Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/U32 Changed__ogtk.vi"/>
				<Item Name="Variant Changed__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/comparison/comparison.llb/Variant Changed__ogtk.vi"/>
				<Item Name="Variant to Header Info__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Variant to Header Info__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="AMC.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/AMC/AMC.lvlib"/>
				<Item Name="Assert Block Data Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Block Data Type.vim"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Current Value Table.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Current Value Table/Current Value Table.lvlib"/>
				<Item Name="CVT Bool Read.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/CVT Bool Read.vi"/>
				<Item Name="CVT Double Read.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/CVT Double Read.vi"/>
				<Item Name="CVT Enum GetLabel.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/CVT Enum GetLabel.vi"/>
				<Item Name="CVT Enum StaticRead.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/CVT Enum StaticRead.vi"/>
				<Item Name="CVT I32 Read.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/CVT I32 Read.vi"/>
				<Item Name="cvt_Data Types.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/TypeDefs/cvt_Data Types.ctl"/>
				<Item Name="cvt_Enum_MemBlock.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/cvt_Enum_MemBlock.vi"/>
				<Item Name="cvt_Enum_TagList.vi" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/cvt_Enum_TagList.vi"/>
				<Item Name="cvt_MemBlock Methods.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/TypeDefs/cvt_MemBlock Methods.ctl"/>
				<Item Name="cvt_Tag Configuration.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/TypeDefs/cvt_Tag Configuration.ctl"/>
				<Item Name="cvt_TagList Methods.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/Current Value Table/Compatibility/_SubVIs/TypeDefs/cvt_TagList Methods.ctl"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Error to Warning.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error to Warning.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_BuildTextVarProps.ctl" Type="VI" URL="/&lt;vilib&gt;/express/express output/BuildTextBlock.llb/ex_BuildTextVarProps.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="JKI JSON Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/JSON/JKI JSON Serialization.lvlib"/>
				<Item Name="JKI Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/Core/JKI Serialization.lvlib"/>
				<Item Name="JKI Unicode.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Unicode/JKI Unicode.lvlib"/>
				<Item Name="LabVIEWHTTPClient.lvlib" Type="Library" URL="/&lt;vilib&gt;/httpClient/LabVIEWHTTPClient.lvlib"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LV70TimeStampToDateRec.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70TimeStampToDateRec.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="NI STM.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/STM/NI STM.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="Read Delimited Spreadsheet (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (DBL).vi"/>
				<Item Name="Read Delimited Spreadsheet (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (I64).vi"/>
				<Item Name="Read Delimited Spreadsheet (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet (string).vi"/>
				<Item Name="Read Delimited Spreadsheet.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Delimited Spreadsheet.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="Read Lines From File (with error IO).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File (with error IO).vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Busy.vi"/>
				<Item Name="Set Cursor (Cursor ID).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Cursor ID).vi"/>
				<Item Name="Set Cursor (Icon Pict).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor (Icon Pict).vi"/>
				<Item Name="Set Cursor.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Set Cursor.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Sort 2D Array - Pop Stack.vi" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array - Pop Stack.vi"/>
				<Item Name="Sort 2D Array - Push Stack.vi" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array - Push Stack.vi"/>
				<Item Name="Sort 2D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 2D Array.vim"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/Keyed Array/Tools_KeyedArray.lvlib"/>
				<Item Name="Tools_String.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/String/Tools_String.lvlib"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
			</Item>
			<Item Name="CDL0100 Recipe Creator v1.1.vi" Type="VI" URL="../Support VIs/CDL0100 Recipe Creator v1.1.vi"/>
			<Item Name="TraceData.ctl" Type="VI" URL="../../TraceData.ctl"/>
			<Item Name="TraceData.ctl" Type="VI" URL="../../../../SCADA/Archive Viewer/TraceData.ctl"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="CLD0100 HMI" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{44659A5D-C0DF-4381-B0AA-E1EC18678A5F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{AD5ED8B3-0CD1-4648-B9C1-8754F5A94B88}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{36EF66CA-B3DA-43EB-BEAB-E81F53C20129}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CLD0100 HMI</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/CLD0100 HMI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{7EDFBBF9-2E01-43CA-9535-BF332A6597EE}</Property>
				<Property Name="Bld_version.build" Type="Int">150</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">CDL0100 HMI.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/CLD0100 HMI/CDL0100 HMI.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/CLD0100 HMI/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{A552AB11-380B-44F6-8909-FF502D957E80}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/HMI Startup.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Hutchinson Technology</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CLD0100 HMI</Property>
				<Property Name="TgtF_internalName" Type="Str">CLD0100 HMI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018 Hutchinson Technology</Property>
				<Property Name="TgtF_productName" Type="Str">CLD0100 HMI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A19240CD-7B07-420A-9496-06952D54488E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">CDL0100 HMI.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="CDL0100 HMI Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">HMI Main</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{017E7A7F-3C07-4262-896E-B8F5408E64AF}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">TDK</Property>
				<Property Name="Destination[1].parent" Type="Str">{115F5F59-DED6-42E2-8467-4CD042208C47}</Property>
				<Property Name="Destination[1].tag" Type="Str">{5BC5CCCB-B343-466D-A0A8-B403A71571AC}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">CDL0100</Property>
				<Property Name="Destination[2].parent" Type="Str">{5BC5CCCB-B343-466D-A0A8-B403A71571AC}</Property>
				<Property Name="Destination[2].tag" Type="Str">{6DF4B729-121D-4067-8FD2-1FC7AB9C9E0B}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">Hutchinson Technology</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/CDL0100 HMI Main/CDL0100 HMI Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">CDL0100 HMI Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{017E7A7F-3C07-4262-896E-B8F5408E64AF}</Property>
				<Property Name="INST_installerName" Type="Str">setup.exe</Property>
				<Property Name="INST_productName" Type="Str">CDL0100 HMI Main</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.148</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">19018002</Property>
				<Property Name="MSI_arpCompany" Type="Str">Hutchinson Technology</Property>
				<Property Name="MSI_distID" Type="Str">{A2CAED40-CE42-4AD5-B39D-AEC3B0D40547}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{18E33547-BD68-4F75-9C1C-10C826009918}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{017E7A7F-3C07-4262-896E-B8F5408E64AF}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{017E7A7F-3C07-4262-896E-B8F5408E64AF}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">CDL0100 HMI.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">CDL0100 HMI</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">HMI Main</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{A19240CD-7B07-420A-9496-06952D54488E}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">CLD0100 HMI</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/CLD0100 HMI</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].attributes" Type="Int">1</Property>
				<Property Name="Source[1].dest" Type="Str">{6DF4B729-121D-4067-8FD2-1FC7AB9C9E0B}</Property>
				<Property Name="Source[1].name" Type="Str">AlarmTags.csv</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Support/AlarmTags.csv</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
