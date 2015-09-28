[Setup]
AppName=Latvian Universal Keyboard Layout
AppVersion=0.2
DisableDirPage=yes
DisableProgramGroupPage=yes
DefaultDirName={tmp}\lvuni
;DefaultGroupName=Latvian Universal Keyboard Layout
Uninstallable=no
CreateAppDir=no
OutputDir=lvuni-setup
OutputBaseFilename=lvuni-0.2-setup

[Types]
Name: "full"; Description: "Full installation";
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "dot"; Description: "Latvian universal (dot)"; Types: custom full;
Name: "comma"; Description: "Latvian universal (comma)"; Types: full;

[Files]
Source: "lvuni02d\i386\lvuni02d.dll"; DestDir: "{tmp}\lvuni02d\i386\"; Components: dot;
Source: "lvuni02d\amd64\lvuni02d.dll"; DestDir: "{tmp}\lvuni02d\amd64\"; Components: dot;
Source: "lvuni02d\ia64\lvuni02d.dll"; DestDir: "{tmp}\lvuni02d\ia64\"; Components: dot;
Source: "lvuni02d\wow64\lvuni02d.dll"; DestDir: "{tmp}\lvuni02d\wow64\"; Components: dot;
Source: "lvuni02d\lvuni02d_amd64.msi"; DestDir: "{tmp}\lvuni02d\"; Components: dot;
Source: "lvuni02d\lvuni02d_i386.msi"; DestDir: "{tmp}\lvuni02d\"; Components: dot;
Source: "lvuni02d\lvuni02d_ia64.msi"; DestDir: "{tmp}\lvuni02d\"; Components: dot;
Source: "lvuni02d\setup.exe"; DestDir: "{tmp}\lvuni02d\"; Components: dot; AfterInstall:

Source: "lvuni02c\i386\lvuni02c.dll"; DestDir: "{tmp}\lvuni02c\ia386\"; Components: comma;
Source: "lvuni02c\amd64\lvuni02c.dll"; DestDir: "{tmp}\lvuni02c\amd64\"; Components: comma;
Source: "lvuni02c\ia64\lvuni02c.dll"; DestDir: "{tmp}\lvuni02c\ia64\"; Components: comma;
Source: "lvuni02c\wow64\lvuni02c.dll"; DestDir: "{tmp}\lvuni02c\wow64\"; Components: comma;
Source: "lvuni02c\lvuni02c_amd64.msi"; DestDir: "{tmp}\lvuni02c\"; Components: comma;
Source: "lvuni02c\lvuni02c_i386.msi"; DestDir: "{tmp}\lvuni02c\"; Components: comma;
Source: "lvuni02c\lvuni02c_ia64.msi"; DestDir: "{tmp}\lvuni02c\"; Components: comma;
Source: "lvuni02c\setup.exe"; DestDir: "{tmp}\lvuni02c\"; Components: comma; 

[Run]
Filename: "{tmp}\lvuni02d\setup.exe"; StatusMsg: "Running Latvian universal (dot) setup"; Components: "dot";
Filename: "{tmp}\lvuni02c\setup.exe"; StatusMsg: "Running Latvian universal (comma) setup"; Components: "comma";

