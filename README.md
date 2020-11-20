# HMS AnalyticsKit Demo for ios

[![hms](https://img.shields.io/badge/hms-analytics-brightgreen)](https://developer.huawei.com/consumer/en/doc/development/HMS-References/3021004) 

English | [中文](https://github.com/HMS-Core/hms-ananlytics-demo-ios/blob/master/README_ZH.md)

## Table of Contents

* [Introduction](#introduction)
* [Getting Started](#getting-started)
* [Installation](#installation)
* [Configuration ](#configuration )
* [Environment requirements](#Environment-requirements)
* [Result](#result)
* [License](#license)


## Introduction
Hmsanalyticskitdemo provides an example of integrating HUAWEI Analytics Kit with an app. It illustrates how to collect predefined events and custom events on two pages, namely, question page or user attribute setting page. If you click TRUE or FALSE on the question page, automatically collected events including page exit and page entry will be logged when the page is switched. 
[Read more about Hianalytics](https://developer.huawei.com/consumer/en/doc/development/HMSCore-Guides-V5/introduction-0000001050745149-V5).
	

## Getting Started

For more development guidance, please refer to the links below:

[Development Guide](https://developer.huawei.com/consumer/en/doc/development/HMSCore-Guides-V5/ios-dev-process-0000001050168431-V5)

[API References](https://developer.huawei.com/consumer/en/doc/development/HMSCore-References-V5/ios-api-huawei-analytics-overview-0000001050164673-V5)

In this example, we demonstrate how to use the analytics SDK for iOS by using the CocoaPods Tool, a dependency manager for Swift and Objective-C Cocoa projects.

First download the demo by cloning this repository or downloading an archived snapshot.

Open the CLI and navigate to the location of the Xcode project. Edit the Podfile file, add pod 'HiAnalytics', that is, the dependency for pod.

Install the pod and open the .xcworkspace file to view the project.

You should create an iOS app in AppGallery Connect, and obtain the agconnect-services.plist file and add it to the project. You should also generate a signing certificate fingerprint and add the certificate file to the project. [More to Development Process](https://developer.huawei.com/consumer/en/doc/development/HMSCore-Guides-V5/ios-dev-process-0000001050168431-V5)

## Installation
Use Xcode to open the decompressed project.

## Configuration
1. Create an iOS app in AppGallery Connect and obtain the project configuration file agconnect-services.plist. In Xcode, switch to the Project view and move the agconnect-services.plist file to the root directory of the app. 

## Supported Environments
Hardware requirements:
1. A MAC computer (desktop or laptop)
2. A iPhone phone, which is used to debug the developed app
    
Software requirements:
1. HUAWEI Analytics Kit 5.0.5.300
2. Xcode


## Result
After running the app you should see a screen.

And click the button TRUE or FALSE to answer the question; Click the Setting to set user profiles.

<img src="https://github.com/HMS-Core/hms-ananlytics-demo-ios/blob/master/image/1.png" width=250 title="ID Photo DIY" div align=center border=5>

Click button SETTINGS:
When you click the Setting button, you will be asked for your gender, age, and favorite sports. These information will be logged as users attributes by HUAWEI Analytics Kit.

<img src="https://github.com/HMS-Core/hms-ananlytics-demo-ios/blob/master/image/2.png" width=250 title="ID Photo DIY" div align=center border=5>

## Question or issues
If you want to evaluate more about HMS Core,
[r/HMSCore on Reddit](https://www.reddit.com/r/HuaweiDevelopers/) is for you to keep up with latest news about HMS Core, and to exchange insights with other developers.

If you have questions about how to use HMS samples, try the following options:
- [Stack Overflow](https://stackoverflow.com/questions/tagged/huawei-mobile-services) is the best place for any programming questions. Be sure to tag your question with 
`huawei-mobile-services`.
- [Huawei Developer Forum](https://forums.developer.huawei.com/forumPortal/en/home?fid=0101187876626530001) HMS Core Module is great for general questions, or seeking recommendations and opinions.

If you run into a bug in our samples, please submit an [issue](https://github.com/HMS-Core/hms-ananlytics-demo-ios/issues) to the Repository. Even better you can submit a [Pull Request](https://github.com/HMS-Core/hms-ananlytics-demo-ios/pulls) with a fix.

##  License
HmsAnalyticsKitDemo is licensed under the [Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
