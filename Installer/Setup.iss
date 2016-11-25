; WinA1314 Apple Wireless Keyboard driver for Windows.
;
; Copyright (c) George Samartzidis <samartzidis@gmail.com>.
; 
; Permission is hereby granted, free of charge, to any person obtaining a copy of
; this software and associated documentation files (the "Software"), to deal in
; the Software without restriction, including without limitation the rights to
; use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
; the Software, and to permit persons to whom the Software is furnished to do so,
; subject to the following conditions:
; 
; The above copyright notice and this permission notice shall be included in all
; copies or substantial portions of the Software.
;
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
; FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
; COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
; IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[Setup]
AppName={#AppName}
AppVersion={#AppVer}
VersionInfoVersion={#AppVer}
AppVerName="{#AppName} (v.{#AppVer})"
DefaultDirName={pf}\{#AppName}
DefaultGroupName={#AppName}
UninstallDisplayIcon={app}\logo.ico
Compression=lzma2
SolidCompression=yes
OutputDir=..\Binaries
PrivilegesRequired=admin
LicenseFile=License.rtf
AppPublisher=(c)2014 George Samartzidis
AllowNetworkDrive=no
SetupIconFile=logo.ico

[Files]
Source: "logo.ico"; DestDir: "{app}"
Source: "License.rtf"; DestDir: "{app}"
Source: "findkbd.js"; Flags: dontcopy

[Icons]
Name: "{group}\Uninstall {#AppName}"; Filename: "{uninstallexe}"

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\keyboard"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\keyboard"; ValueType: string; ValueName: "DisplayName"; ValueData: "WinA1314 Interception Keyboard Upper Filter Driver"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\keyboard"; ValueType: dword; ValueName: "Type"; ValueData: "1"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\keyboard"; ValueType: dword; ValueName: "ErrorControl"; ValueData: "1"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\keyboard"; ValueType: dword; ValueName: "Start"; ValueData: "3"

;Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\WinA1314"; ValueType: dword; ValueName: "DelayedAutostart"; ValueData: "1"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Services\WinA1314"; ValueType: binary; ValueName: "FailureActions"; ValueData: "00 00 00 00 00 00 00 00 00 00 00 00 03 00 00 00 14 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00"

Root: HKLM; Subkey: "SOFTWARE\WinA1314"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F1"; ValueData:         "0x3b,0,0,0,0,0,0,0,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F2"; ValueData:         "0x3c,0,0,0,0,0,0,0,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F3"; ValueData:         "0x3d,0,0,0,0,0,0x6b,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F4"; ValueData:         "0x3e,0,0,0,0,0,0x21,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F5"; ValueData:         "0x3f,0,0,0,0,0,0x45,0x4,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F6"; ValueData:         "0x40,0,0,0,0,0,0x37,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F7"; ValueData:         "0x41,0,0,0,0,0,0x10,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F8"; ValueData:         "0x42,0,0,0,0,0,0x22,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F9"; ValueData:         "0x43,0,0,0,0,0,0x19,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F10"; ValueData:        "0x44,0,0,0,0,0,0x20,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F11"; ValueData:        "0x57,0,0,0,0,0,0x2e,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "F12"; ValueData:        "0x58,0,0,0,0,0,0x30,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Up"; ValueData:         "0x48,0x2,0,0,0,0,0x49,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Down"; ValueData:       "0x50,0x2,0,0,0,0,0x51,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Left"; ValueData:       "0x4b,0x2,0,0,0,0,0x47,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Right"; ValueData:      "0x4d,0x2,0,0,0,0,0x4f,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Enter"; ValueData:      "0x1c,0,0,0,0,0,0x52,0x2,0"
Root: HKLM; Subkey: "SOFTWARE\WinA1314\Map"; ValueType: string; ValueName: "Backspace"; ValueData:  "0x0e,0,0,0,0,0,0x53,0x2,0"

;[Run]
;Filename: "{uninstallexe}"

[Code]
#include "Services.iss"

///////////////////////////////////////////
// Inno Setup functions and procedures //
///////////////////////////////////////////

const
  ServiceName = 'WinA1314';
  InstallationMutex = '{1771DC12-0772-45E8-B4BE-E44A5F645AC5}';
	
var
  rebootRequired : boolean;
  SwapCtrlFnCb : TNewCheckBox; 
  SwapAltCmd : TNewCheckBox;
  SwapTildeSection : TNewCheckBox;
  StandardDescLabel: TLabel;
	MainPage : TWizardPage;
 
procedure InitializeWizard;
var  
  LabelFolder: TLabel;  	 
begin
  MainPage := CreateCustomPage(wpSelectProgramGroup, 'Mapping Options', 'Please select');

  SwapCtrlFnCb := TNewCheckBox.Create(MainPage);
  SwapCtrlFnCb.Parent := MainPage.Surface;
	SwapCtrlFnCb.Width := MainPage.Surface.Width - SwapCtrlFnCb.Left;
  SwapCtrlFnCb.Caption := 'Swap Ctrl-Fn';
	SwapCtrlFnCb.Checked := true;
	
	SwapAltCmd := TNewCheckBox.Create(MainPage);
	SwapAltCmd.Top := SwapCtrlFnCb.Top + SwapCtrlFnCb.Height + 8;
	SwapAltCmd.Width := MainPage.Surface.Width - SwapAltCmd.Left;
  SwapAltCmd.Parent := MainPage.Surface;
  SwapAltCmd.Caption := 'Swap Alt-Cmd (Cmd is mapped to the Windows key)';
	
  SwapTildeSection := TNewCheckBox.Create(MainPage);
	SwapTildeSection.Top := SwapAltCmd.Top + SwapAltCmd.Height + 8;
	SwapTildeSection.Width := MainPage.Surface.Width - SwapTildeSection.Left;
  SwapTildeSection.Parent := MainPage.Surface;
  SwapTildeSection.Caption := 'Fix key on the right hand side of the Left-Shift.';

  StandardDescLabel := TLabel.Create(WizardForm);
  StandardDescLabel.Parent := MainPage.Surface;
  StandardDescLabel.Left := 16;
  StandardDescLabel.Top := SwapTildeSection.Top + SwapTildeSection.Height + 8;
  StandardDescLabel.Width := MainPage.SurfaceWidth; 
  StandardDescLabel.Height := 50;
  StandardDescLabel.AutoSize := False;
  StandardDescLabel.Wordwrap := True;
  StandardDescLabel.Caption := 'Check this if you have the English International, German, Greek, French, Hungarian, English UK, ' + 
    'or possibly other localized versions of the A1314 keyboard and this key does not type correctly.'

end;

function RemoveMultiSzItem(multiString : string; toRemove : string) : string;
var 
	token : string;	
	k, startPos :integer;
begin
    Result := '';
		startPos := 1;
		for k := 1 to Length(multiString) do
		begin
			if multiString[k] = #0 then
			begin
				token := Copy(multiString, startPos, k - startPos);
				if(lowercase(token) <> lowercase(toRemove)) then
        begin
					Result := Result + token + #0;
        end;
				startPos := k + 1;
			end;
		end;
end;

function ContainsMultiSzItem(multiString : string; toFind : string) : boolean;
var 
	token : string;
	k, startPos :Integer;
begin
		startPos := 1;
		for k := 1 to Length(multiString) do
		begin
			if multiString[k] = #0 then
			begin
				token := Copy(multiString, startPos, k - startPos);
				if(lowercase(token) = lowercase(toFind)) then
					Result := True;
        startPos := k + 1;
			end;
		end;
end;

function HexToStr(str_hex: string): string; 
var 
  i: Integer; 
begin 
  StringChange(str_hex, ',', ''); 
  for i:= 1 to Length(str_hex) div 2 do 
    Result:= Result +  Chr(StrToInt('$' + Copy(str_hex, (i-1)*2+1, 2))); 
end; 

function InitializeSetup(): Boolean;
var
	uninstallString : string;
	resultCode, response : integer;
	Version: TWindowsVersion;
begin
	GetWindowsVersionEx(Version);
	Result := True;
	
	// Create a mutex for the installer.
	// If it's already running display a message and stop installation
	if CheckForMutexes(InstallationMutex) then 
	begin
		if not WizardSilent() then
			MsgBox('Installer already running.', mbError, MB_OK);
			Result := False;
	end else 
	begin
		CreateMutex(InstallationMutex);
	end;
	
	//Require Windows Vista or higher
  if Version.NTPlatform and
     (Version.Major < 6) then
  begin
    SuppressibleMsgBox('Windows Vista or higher is required.', mbCriticalError, MB_OK, MB_OK);
    Result := False;
    Exit;
  end;
	
  //Uninstall previous version first
	if RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + ExpandConstant('{#AppName}') + '_is1', 
	'UninstallString', uninstallString) then 
	begin
		response := MsgBox('You need to uninstall the existing version first. Do you want to proceed with uninstall?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2);    
		if response = IDYES then
		begin
			Exec(RemoveQuotes(uninstallString), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, resultCode);
		end
		else 
		begin
			Result := False;
      Exit;
		end;
	end;

  //If the service has not been removed (may happen in case it is marked for deletion)
  if IsServiceInstalled(ServiceName) then
  begin
    StopService(ServiceName);
    RemoveService(ServiceName);

    MsgBox('Please restart your system.', mbInformation, MB_OK);
    Result := False;
    Exit;
  end;

  //Check A1314 hardware ID
  ExtractTemporaryFile('findkbd.js');
  resultCode := 0;
  if(Exec(ExpandConstant('{sys}\cscript.exe'), ExpandConstant('{tmp}\findkbd.js'), '', SW_HIDE, ewWaitUntilTerminated, resultCode)) then
  begin
    //MsgBox(IntToStr(resultCode), mbInformation, MB_OK);
    if(resultCode <> 255) then
    begin
      response := MsgBox('Apple A1314 keyboard not currently found on this system. It must be connected via bluetooth first. Do you wish to proceed anyway?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2);
      if response = IDNO then
      begin
        Result := False;
      end;
    end;
  end
  else
  begin
    MsgBox('Internal error. Apple A1314 keyboard search failed.', mbError, MB_OK);
    Result := False;
  end;

end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  resultCode, response : integer;
begin	
  
  (*
  if IsServiceRunning(ServiceName) then 
  begin
		if(not StopService(ServiceName)) then
    begin
			Result := 'Failed to stop the ' + ServiceName + ' service.'
		end;
	end;
	
	if IsServiceInstalled(ServiceName) then
	begin
		if(not RemoveService(ServiceName)) then
		begin
			Result := 'Failed to remove the ' + ServiceName + ' service. You may need to restart your system and try again.'
		end; 
	end;	
  *)

end;


procedure CurStepChanged(CurStep: TSetupStep);
var 
	upperFilters : string;
  resultCode : integer;
begin
			
  //ssInstall, ssPostInstall, ssDone
  if CurStep = ssInstall then 
  begin		
    //*** INSTALL ***

    //Add 'keyboard' to the UpperFilters if it does not already exist
		if(RegQueryMultiStringValue(HKLM, 'SYSTEM\CurrentControlSet\Control\Class\{4D36E96B-E325-11CE-BFC1-08002BE10318}', 'UpperFilters', upperFilters) = true) then
		begin
			if(ContainsMultiSzItem(upperFilters, 'keyboard') = false) then
			begin
				RegWriteMultiStringValue(HKLM, 'SYSTEM\CurrentControlSet\Control\Class\{4D36E96B-E325-11CE-BFC1-08002BE10318}', 'UpperFilters', 'keyboard' + #0 + upperFilters);        
			end;
		end;
		
		//Install the WinA1314 service
		if(InstallService(ExpandConstant('"{app}\WinA1314.exe"'), ServiceName, ServiceName, ServiceName + ' Service', SERVICE_WIN32_OWN_PROCESS, SERVICE_AUTO_START) = False) then
		begin
				MsgBox('Failed to install the ' + ServiceName + ' service.', mbError, MB_OK)
		end;

  end
  else if CurStep = ssPostInstall then
  begin
		//*** POST INSTALL ***
		
    if(SwapAltCmd.Checked) then
    begin
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'RAlt', '0x38,0x2,0,0x5c,0x2,0,0,0,0');
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'RWin', '0x5c,0x2,0,0x38,0x2,0,0,0,0');
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'LAlt', '0x38,0,0,0x5b,0x2,0,0,0,0');
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'LWin', '0x5b,0x2,0,0x38,0,0,0,0,0');
		end;
          
    if(SwapCtrlFnCb.Checked) then
    begin
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'Ctrl', '0x1d,0,0,0xff,0,0,0,0,0');
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'Fn', '0xff,0,0,0x1d,0,0,0,0,0');
    end;

    if(SwapTildeSection.Checked) then
    begin
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'Tilde', '0x29,0,0,0x56,0,0,0,0,0');
      RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\WinA1314\Map', 'Section', '0x56,0,0,0x29,0,0,0,0,0');
    end;
     
    //Add additional service options
    //RegWriteDWordValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Services\WinA1314', 'DelayedAutostart', 1);
		//RegWriteBinaryValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Services\WinA1314', 'FailureActions', HexToStr('00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,00,01,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00'));

  end
  else if CurStep = ssDone then
  begin
		//*** DONE INSTALL ***
		
    if(StartService(ServiceName) = False) then
        MsgBox('Failed to start the ' + ServiceName + ' service.', mbError, MB_OK)
    
    MsgBox('You may need to restart your system.', mbInformation, MB_OK);

    (*
		//Check if a reboot is required
		if(rebootRequired) then
    begin
			MsgBox('Please restart your system.', mbInformation, MB_OK)
    end
    else
    begin
      //Start the WinA1314 service
      if(StartService(ServiceName) = False) then
        MsgBox('Failed to start the ' + ServiceName + ' service.', mbError, MB_OK)
		end;
    *)

  end;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var 
	upperFilters : string;
begin
  //usAppMutexCheck, usUninstall, usPostUninstall, usDone
  if CurUninstallStep = usUninstall then 
  begin
	

		//Stop and uninstall the WinA1314 service
		if IsServiceRunning(ServiceName) then 
			if(StopService(ServiceName) = False) then
					MsgBox('Failed to stop the ' + ServiceName + ' service.', mbError, MB_OK);

		if IsServiceInstalled(ServiceName) then 		
			if(RemoveService(ServiceName) = False) then
					MsgBox('Failed to stop the ' + ServiceName + ' service.', mbError, MB_OK);
		
    //If 'keyboard' to the UpperFilters exists
		if(RegQueryMultiStringValue(HKLM, 'SYSTEM\CurrentControlSet\Control\Class\{4D36E96B-E325-11CE-BFC1-08002BE10318}', 'UpperFilters', upperFilters) = True) then
		begin
			if(ContainsMultiSzItem(upperFilters, 'keyboard') = true) then
			begin
        //Remove the 'keyboard' UpperFilter from the registry		
			  upperFilters := RemoveMultiSzItem(upperFilters, 'keyboard');
			
        //and delete the driver file
			  if(RegWriteMultiStringValue(HKLM, 'SYSTEM\CurrentControlSet\Control\Class\{4D36E96B-E325-11CE-BFC1-08002BE10318}', 'UpperFilters', upperFilters) = True) then 
			  begin
				  DeleteFile('{sys}\drivers\keyboard.sys');
        end;
			end;
		end;		
		
  end;
end;


