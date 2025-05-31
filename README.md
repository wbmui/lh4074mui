# Windows Longhorn 4074 build MUI Pack
### 为您的 Windows Longhorn build 4074 添加简体中文、繁体中文及更多语言！

编译方法：
1. 从 Release 处下载源代码。  
2. 从 files.jrsoftware.org/is/5/innosetup-5.6.1-unicode.exe 下载 Inno Setup 5.6.1 Unicode 安装包，并安装它（部分其他版本和非 Unicode 版本也行，但不建议），勾选安装 Inno Setup Preprocessor。 
3. 打开 installer.iss 文件，去除 SignTool=winbetamui 和 SignedUninstaller=yes 这两行，然后编译 installer.iss 文件，编译完成的文件在源代码根目录下的 compiled_installer 文件夹。

#### 早期版本
早期版本可前往 123pan.com/s/lTO8jv-mHRHA 或 pan.astpan.com/s/VDL4fN 下载，部分早期版本也可前往该仓库的 Release 处下载。这些版本的部分说明信息可能有误，请自行判断。

#### 反馈
前往 @Nicrozoft 的产品交流群反馈：teams.live.com/l/invite/FBA7VfY_z6_yTxPxQM

WinBetaMUI Team 管理员邮箱（不分先后）: 
 WinBetaUser: markta111@outlook.com、[备用]bobday001@outlook.com  
 Nicrozoft: haha666_666@outlook.com、[备用]haha666_1@outlook.com  
 AndyChung123: chunghuenpang@hotmail.com  

感谢支持！
