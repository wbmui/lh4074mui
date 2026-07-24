# Windows Longhorn build 4074 MUI Pack
### 为您的 Windows Longhorn build 4074 添加简体中文、繁体中文及更多语言！

编译方法：
1. 从 Release 处下载源代码。  
2. 从 files.jrsoftware.org/is/5/innosetup-5.6.1-unicode.exe 下载 Inno Setup 5.6.1 Unicode 安装包，并安装它（部分其他版本和非 Unicode 版本也行，但不建议），勾选安装 Inno Setup Preprocessor。 
3. 打开 installer.iss 文件，去除 SignTool=winbetamui 和 SignedUninstaller=yes 这两行，然后编译 installer.iss 文件，编译完成的文件在源代码根目录下的 compiled_installer 文件夹。

#### 早期版本
早期版本可前往该仓库的 Release 处下载。这些版本的部分说明信息可能有误，请自行判断。

#### 反馈
在 BiliBili 网站搜索“Nicrozoft”或“AndyChung123”，私信这些用户。

WinBetaMUI Team 部分成员邮箱（不分先后）: 
 Nicrozoft: haha666_666@outlook.com、[备用]haha666_1@outlook.com  
 AndyChung123: chunghuenpang@hotmail.com  

感谢支持！
