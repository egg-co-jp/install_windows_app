@echo off
REM [ �� �Ǘ��҂Ƃ��Ď��s�ł͂Ȃ��A���ʂɋN�����Ă������� ]
REM [ �� CRLF�ł��邱�Ƃ��m�F LF���ƕs����N�����܂� ]

REM [ -i �̓C���X�g�[���E�B�U�[�h��ʂ�\������I�v�V�����B�Ȃ��ƃG���[�ɂȂ�P�[�X��ʂɐݒ肪�K�v�ȃP�[�X�Ŏg�p ]
REM [ -e --id �͑啶������������ʂ��ăA�v����ID���w�肷��Ƃ����I�v�V���� ]
REM [ Firefox�͉p��ł������Ă��܂����߂����ɋL�q���Ă��܂��� ]

echo;
echo;
echo Office�̃C���X�g�[���͐���������܂��B
echo �����L�[�������ƃC���X�g�[���J�n���܂��B���΂炭�ҋ@���Ă��������B
echo;
echo;

PAUSE

@echo on

REM [ ��� ]
winget install -e --id Microsoft.Office
winget install -e --id 7zip.7zip
winget install -e --id Google.Chrome

REM [ GIT�֘A ]
start https://github.com/egg-co-jp/install_windows_app/blob/main/doc/git_install_manual.md
winget install -i -e --id Git.Git
winget install -e --id GitHub.GitLFS
winget install -e --id Microsoft.GitCredentialManagerCore
winget install -i -e --id TortoiseGit.TortoiseGit
winget install -e --id WinMerge.WinMerge

REM [ ���z�}�V�� ]
winget install -i -e --id Oracle.VirtualBox
winget install -e --id Hashicorp.Vagrant

REM [ ���[�e�B���e�B ]
winget install -i -e --id TeraTermProject.teraterm
winget install -e --id WinSCP.WinSCP
winget install -e --id PuTTY.PuTTY

REM [ �J�� ]
winget install -e --id JetBrains.Toolbox

winget install -e --id PostgreSQL.pgAdmin
winget install -e --id Postman.Postman

REM [ ���̑� ]
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id Notepad++.Notepad++
winget install --accept-package-agreements DevToys

start https://github.com/egg-co-jp/install_windows_app/blob/main/doc/after_winget.md
