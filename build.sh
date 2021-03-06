#!/usr/bin/env bash
electron-packager . --platform=darwin --arch=x64  --overwrite --icon=icon256.icns

cd NDEx-Valet-darwin-x64
tar -zcvf NDEx-Valet.app.tar.gz ./NDEx-Valet.app
rm -f ../../ndex-valet/src/main/resources/ndex/NDEx-Valet.app.tar.gz
cp NDEx-Valet.app.tar.gz ../../ndex-valet/src/main/resources/ndex/
cd ..
rm -rf NDEx-Valet-darwin-x64

echo "Win 32"
electron-packager . --platform=win32 --arch=x64  --overwrite --icon=icon256.png
mv NDEx-Valet-win32-x64 NDEx-Valet
tar -zcvf NDEx-Valet.zip ./NDEx-Valet
rm -f ../ndex-valet/src/main/resources/ndex/NDEx-Valet.zip
cp NDEx-Valet.zip ../ndex-valet/src/main/resources/ndex/
rm NDEx-Valet.zip
