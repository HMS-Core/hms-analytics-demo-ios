# 华为分析服务iOS SDK示例代码

[![hms](https://img.shields.io/badge/hms-analytics-brightgreen)](https://developer.huawei.com/consumer/en/doc/development/HMS-References/3021004) 

 中文 | [English](README.md)

## Table of Contents

* [简介](#简介)
* [快速入门](#快速入门)
* [安装](#安装)
* [配置](#配置)
* [环境要求](#环境要求)
* [操作结果](#操作结果)
* [授权许可](#授权许可)


## 简介
Hmsanalyticskitdemo提供了华为分析服务（HUAWEI Analytics Kit）与app集成的示例代码。它提供了两个页面（即答题页面和用户属性设置页面），用于演示收集预定义事件和自定义事件。在应用初始页面“答题”页上单击“是”或“否”来回答页面上的问题，则会触发上报自动收集事件（包括页面退出和页面进入事件）。
[了解更多有关Hianalytics信息](https://developer.huawei.com/consumer/cn/doc/development/HMSCore-Guides/introduction-0000001050745149).
	

## 快速入门

更多开发指导，请参考以下链接文档：

[开发指南](https://developer.huawei.com/consumer/cn/doc/development/HMSCore-Guides/ios-dev-process-0000001050168431)

[API参考](https://developer.huawei.com/consumer/cn/doc/development/HMSCore-References/ios-api-huawei-analytics-overview-0000001050164673)

Hmsanalyticskitdemo演示了如何使用CocoaPods工具（Swift和Objective - C Cocoa项目的依赖管理器）来集成分析服务的iOS SDK。

首先，我们通过克隆此仓库或下载压缩包的方式来下载Hmsanalyticskitdemo。

打开CLI并进入Xcode项目所在目录。打开Podfile文件，添加Pod 'HiAnalytics'，即Pod的依赖关系。

安装pod，打开.xcworkspace文件查看工程。

您需要在AppGallery Connect中创建应用，获取agconnect-services.plist文件，并将文件添加到项目中。此外，您还需要生成签名证书指纹并将证书文件添加到项目中。 [进一步了解开发流程](https://developer.huawei.com/consumer/cn/doc/development/HMSCore-Guides/ios-dev-process-0000001050168431).


## 安装
使用Xcode打开解压后的工程。


## 配置
在AppGallery Connect中创建iOS应用，并获取项目配置文件agconnect-services.plist。在Xcode中，切换到Project视图，将agconnect-services.plist文件移动到app的根目录下。 


## 环境要求
硬件要求:
1. Mac电脑（台式机或笔记本）
2. iPhone，用于应用调试
   

软件要求:
1. 华为分析服务5.2.0.300
2. Xcode


## 操作结果
运行该app后，您将会看到如下页面：

点击“TRUE”或“FALSE”按钮进行答题；点击“Settings”按钮设置用户属性。

<img src="image/1.png" width=250 div align=center border=5>

点击Settings按钮:
当点击Settings按钮，您会被要求提供喜爱的运动。华为分析服务将把这些信息记录为用户属性。

<img src="image/2.png" width=250 div align=center border=5>

## 技术支持
如果您对HMS Core还处于评估阶段，可在[Reddit社区](https://www.reddit.com/r/HuaweiDevelopers/)获取关于HMS Core的最新讯息，并与其他开发者交流见解。

如果您对使用HMS示例代码有疑问，请尝试：
- 开发过程遇到问题上[Stack Overflow](https://stackoverflow.com/questions/tagged/huawei-mobile-services?tab=Votes)，在`huawei-mobile-services`标签下提问，有华为研发专家在线一对一解决您的问题。
- 到[华为开发者论坛](https://developer.huawei.com/consumer/cn/forum/blockdisplay?fid=18) HMS Core板块与其他开发者进行交流。

如果您在尝试示例代码中遇到问题，请向仓库提交[issue](https://github.com/HMS-Core/hms-ananlytics-demo-ios/issues)，也欢迎您提交[Pull Request](https://github.com/HMS-Core/hms-ananlytics-demo-ios/pulls)。

## 授权许可
HmsAnalyticsKitDemo经过 [Apache 2.0授权许可](http://www.apache.org/licenses/LICENSE-2.0).

