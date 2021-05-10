---
tags: [python]
title: 2021 打造Python开发环境
layout: post
---


最近看到很多人都想用Python做点事情，但不知从哪下手。本文将从安装Python开发环境入手，根据不同人群的需求，分为3种场景，由浅入深，读者可结合自身情况选择。


# [起步] 只装python环境
只装python环境适用于以下目的
- 写一个简单的hello world
-  手头上有一个python程序，想运行看下结果
-  追求简单极致的geek

打开Python官网链接 https://www.python.org/downloads/  ，点击红圈中的按钮开始下载

![image-20210112235652257](https://user-images.githubusercontent.com/76881401/104423942-ade97100-55b9-11eb-81c5-2c24363613cb.png)




下载完毕后，文件约27M    

![image-20210113000210403](https://user-images.githubusercontent.com/76881401/104424035-cc4f6c80-55b9-11eb-90e7-1d872a9661d0.png)


直接点击“Install Now”进行安装，勾选添加到环境变量，就可以直接在cmd中输入python来运行程序

![image-20210113000642376](https://user-images.githubusercontent.com/76881401/104424146-f012b280-55b9-11eb-9af2-0d011ff549da.png)



出现如下界面，即表示安装成功

![image-20210113003250748](https://user-images.githubusercontent.com/76881401/104424242-13d5f880-55ba-11eb-8277-9d0f2aa2dcba.png)



此时打开cmd命令行黑框，输入py或python回车，可以输出666运行感受下

![GIF 1-13-2021 12-47-56 AM](https://user-images.githubusercontent.com/76881401/104424265-1b959d00-55ba-11eb-9957-13ea97b00d1a.gif)



至此，Python的大门已向你打开~


# [进阶] 安装IDE(集成开发环境)
如果你有更高级的需求，比如

- 从零开始写个有一定规模的项目，
- 或者追求代码高亮，语法提示，单步调试等

那可以安装IDE，它提供了一系列的工具来提升开发效率，**推荐使用PyCharm作为IDE**

打开PyCharm官网链接https://www.jetbrains.com/pycharm/download/#section=windows ，点击红圈中的按钮进行下载 。PyCharm分Professional(专业版)和Community(社区版)，社区版提供的功能以相当丰富能满足使用，现阶段若无特殊需求没有必要追求专业版。

![image-20210113005217666](https://user-images.githubusercontent.com/76881401/104424286-24866e80-55ba-11eb-97c2-cfbd546f46c1.png)



下载完毕后，安装包约300m

![image-20210113005856267](https://user-images.githubusercontent.com/76881401/104424302-2819f580-55ba-11eb-9106-2341f6717d09.png)



安装完毕后，新建一个项目，默认会带一个示例文件，运行下是这样子的：

![image-20210113010740451](https://user-images.githubusercontent.com/76881401/104424328-30723080-55ba-11eb-91ec-0a3c262e0eb3.png)



# [探索] 安装Anaconda
如果你想致力于数据科学、机器学习、数据可视化等方面的开发工作，推荐Anaconda，它整合了常用的数据科学包，可以较为快速地上手，并且
- 含Conda环境管理软件，方便在1台电脑中安装多个不同版本的Python环境，可随时切换
- 含 Jupyter Notebook，可在浏览器中运行调试Python代码，画出好看的图形(数据可视化)

打开PyCharm官网链接https://www.anaconda.com/products/individual 点击红圈中的Download按钮开始下载

![image-20210113011350836](https://user-images.githubusercontent.com/76881401/104424336-3536e480-55ba-11eb-98d6-39b95f800c5d.png)



安装完毕后，尝试下Jupyter Notebook的可视化与交互操作，如下示例来自官网 https://jupyter.org/widgets#k3d ，页面中输出的3D图形是可以拖拽的

![GIF 1-13-2021 1-29-50 AM](https://user-images.githubusercontent.com/76881401/104424348-39630200-55ba-11eb-802c-ee1505fc2c0c.gif)



## FAQ
1. 我看官网上的Python版本太多了，装哪个版本的环境好呢？
首先2.x的版本不要用了，官网已放弃支持,详见[这篇公告](https://www.python.org/doc/sunset-python-2/)。 建议使用**较新的Stable(稳定)**版本，因为较新的版本会修复一些bug，而且IT行业发展速度快，尽量和时代的节奏保持同步。 但如果你下载的程序只支持特定的版本，那还是要安装对应的版本，要不然程序可能会报错。

1. 三种场景对应的Python程序、PyCharm、Anaconda可以共存吗？
可以，但是如果你一开始就准备装PyCharm或Anaconda，那他们默认会自带解释器，场景一对应的Python程序不必单独安装。

 