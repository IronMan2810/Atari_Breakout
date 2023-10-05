if ! test -f ./Roms.rar; then
  wget http://www.atarimania.com/roms/Roms.rar
fi
mkdir ./ROM/
unrar x ./Roms.rar ./ROM/
ale-import-roms ./ROM/
rm -rf ./ROM
rm -rf ./Roms.rar
cp ./replace_files/atari_wrappers.py ./.venv/lib/python3.10/site-packages/baselines/common/atari_wrappers.py
cp ./replace_files/core.py ./.venv/lib/python3.10/site-packages/gym/core.py