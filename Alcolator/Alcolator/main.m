//
//  main.m
//  Alcolator
//
//  Created by Victor Skytte on 10/10/13.
//  Copyright (c) 2013 Victor Skytte. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
#ifdef ANDROID
        [UIScreen mainScreen].currentMode =
        [UIScreenMode emulatedMode:UIScreenBestEmulatedMode];
#endif
    }
}
