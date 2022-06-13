@ECHO OFF
torch.exe -p -xi Patching\1.0.0\WixInstaller.wixpdb Patching\1.1.0\WixInstaller.wixpdb -out Patching\patch\diff.wixmst
PAUSE
candle.exe Patching\Patch.wxs
PAUSE
light.exe patch.wixobj -out Patching\patch\patch.wixmsp
PAUSE
pyro.exe Patching\patch\patch.wixmsp -out Patching\patch\patch.msp -t RTM Patching\patch\diff.wixmst
PAUSE