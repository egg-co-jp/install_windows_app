@echo off
REM [ �� �Ǘ��҂Ƃ��Ď��s�ł͂Ȃ��A���ʂɋN�����Ă������� ]
REM [ �� CRLF�ł��邱�Ƃ��m�F LF���ƕs����N�����܂� ]

REM [ -i �̓C���X�g�[���E�B�U�[�h��ʂ�\������I�v�V�����B�Ȃ��ƃG���[�ɂȂ�P�[�X��ʂɐݒ肪�K�v�ȃP�[�X�Ŏg�p ]
REM [ -e --id �͑啶������������ʂ��ăA�v����ID���w�肷��Ƃ����I�v�V���� ]

@echo on

REM [ ��� ]
winget install -e --id 7zip.7zip
winget install -e --id Google.Chrome
winget install -e --id Mozilla.Firefox

REM [ GIT�֘A ]
start https://github.com/egg-co-jp/public--egg-co-jp/blob/main/install_windows_app/doc/git_install_manual.md
winget install -i -e --id Git.Git
winget install -e --id GitHub.GitLFS
winget install -i -e --id TortoiseGit.TortoiseGit
winget install -e --id WinMerge.WinMerge

REM [ ���z�}�V�� ]
winget install -i -e --id Oracle.VirtualBox
winget install -e --id Hashicorp.Vagrant
winget install -e --id VMware.WorkstationPlayer

REM [ ���[�e�B���e�B ]
winget install -i -e --id TeraTermProject.teraterm
winget install -e --id WinSCP.WinSCP
winget install -e --id PuTTY.PuTTY

REM [ �J�� ]
winget install -e --id JetBrains.Toolbox
winget install -e --id Microsoft.VisualStudioCode

winget install -e --id PostgreSQL.pgAdmin
winget install -e --id Postman.Postman

REM [ ���̑� ]
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id Notepad++.Notepad++
winget install -e --id NickeManarin.ScreenToGif

start https://github.com/egg-co-jp/public--egg-co-jp/blob/main/install_windows_app/doc/after_winget.md
@echo on
echo;
echo;
echo �uwinget�C���X�g�[�����I�������v�y�[�W(https://github.com/egg-co-jp/install_windows_app/blob/main/doc/after_winget.md)���u���E�U�ŊJ���܂����B
echo �m�F���č�Ƃ𑱂��Ă��������B�܂��A��ɃX�N���[�����Ď��s�����C���X�g�[�����Ȃ������m�F���Ă��������B
echo ���̉�ʂ͉����L�[�������ƏI�����܂��B
echo;
echo;
pause