REM [ �I�I CRLF�ł��邱�Ƃ��m�F LF���ƕs����N�����܂� �I�I ]

REM [ -i �̓C���X�g�[���E�B�U�[�h��ʂ�\������I�v�V�����B�Ȃ��ƃG���[�ɂȂ�P�[�X��ʂɐݒ肪�K�v�ȃP�[�X�Ŏg�p ]
REM [ -e --id �͑啶������������ʂ��ăA�v����ID���w�肷��Ƃ����I�v�V���� ]
REM [ Firefox�͉p��ł������Ă��܂����߂����ɋL�q���Ă��܂��� ]

if not "%~1" == "ADMINMODE" (
  powershell "start-process -FilePath '%~dpnx0' -ArgumentList 'ADMINMODE %USERPROFILE%' -verb runas"
  exit /b
)

if "%~1" == "ADMINMODE" if "%~2" == "" (
	echo "�Ǘ��Ҍ����Ŏ��s�����A�܂��͕��ʂ̃��[�U�Ƃ��Ď��s���Ă�������"
	pause
	exit
)

REM [ �Ǘ��Ҍ����ŋN�������winget��PATH���ʂ��ĂȂ��̂ŁA�ꎞ�I��PATH��ʂ��܂� ]
REM [ ��̊Ǘ��Ҍ����ŋN��������X�N���v�g�ő�2������PC���[�U�̃z�[���f�B���N�g���p�X��n���Ă���̂ŁA��2�������g�� ]
SET PATH=%PATH%;%~2\AppData\Local\Microsoft\WindowsApps

REM [ GIT�֘A ]
start https://github.com/egg-co-jp/install_windows_app/blob/main/doc/git_install_manual.md
winget install -i -e --id Git.Git
winget install -e --id GitHub.GitLFS
winget install -e --id Microsoft.GitCredentialManagerCore
winget install -e --id TortoiseGit.TortoiseGit
winget install -e --id WinMerge.WinMerge

REM [ ���z�}�V�� ]
winget install -i -e --id Oracle.VirtualBox
winget install -e --id Hashicorp.Vagrant

REM [ ���[�e�B���e�B ]
winget install -e --id TeraTermProject.teraterm
winget install -e --id WinSCP.WinSCP
winget install -e --id PuTTY.PuTTY

REM [ �J�� ]
winget install -e --id JetBrains.Toolbox

winget install -e --id PostgreSQL.pgAdmin
winget install -e --id Postman.Postman

REM [ ��� ]
winget install -e --id 7zip.7zip
winget install -e --id Google.Chrome
winget install -i -e --id Microsoft.Office

REM [ ���̑� ]
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id Notepad++.Notepad++

start https://github.com/egg-co-jp/install_windows_app/blob/main/doc/after_winget.md
