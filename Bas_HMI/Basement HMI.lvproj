<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
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
		<Item Name="Pages" Type="Folder">
			<Item Name="Dosing.vi" Type="VI" URL="../Dosing.vi"/>
			<Item Name="FacilitiesPage.vi" Type="VI" URL="../FacilitiesPage.vi"/>
			<Item Name="Home.vi" Type="VI" URL="../Home.vi"/>
			<Item Name="Process 1 Page.vi" Type="VI" URL="../Process 1 Page.vi"/>
			<Item Name="Process 2 Page.vi" Type="VI" URL="../Process 2 Page.vi"/>
			<Item Name="Process 3 Page.vi" Type="VI" URL="../Process 3 Page.vi"/>
			<Item Name="Process 4 Page.vi" Type="VI" URL="../Process 4 Page.vi"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="AlarmTags.csv" Type="Document" URL="../../TagEngine/XMLTagDefs/AlarmTags.csv"/>
			<Item Name="Find local ipv4Addr.vi" Type="VI" URL="../../TagEngine/Support/Find local ipv4Addr.vi"/>
			<Item Name="GrayOutButtonFromPSPVar.vi" Type="VI" URL="../../HMI/Support VIs/GrayOutButtonFromPSPVar.vi"/>
			<Item Name="Load Alarm Tags and Descriptions.vi" Type="VI" URL="../../HMI/Support VIs/Load Alarm Tags and Descriptions.vi"/>
			<Item Name="Load and Sort Alarm tags from PSP.vi" Type="VI" URL="../../HMI/Support VIs/Load and Sort Alarm tags from PSP.vi"/>
			<Item Name="Open PSP library.vi" Type="VI" URL="../../TagEngine/Support/Open PSP library.vi"/>
			<Item Name="Prep Alarm Tags.vi" Type="VI" URL="../../HMI/Support VIs/Prep Alarm Tags.vi"/>
		</Item>
		<Item Name="BasHMIStart.vi" Type="VI" URL="../BasHMIStart.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="Boolean Trigger__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/boolean/boolean.llb/Boolean Trigger__ogtk.vi"/>
				<Item Name="Driver Commands.ctl" Type="VI" URL="/&lt;userlib&gt;/HMI_PopUp_KB.llb/Driver Commands.ctl"/>
				<Item Name="HMI Pop Up Num KP.vi" Type="VI" URL="/&lt;userlib&gt;/HMI Pop Up Num KP.vi"/>
				<Item Name="HNE Page Manager (Init).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Init).vi"/>
				<Item Name="HNE Page Manager (Next).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Next).vi"/>
				<Item Name="HNE Page Manager (Set).vi" Type="VI" URL="/&lt;userlib&gt;/HNE/HNE Page Manager (Set).vi"/>
				<Item Name="hne_Page State.vi" Type="VI" URL="/&lt;userlib&gt;/HNE/_SubVIs/hne_Page State.vi"/>
				<Item Name="MGI Caller&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Caller&apos;s VI Reference.vi"/>
				<Item Name="MGI Current VI&apos;s Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Current VI&apos;s Reference.vi"/>
				<Item Name="MGI Exit if Runtime.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI Exit if Runtime.vi"/>
				<Item Name="MGI Level&apos;s VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Level&apos;s VI Reference.vi"/>
				<Item Name="MGI Top Level VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference/MGI Top Level VI Reference.vi"/>
				<Item Name="MGI VI Reference.vi" Type="VI" URL="/&lt;userlib&gt;/_MGI/Application Control/MGI VI Reference.vi"/>
				<Item Name="Number Check.vi" Type="VI" URL="/&lt;userlib&gt;/Number Check.vi"/>
				<Item Name="Page Operation.ctl" Type="VI" URL="/&lt;userlib&gt;/HNE/_SubVIs/TypeDefs/Page Operation.ctl"/>
				<Item Name="PopUpAlphaKBDriver.vi" Type="VI" URL="/&lt;userlib&gt;/PopUpAlphaKBDriver.vi"/>
				<Item Name="TAE Alarm Engine.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE Alarm Engine.vi"/>
				<Item Name="TAE AlarmStatusGV.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE AlarmStatusGV.vi"/>
				<Item Name="TAE Close.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/TAE Close.vi"/>
				<Item Name="TAE Format Active Alarm Display.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/TAE Format Active Alarm Display.vi"/>
				<Item Name="TAE Format Alarm Ticker.vi" Type="VI" URL="/&lt;userlib&gt;/TAE/Display/TAE Format Alarm Ticker.vi"/>
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
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="AMC.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/AMC/AMC.lvlib"/>
				<Item Name="Assert Block Data Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Block Data Type.vim"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
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
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI STM.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/STM/NI STM.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
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
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/Keyed Array/Tools_KeyedArray.lvlib"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unset Busy.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/cursorutil.llb/Unset Busy.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="CDL0100 HMI" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7A0194A9-F9DC-4BD1-8476-2C1C8D8968B7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{4DCA2443-2A78-463E-9C3F-E2D1B1830474}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{63AFBECF-81CB-4CDC-A635-895232496274}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CDL0100 HMI</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/CDL0100 HMI</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9B16EA9F-7648-4CD5-A376-C078B2FF4163}</Property>
				<Property Name="Bld_version.build" Type="Int">31</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">BasHMI.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/CDL0100 HMI/BasHMI.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/CDL0100 HMI/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{EEFF218A-D456-4D7C-A1D4-CFFFBE25B837}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/BasHMIStart.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Hutchinson Technology</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CDL0100 HMI</Property>
				<Property Name="TgtF_internalName" Type="Str">CDL0100 HMI</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2019 Hutchinson Technology</Property>
				<Property Name="TgtF_productName" Type="Str">CDL0100 HMI</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{6FD2A868-A2AD-4745-BF96-5B6071E71B77}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">BasHMI.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="CDL0100 Basement HMI Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Basement HMI</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{286D5B16-066C-471C-BA8F-B780583D08A2}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="Destination[1].name" Type="Str">TDK</Property>
				<Property Name="Destination[1].parent" Type="Str">{115F5F59-DED6-42E2-8467-4CD042208C47}</Property>
				<Property Name="Destination[1].tag" Type="Str">{95516F6C-A515-4869-9EA6-1197D7173FA3}</Property>
				<Property Name="Destination[1].type" Type="Str">userFolder</Property>
				<Property Name="Destination[2].name" Type="Str">CDL0100</Property>
				<Property Name="Destination[2].parent" Type="Str">{95516F6C-A515-4869-9EA6-1197D7173FA3}</Property>
				<Property Name="Destination[2].tag" Type="Str">{249DD42D-0A6F-4C32-B77F-8F92C1AD6495}</Property>
				<Property Name="Destination[2].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{E60B4861-89AB-4E60-96C2-93AB25CC9AE4}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI Distributed System Manager 2019</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{CEF5E531-69E2-461E-8628-0998E4DD0317}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[1].productID" Type="Str">{FA0DB08E-BC18-4194-9ADC-026B7C8D5CEA}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI Variable Engine 2019</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{EB7A3C81-1C0F-4495-8CE5-0A427E4E6285}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[2].productID" Type="Str">{3D09E3EA-7B63-464F-8031-885D37270E45}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI LabVIEW Runtime 2019 SP1</Property>
				<Property Name="DistPart[2].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[2].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[2].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[1].productName" Type="Str">NI Deployment Framework 2019</Property>
				<Property Name="DistPart[2].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[2].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[2].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[2].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[11].productName" Type="Str">NI TDM Streaming 19.0</Property>
				<Property Name="DistPart[2].SoftDep[11].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[2].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[2].productName" Type="Str">NI Error Reporting 2019</Property>
				<Property Name="DistPart[2].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[2].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2019</Property>
				<Property Name="DistPart[2].SoftDep[3].upgradeCode" Type="Str">{8386B074-C90C-43A8-99F2-203BAAB4111C}</Property>
				<Property Name="DistPart[2].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[4].productName" Type="Str">NI LabVIEW Runtime 2019 SP1 Non-English Support.</Property>
				<Property Name="DistPart[2].SoftDep[4].upgradeCode" Type="Str">{446D49A5-F830-4ADF-8C78-F03284D6882D}</Property>
				<Property Name="DistPart[2].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[5].productName" Type="Str">NI Logos 19.0</Property>
				<Property Name="DistPart[2].SoftDep[5].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[2].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2019</Property>
				<Property Name="DistPart[2].SoftDep[6].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[2].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[7].productName" Type="Str">NI mDNS Responder 19.0</Property>
				<Property Name="DistPart[2].SoftDep[7].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[2].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[2].SoftDep[8].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[2].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[2].SoftDep[9].productName" Type="Str">Math Kernel Libraries 2018</Property>
				<Property Name="DistPart[2].SoftDep[9].upgradeCode" Type="Str">{33A780B9-8BDE-4A3A-9672-24778EFBEFC4}</Property>
				<Property Name="DistPart[2].SoftDepCount" Type="Int">12</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{7D6295E5-8FB8-4BCE-B1CD-B5B396FA1D3F}</Property>
				<Property Name="DistPartCount" Type="Int">3</Property>
				<Property Name="INST_author" Type="Str">Hutchinson Technology</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../builds/Basement HMI/CDL0100 Basement HMI Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToCommon</Property>
				<Property Name="INST_buildSpecName" Type="Str">CDL0100 Basement HMI Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{286D5B16-066C-471C-BA8F-B780583D08A2}</Property>
				<Property Name="INST_installerName" Type="Str">setup.exe</Property>
				<Property Name="INST_productName" Type="Str">Basement HMI</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.29</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">19018000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Hutchinson Technology</Property>
				<Property Name="MSI_distID" Type="Str">{3E48A16A-FA49-4C5C-8A7B-A265521646E9}</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{B367AFBB-9E4E-4FF8-8EA6-1557AC20D703}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{286D5B16-066C-471C-BA8F-B780583D08A2}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{286D5B16-066C-471C-BA8F-B780583D08A2}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">BasHMI.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">BasHMI</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">Basement HMI</Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">1</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{6FD2A868-A2AD-4745-BF96-5B6071E71B77}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">CDL0100 HMI</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/CDL0100 HMI</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="Source[1].dest" Type="Str">{249DD42D-0A6F-4C32-B77F-8F92C1AD6495}</Property>
				<Property Name="Source[1].name" Type="Str">AlarmTags.csv</Property>
				<Property Name="Source[1].tag" Type="Ref">/My Computer/Support/AlarmTags.csv</Property>
				<Property Name="Source[1].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
			</Item>
		</Item>
	</Item>
</Project>
