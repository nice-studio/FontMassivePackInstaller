#define AppName "FontMassive Pack"
#define AppVersion "3.0.21"
#define GitReleace "https://github.com/nice-studio/FontMassivePackInstaller/releases"
#define AppCopyright "Copyright © 2014 Алексей Коноплев aka KLesha28"
#define AppPublisher "Алексей Коноплев (KLesha28)"
#define AppUrl "https://fontmassive.com/"
#define AppEmail "support@fontmassive.com"

[Setup]
AppId={{17215FF5-7CC0-4E50-8D24-FC5D6C1CFE67}
AppName={#AppName}
AppVersion={#AppVersion}
AppCopyright={#AppCopyright}
AppMutex=F{#AppName}
AppPublisher={#AppPublisher}
AppPublisherURL={#AppUrl}
AppSupportURL={#AppUrl}
AppContact={#AppEmail}
AppReadmeFile={app}\FM3_Data\Readme_ru.txt



VersionInfoVersion={#AppVersion}
VersionInfoCompany={#AppName}
VersionInfoDescription=Сборка инсталяции для программы {#AppName}
VersionInfoTextVersion={#AppVersion}
VersionInfoCopyright={#AppCopyright}

PrivilegesRequired=admin
DefaultDirName={pf}\FontMassive
UninstallDisplayIcon={app}\icon.ico

OutputDir=installer
OutputBaseFilename=FontMassivePack

WizardImageFile=embed/wizard.bmp
WizardSmallImageFile=embed/logo.bmp

SetupIconFile=embed/icon.ico
UninstallDisplayName=Удалить {#AppName}
WindowVisible=True
BackColor=clBlack
DisableWelcomePage=False
DisableReadyPage=True
DisableReadyMemo=True
DisableFinishedPage=False
FlatComponentsList=False
AlwaysShowComponentsList=False
ShowComponentSizes=False
WindowShowCaption=False
WindowResizable=False
UsePreviousAppDir=False
UsePreviousGroup=False
VersionInfoProductName={#AppName}
VersionInfoProductVersion={#AppVersion}
VersionInfoProductTextVersion={#AppName} v{#AppVersion}
BackSolid=True
WindowStartMaximized=False
InternalCompressLevel=max
DisableProgramGroupPage=yes
AppUpdatesURL={#GitReleace}
DisableDirPage=yes
ShowLanguageDialog=no
InfoBeforeFile=app.rtf

[Languages]
Name: rus; MessagesFile: lang\Russian.isl

[Dirs]
Name: {app}\FM3_Data
Name: {app}\FT_Data
Name: {app}\FD_Data

[Files] 
Source: embed/splash.bmp; DestDir: {tmp}; Flags: deleteafterinstall noencryption dontcopy;
Source: embed/icon.ico; DestDir: {app}; DestName: icon.ico
; Place all x64 files here
Source: source\FontMassive64.exe; DestDir: {app}; DestName: FontMassive.exe; Check: Is64BitInstallMode
Source: source\FonTemp64.exe; DestDir: {app}; DestName: FonTemp.exe; Check: Is64BitInstallMode
Source: source\FontDetect64.exe; DestDir: {app}; DestName: FontDetect.exe; Check: Is64BitInstallMode
Source: source\Circular64.exe; DestDir: {app}; DestName: Circular.exe; Check: Is64BitInstallMode
Source: source\LinearText64.exe; DestDir: {app}; DestName: LinearText.exe; Check: Is64BitInstallMode
; Place all x86 files here, first one should be marked 'solidbreak'
Source: source\FontMassive.exe; DestDir: {app}; Check: not Is64BitInstallMode; Flags: solidbreak
Source: source\FonTemp.exe; DestDir: {app}; Check: not Is64BitInstallMode; Flags: solidbreak
Source: source\FontDetect.exe; DestDir: {app}; Check: not Is64BitInstallMode; Flags: solidbreak
Source: source\Circular.exe; DestDir: {app}; Check: not Is64BitInstallMode; Flags: solidbreak
Source: source\LinearText.exe; DestDir: {app}; Check: not Is64BitInstallMode; Flags: solidbreak
; Place all common files here, first one should be marked 'solidbreak'
Source: source\FM3_Data\eng.lang; DestDir: {app}\FM3_Data
Source: source\FM3_Data\ukr.lang; DestDir: {app}\FM3_Data
Source: source\FM3_Data\zhs.lang; DestDir: {app}\FM3_Data
Source: source\FM3_Data\History_ru.txt; DestDir: {app}\FM3_Data
Source: source\FM3_Data\License_ru.txt; DestDir: {app}\FM3_Data
Source: source\FM3_Data\Readme_ru.txt; DestDir: {app}\FM3_Data
Source: source\FD_Data\License_ru.txt; DestDir: {app}\FD_Data
Source: source\FD_Data\Settings.ini; DestDir: {app}\FD_Data
Source: source\FT_Data\History_ru.txt; DestDir: {app}\FT_Data
Source: source\FT_Data\License_ru.txt; DestDir: {app}\FT_Data
Source: source\FT_Data\Readme_ru.txt; DestDir: {app}\FT_Data

[Icons]
; Name: "{group}\FontMassive Pack\Менеджер шрифтов"; Filename: "{app}\FontMassive.exe"; Tasks: startmenu
; Name: "{group}\FontMassive Pack\Временная установка шрифтов"; Filename: "{app}\FonTemp.exe"; Tasks: startmenu
; Name: "{group}\FontMassive Pack\Распознавание шрифтов на изображении"; Filename: "{app}\FontDetect.exe"; Tasks: startmenu
; Name: "{group}\FontMassive Pack\Выпрямление текста по окружности"; Filename: "{app}\Circular.exe"; Tasks: startmenu
; Name: "{group}\FontMassive Pack\Выпрямление текста по кривой"; Filename: "{app}\LinearText.exe"; Tasks: startmenu

Name: {userprograms}\FontMassive Pack\Менеджер шрифтов; Filename: {app}\FontMassive.exe; Tasks: startmenu
Name: {userprograms}\FontMassive Pack\Временная установка шрифтов; Filename: {app}\FonTemp.exe; Tasks: startmenu
Name: {userprograms}\FontMassive Pack\Распознавание шрифтов на изображении; Filename: {app}\FontDetect.exe; Tasks: startmenu
Name: {userprograms}\FontMassive Pack\Выпрямление текста по окружности; Filename: {app}\Circular.exe; Tasks: startmenu
Name: {userprograms}\FontMassive Pack\Выпрямление текста по кривой; Filename: {app}\LinearText.exe; Tasks: startmenu

; Name: "{userstartmenu}\Менеджер шрифтов"; Filename: "{app}\FontMassive.exe"; Tasks: startmenu
; Name: "{userstartmenu}\Временная установка шрифтов"; Filename: "{app}\FonTemp.exe"; Tasks: startmenu
; Name: "{userstartmenu}\Распознавание шрифтов на изображении"; Filename: "{app}\FontDetect.exe"; Tasks: startmenu
; Name: "{userstartmenu}\Выпрямление текста по окружности"; Filename: "{app}\Circular.exe"; Tasks: startmenu
; Name: "{userstartmenu}\Выпрямление текста по кривой"; Filename: "{app}\LinearText.exe"; Tasks: startmenu

; Name: "{commondesktop}\Менеджер шрифтов"; Filename: "{app}\FontMassive.exe"; Tasks: desktopicon
; Name: "{commondesktop}\Временная установка шрифтов"; Filename: "{app}\FonTemp.exe"; Tasks: desktopicon
; Name: "{commondesktop}\Распознавание шрифтов на изображении"; Filename: "{app}\FontDetect.exe"; Tasks: desktopicon
; Name: "{commondesktop}\Выпрямление текста по окружности"; Filename: "{app}\Circular.exe"; Tasks: desktopicon
; Name: "{commondesktop}\Выпрямление текста по кривой"; Filename: "{app}\LinearText.exe"; Tasks: desktopicon

Name: {group}\Удалить FontMassive Pack; Filename: {uninstallexe}; Tasks: startmenu
Name: "{group}\{cm:UninstallProgram, FontMassive Pack}"; Filename: "{uninstallexe}"

[Tasks]
; Name: desktopicon; Description: "Создать ярлыки на рабочем столе"; GroupDescription: "Создать ярлыки:";
Name: startmenu; Description: Создать ярлыки в меню Программы; GroupDescription: Создать ярлыки:

[UninstallDelete]
Type: files; Name: {app}\FM3_Data\settings.ini
Type: files; Name: {app}\FT_Data\settings.ini
Type: filesandordirs; Name: {app}\FM3_Data
Type: filesandordirs; Name: {app}\FT_Data
Type: filesandordirs; Name: {app}\FD_Data
Type: filesandordirs; Name: {app}

[Run]
Filename: {app}\FM3_Data\Readme_ru.txt; Description: Просмотреть файл README; Flags: postinstall shellexec skipifsilent unchecked
Filename: {app}\FM3_Data\History_ru.txt; Description: Просмотреть Историю изменений; Flags: postinstall shellexec skipifsilent unchecked
Filename: {app}\FontMassive.EXE; Description: Запустить FontMassive; Flags: postinstall nowait skipifsilent runminimized runascurrentuser
Filename: {app}\FonTemp.EXE; Description: Запустить Менеджер коллекций шрифтов; Flags: postinstall nowait skipifsilent runascurrentuser

[Registry]
Root: HKCU; SubKey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\FontMassive.exe; ValueData: RUNASADMIN; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0,5.01; OnlyBelowVersion: 0,6.0
Root: HKCU; SubKey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\FonTemp.exe; ValueData: RUNASADMIN; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0,5.01; OnlyBelowVersion: 0,6.0
Root: HKCU; SubKey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\FontMassive.exe; ValueData: WINXPSP3 RUNASADMIN; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0,6.0
Root: HKCU; SubKey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\FonTemp.exe; ValueData: WINXPSP3 RUNASADMIN; Flags: uninsdeletevalue uninsdeletekeyifempty; MinVersion: 0,6.0


[Code]


procedure labelHandle(Sender: TObject);
var
	ErrorCode: Integer;
begin
	ShellExec('open', ExpandConstant('{#GitReleace}'),'', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
end;


procedure InitializeWizard();
var
  BackgroundImage: TBitmapImage;
begin
	ExtractTemporaryFile('splash.bmp');
	with TBitmapImage.Create(MainForm) do
	begin
		//Stretch  := True;
		Bitmap.LoadFromFile(ExpandConstant('{tmp}')+'\splash.bmp');
		Center  := True;
		Align  := alClient;
		Parent := MainForm;
	end;
	with TLabel.Create(MainForm) do
	begin
		AutoSize := True;
		Caption := 'Repository Installator: ' + ExpandConstant('{#AppName}') + ' ' + 'v'+ExpandConstant('{#AppVersion}');
		Font.Style := [fsUnderline, fsBold];
		Font.Color := clWhite;
		TransParent := True;
		Parent := MainForm;
		Cursor := crHandPoint;
		Alignment := taRightJustify;
		Top := MainForm.Height - Height - 10;
		Left := MainForm.Width - Width - 20;
	end;
	with TLabel.Create(MainForm) do
	begin
		AutoSize := True;
		Caption := 'Repository Installator: ' + ExpandConstant('{#AppName}') + ' ' + 'v'+ExpandConstant('{#AppVersion}'); 
		Font.Style := [fsUnderline, fsBold];
		Font.Color := clBlue;
		TransParent := True;
		Parent := MainForm;
		Cursor := crHandPoint;
		Alignment := taRightJustify;
		Top := MainForm.Height - Height - 9;
		Left := MainForm.Width - Width - 19;
		OnClick := @labelHandle;
	end;
end;