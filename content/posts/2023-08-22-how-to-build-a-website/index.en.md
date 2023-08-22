---
title: How to build a personal website base on Rstudio
author: lyc
date: '2023-08-22'
slug: How to build a website
categories:
  - Text
tags:
  - Chinese
lastmod: ~
description: ~
draft: no
enableDisqus: no
enableMathJax: no
toc: no
disableToC: no
disableAutoCollapse: yes
---

## 使用Rstudio+Hugo+GitHub+Netlify 创建个人博客网站

## **提前准备**

-   [Rstudio](https://posit.co/download/rstudio-desktop/)

-   [git](https://git-scm.com/)

-   bolgdown包下载

-   GitHub以及Netlify

### Rstudio 安装教程([转载至](https://www.xjx100.cn/news/425327.html?action=onClick)）

#### 下载[R](https://www.r-project.org/)

下载地址为：<https://cran.r-project.org>    进入链接，如下图所示，在页面顶部提供了三个下载链接，分别对应三种操作系统：Windows、Mac和Linux。请选择自己操作系统对应的链接，接下来我将以windows为例给大家展示安装过程。

![](images/20161023205516330.png)

接下来单击【**Download R for Windows**】------\>【**base**】------\>【**Download R 3.3.1 for Windows**】，即可下载相应安装包。

![](images/20161023210448600.png)

单击base，进入下面页面：

![](images/20161023210603288.png)

下载完R安装包（我下的按转包名称为："R-3.3.1-win.exe"），之后双击开始安装，跟一般的软件安装一样，根据需要进行相关安装设置并不断点击下一步即可。

#### 安装R

可改成自己的安装路径。

![](images/20161023211133399.png)

安装组件

注意：根据自身电脑操作系统的位数选择，但64位系统可全选，因为64位向下兼容32位系统。

![](images/20161023211546669.png)

启动选项

![](images/20161023211630635.png)

正在安装

![](images/20161023211902502.png)

安装完成并在桌面生成快捷方式

#### ![](images/20161023211919721.png)

# 下载RStudio安装包

下载地址： Download RStudio \| The Popular Open-Source IDE from Posit   进入下载页面后，可以发现有Desktop和Server两个版本，我们选择Desktop。

![](images/20161023215110091.png)

单击蓝色圆形图标，进入跳转到Desktop版本下载窗口，Desktop版本又分为两个版本：Open Source Edition（免费）和Commercial License（付费）。

初学者自己用的话可选择前者，单击【**DOWNLOAD RSRUDIO DESKTOP**】。

![](images/20161023215530356.png)

单击【**DOWNLOAD RSRUDIO DESKTOP**】后进入下载页面，根据自己电脑的操作系统选择下载的版本。

#### 安装Rsudio

选择安装位置

![](images/20161023220330749.png)

IDE功能介绍

![](images/20161023220439328.png)

声明：本文转载至<https://www.xjx100.cn/news/425327.html?action=onClick>， 仅作为参考，并不用于商业用途，如有侵权，请与我联系删除。

### Git安装以及配置

#### Git下载

**安装git**([https://git-scm.com/)](https://git-scm.com/)) ![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC01NDMwNTBlYmI5MTEwOTU0LnBuZw.png)

注意：选择适合自己电脑配置的版本

安装过程

下载完成后，双击.exe文件，将出现以下对话框

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC04ODZkNDU3OTViYzliMTNhLnBuZw.png)

点击Next，默认选项和图中不一样，建议选中Git Bash here 和Git GUI here，这两个可以在任何目录下打开Git。其余的根据自己的需要进行修改即可。

![点击Next，选择默认编辑器，在这一步我选择的是默认选项。](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC1jNzNkMTllYTFiN2YwZjM4LnBuZw.png)

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC04Njc3YzEyYWIzOWEwMDQwLnBuZw.png)

继续Next，配置PATH环境

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC00MzUxYzczMzdhYjM5YTMxLnBuZw.png)

> 1.  Use Git from Git Bash only：这是最安全的选择，因为你的PATH根本不会被修改，你只能使用Git Bash的Git命令行工具。   
>
> 2.  Use Git from the Windows Command Prompt：这个选项被认为是安全的，它只向PATH添加一些最小的Git包，以避免使用可选的Unix工具混淆环境。你将能够从Git Bash和Windows命令提示符中使用Git。建议选择此项。   
>
> 3.  Use Git and optional Unix tools from the Windows Command Prompt：Git和可选的Unix工具都将添加到计算机的PATH中。警告：这将覆盖Windows工具，如"find"和"sort"，只有在了解其含义后才使用此选项。
>
> --------------- 版权声明：本文为CSDN博主「san兄弟」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。 原文链接：<https://blog.csdn.net/sanxd/article/details/82624127>

继续Next，以下选项均为默认

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC03N2QyMWMwZmEzMzYxYzNjLnBuZw.png)

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC03NGUxZTUzMTEwNjkxMjllLnBuZw.png)

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC1iMWFjZjkwMTk3MWFmNmM2LnBuZw.png)

![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC01ZmJlMzBjNGE1MDdlYjMwLnBuZw.png)

点击Inall开始安装，安装完成后点击Finish即可。\
在开始菜单里点击"Git "Git Bash"，弹出类似命令行的窗口，就说明Git安装成功！\
在任意目录下右击，可以看到右键菜单中有Git GUI Here和Git Bash Here两个选项。

GIt GUI 是git自带的图形化工具

Git Bash 是命令行工具

#### ![](images/aHR0cHM6Ly91cGxvYWQtaW1hZ2VzLmppYW5zaHUuaW8vdXBsb2FkX2ltYWdlcy8xMzk0NjA2MC1hYWU4MTZmNGFkYmY2YzlkLnBuZw.png)

### Git 检查安装

右键点击Git Bash，在命令行中输入

```         
git --version  #version与短横线之间不存在空格
```

就会显示当前下载的 git 版本

![](images/01.png)

配置用户信息

安装完 Git 后，第一件事就是设置用户名和邮箱地址。Git 需要使用这些基本信息记录对项目进行操作的用户。

右键点击Git Bash，在命令行中输入以下代码实现配置。注意如果使用了 \--global选项，则该命令只需要运行一次，就可以永久生效。

`git config --global user.name "your name" #注意为GitHub的用户名`

`git config --global user.email "your email"#GitHub注册时的邮箱地址`

[![转载图片](images/1d285a0192004f688d96b2d36aabf9d9.png)](http://www.taodudu.cc/news/show-3707188.html?action=onClick)

检查配置信息

方法一

配置完的用户名和邮箱地址会被写入C:/Users/用户名文件夹/.gitconfig 文件中。可以使用记事本查看全局的配置信息

方法二

运行终端指令

```         
# 查看所有全局配置项
git config --list --global
# 查看指定的全局配置项
git config user.name
git config user.email
```

### Git在Studio中的配置

一般来说，在Git下载完成后，系统可以自动监测到。

也可以在Rstudio的Tools-------\>global options -------\>GIT/SVN 进行设置

![](images/02.png)

**这一步非常重要，是沟通Rstudio和GitHub的桥梁**

到此为止，关于Git的下载及设置简略的完成了，详尽的教程链接我在下面列出：

-   <https://blog.csdn.net/sanxd/article/details/82624127>

-   <http://www.taodudu.cc/news/show-3707188.html?action=onClick>

### blogdown&hugo 下载及更新

**CRAN**

`install.packages("blogdown")`

**GitHub**

`if (!requireNamespace("devtools")) install.packages("devtools") devtools::install_github("rstudio/blogdown")`


```r
#install.packages("blogdown")#下载blogdown包
#update.packages("blogdown")#更新blogdown包
#在Rstudio中一般使用Rmarkdown编辑blog，但是Rstudio中并没有附带rmarkdown包，因此需要我们自己下载
#install.packages("rmarkdown")#下载rmarkdown包
#install.packages(c("blogdown","rmarkdown"))#同时下载两个包
#update.packages(ask = F)#更新所有包但并不弹出信息
#hugo下载需要再blogdown之后
library(blogdown)#载入blogdown包
#install_hugo()#下载hugo
hugo_version()#检查Hugo的版本
```

```
## [1] '0.115.4'
```
