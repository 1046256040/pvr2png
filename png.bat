rem path " "���������滻ΪTexturePacker�İ�װ·������bat�ļ�����ͼƬ�ļ���ֱ�����оͿ�����  
@ech off  
  
set textureBin=D:\installer\CodeAndWeb\TexturePacker\bin
  
for /f "usebackq tokens=*" %%d in (`dir /s /b *.pvr.ccz`) do (  
%textureBin%\TexturePacker.exe --sheet "%%~dpnd.png" "%%d" --algorithm Basic --allow-free-size --no-trim   
)  
  
del out.plist  
  
rem �޸��ļ���  
@python3 "%~dp0/deletePvr.py" %*  
  
pause  