@ECHO OFF
candle.exe -dVersion1.0 WixInstaller/Product.wxs -out Patching/1.0.0/product.wixobj
PAUSE
light.exe Patching/1.0.0/product.wixobj -out Patching/1.0.0/WixInstaller.msi
PAUSE
