;#define AppBeta

#ifdef AppBeta
  #define AppName "Windows Longhorn build 4074 Multilingual User Interface Pack Beta"
#else
  #define AppName "Windows Longhorn build 4074 Multilingual User Interface Pack"
#endif

#define AppId "LH4074MUI"
#define AppVersion "15.1.17.0"
#define AppPublisher "WinBetaMUI Team"
#define AppURL "https://winbetauser.github.io/winbetamui"
#define AppUninstallCheck \
  "IsComponentSelected('chs') or IsComponentSelected('cht') or IsComponentSelected('fr') \
  or IsComponentSelected('pl') or IsComponentSelected('ru')"

[Setup]
AppId={#AppId}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppComments=This package makes Windows Longhorn build 4074 available in multi-languages.
AppContact={#AppPublisher}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppURL}
AppReadmeFile={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AllowRootDirectory=yes
AlwaysRestart=yes
DefaultDirName={win}\mui\fallback
DisableReadyPage=yes
DisableWelcomePage=no
InfoBeforeFile=infobefore.rtf
OutputBaseFilename=Windows_Longhorn_build_4074_MUISetup_{#AppVersion}
OutputDir=compiled_installer\
SetupIconFile=setupicon.ico
SetupMutex={#AppId}
SignTool=winbetamui
SignedUninstaller=yes
SolidCompression=yes
; 如果所有组件都未选中，就直接进行卸载，不再创建“添加/删除程序”条目。
Uninstallable={#AppUninstallCheck}
VersionInfoVersion={#AppVersion}
WizardImageFile=wizardimage.bmp
WizardSmallImageFile=wizardsmallimage.bmp

[Files]
Source: "mui\0804\*"; DestDir: "{win}\mui\fallback\0804"; Components: chs; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "mui\0404\*"; DestDir: "{win}\mui\fallback\0404"; Components: cht; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "mui\040c\*"; DestDir: "{win}\mui\fallback\040c"; Components: fr; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "mui\0415\*"; DestDir: "{win}\mui\fallback\0415"; Components: pl; Flags: ignoreversion restartreplace uninsrestartdelete
Source: "mui\0419\*"; DestDir: "{win}\mui\fallback\0419"; Components: ru; Flags: ignoreversion restartreplace uninsrestartdelete
; 将不同语言的配置文件在必要时当成临时文件安装，并在卸载时删除。
Source: "config\0804.txt"; DestDir: "{app}"; Tasks: chs; Flags: deleteafterinstall ignoreversion
Source: "config\0404.txt"; DestDir: "{app}"; Tasks: cht; Flags: deleteafterinstall ignoreversion
Source: "config\0409.txt"; DestDir: "{app}"; Tasks: en; Flags: deleteafterinstall ignoreversion
Source: "config\040c.txt"; DestDir: "{app}"; Tasks: fr; Flags: deleteafterinstall ignoreversion
Source: "config\0415.txt"; DestDir: "{app}"; Tasks: pl; Flags: deleteafterinstall ignoreversion
Source: "config\0419.txt"; DestDir: "{app}"; Tasks: ru; Flags: deleteafterinstall ignoreversion
; 将东亚语言文件配置文件在必要时当成临时文件安装，并在卸载时删除。
Source: "config\languagegroup10.txt"; DestDir: "{app}"; Components: chs cht; Flags: deleteafterinstall ignoreversion

[Registry]
; 在“区域和语言”中显示切换到指定的语言的选项。
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "0804"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue; Components: chs          
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "0404"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue; Components: cht   
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "0409"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "040c"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue; Components: fr  
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "0415"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue; Components: pl  
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "0419"; ValueType: String; ValueData: "1"; Flags: uninsdeletevalue; Components: ru        
; 导入“将非 Unicode 程序的语言与默认用户语言匹配”和“将默认 shell UI 字体与默认用户语言匹配”的功能的注册表。
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "MatchSystemLocale"; ValueType: dword; ValueData: "1"; Flags: uninsdeletevalue; Tasks: matchsystemlocale
Root: HKLM; Subkey: "SYSTEM\ControlSet001\Control\Nls\MUILanguages"; ValueName: "UIFontSubstitute"; ValueType: dword; ValueData: "1"; Flags: uninsdeletevalue; Tasks: matchsystemlocale\uifontsubstitute

[Types]
Name: full; Description: "Full Installation"                                                                                              
Name: custom; Description: "Custom Installation"; Flags: iscustom

[Components]
Name: chs; Description: "Chinese (Simplified)"; Types: full; Flags: disablenouninstallwarning
Name: cht; Description: "Chinese (Traditional)"; Types: full; Flags: disablenouninstallwarning  
Name: fr; Description: "French"; Types: full; Flags: disablenouninstallwarning
Name: pl; Description: "Polish"; Types: full; Flags: disablenouninstallwarning
Name: ru; Description: "Russian"; Types: full; Flags: disablenouninstallwarning    

[Tasks]                                                                                                                                                                                   
Name: chs; Description: "Chinese (Simplified)"; GroupDescription: "Select a language for Windows."; Flags: exclusive; Components: chs
Name: cht; Description: "Chinese (Traditional)"; GroupDescription: "Select a language for Windows."; Flags: exclusive; Components: cht
Name: en; Description: "English"; GroupDescription: "Select a language for Windows."; Flags: exclusive
Name: fr; Description: "French"; GroupDescription: "Select a language for Windows."; Flags: exclusive; Components: fr
Name: pl; Description: "Polish"; GroupDescription: "Select a language for Windows."; Flags: exclusive; Components: pl
Name: ru; Description: "Russian"; GroupDescription: "Select a language for Windows."; Flags: exclusive; Components: ru
Name: matchsystemlocale; Description: "Match the language for non-Unicode programs with the default user language."; Check: "{#AppUninstallCheck}"
Name: matchsystemlocale\uifontsubstitute; Description: "Match the default shell UI font with the default user language."; Check: "{#AppUninstallCheck}"; Flags: dontinheritcheck

[Run]
; 在必要时安装东亚语言文件（不要调整此条目在此区段中出现的顺序，否则切换到简体中文或繁体中文语言的操作可能会失败）。
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\languagegroup10.txt"" /g"; WorkingDir: "{app}"; Components: chs cht
; 将 Windows 的默认语言设为用户在安装程序中指定的语言。
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\0804.txt"""; WorkingDir: "{app}"; Tasks: chs
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\0404.txt"""; WorkingDir: "{app}"; Tasks: cht
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\0409.txt"""; WorkingDir: "{app}"; Tasks: en
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\040c.txt"""; WorkingDir: "{app}"; Tasks: fr
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\0415.txt"""; WorkingDir: "{app}"; Tasks: pl
Filename: "{sys}\rundll32.exe"; Parameters: "shell32,Control_RunDLL intl.cpl,,/f:""{app}\0419.txt"""; WorkingDir: "{app}"; Tasks: ru

[UninstallDelete]
; 解决“在运行安装程序时卸载产品后仅会删除语言文件夹里面的 *.mui 文件，不删除语言文件夹”的问题。
; 位于安装文件夹的 setup.exe 不会删除，这个问题目前无法解决。
Type: dirifempty; Name: "{win}\mui\fallback\0804"
Type: dirifempty; Name: "{win}\mui\fallback\0404"
Type: dirifempty; Name: "{win}\mui\fallback\040c"
Type: dirifempty; Name: "{win}\mui\fallback\0415"
Type: dirifempty; Name: "{win}\mui\fallback\0419"

[UninstallRun]
; 删除 MUI 残留。
Filename: "{sys}\reg.exe"; Parameters: "delete ""HKCU\Control Panel\Desktop"" /v MUILanguagePending /f"; Flags: runhidden
Filename: "{sys}\reg.exe"; Parameters: "delete ""HKCU\Control Panel\Desktop"" /v MultiUILanguageId /f"; Flags: runhidden
Filename: "{sys}\reg.exe"; Parameters: "delete ""HKU\.DEFAULT\Control Panel\Desktop"" /v MUILanguagePending /f"; Flags: runhidden
Filename: "{sys}\reg.exe"; Parameters: "delete ""HKU\.DEFAULT\Control Panel\Desktop"" /v MultiUILanguageId /f"; Flags: runhidden

[Messages]                                                                                                                                                                                                                                                             
BeveledLabel={#SetupSetting("AppVerName")}

[Code]
var
  Installed: Boolean;
  ResultStr: String;
  ParamStr: String;
  ResultCode: Integer;                                                                                                                                                                

function InitializeSetup(): Boolean;
begin
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 'UninstallString', ResultStr) then begin               
    (* 判断产品是否已安装，并将判断结果赋值到 Installed 变量。*)
    Installed := True;
    ResultStr := RemoveQuotes(ResultStr);
    ParamStr := '/silent /log /norestart';
  end else
    Installed := False;
  Result := True;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
    (* 将“选择安装时要执行的任务”页面的 Next 按钮上的文本改为 Install，
    因为我去除了安装程序的“准备安装”页面。*)
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall);
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
begin                                                                                                                                                                                                                                                                                         
  if (Installed = False) and (not ({#AppUninstallCheck})) then
    (* 如果未安装产品且未选择任何组件（英语除外），就报错，
    用户可以点击 Back 按钮返回或点击 Cancel 按钮退出。*)
    Result := 'Setup has detected that {#AppName} is not installed and no components are selected.'
  else begin
    if Installed = True then begin
      if not Exec(ResultStr, ParamStr, '', SW_HIDE, ewWaitUntilTerminated, ResultCode) then
        (* 如果在初始化安装程序时检测到已经安装产品，并且当前处于准备安装阶段，就先卸载再安装。
        如果卸载程序无法正常启动，就报错并无法继续。*)
        Result := 'Execution of ''' + ResultStr + ParamStr + ''' failed. ' + SysErrorMessage(ResultCode) + '.';
    end else
      Result := '';
  end;
end;