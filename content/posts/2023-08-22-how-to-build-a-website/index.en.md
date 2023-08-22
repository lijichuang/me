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

# 使用Rstudio+Hugo+GitHub+Netlify 创建个人博客网站

## 提前准备

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

下载完R安装包（我下的按转包名称为：\"R-3.3.1-win.exe\"），之后双击开始安装，跟一般的软件安装一样，根据需要进行相关安装设置并不断点击下一步即可。

#### 安装R

可改成自己的安装路径。

![](images/20161023211133399.png)

安装组件

**注意：**根据自身电脑操作系统的位数选择，但64位系统可全选，因为64位向下兼容32位系统。

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

声明：本文转载至<https://www.xjx100.cn/news/425327.html?action=onClick>，
仅作为参考，并不用于商业用途，如有侵权，请与我联系删除。




