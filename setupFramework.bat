cd /d "%~dp0"
mkdir -p logs
pip install -r setup_utils/requirements.txt
./setup_utils/allureInstaller.bat