rem path " "里面内容替换为TexturePacker的安装路径，将bat文件放在图片文件夹直接运行就可以了  
@ech off  
  
set textureBin=D:\installer\CodeAndWeb\TexturePacker\bin
  
for /f "usebackq tokens=*" %%d in (`dir /s /b *.pvr.ccz`) do (  
%textureBin%\TexturePacker.exe --sheet "%%~dpnd.png" "%%d" --algorithm Basic --allow-free-size --no-trim   
)  
  
del out.plist  
  
rem 修改文件名  
@python3 "%~dp0/deletePvr.py" %*  
  
pause  