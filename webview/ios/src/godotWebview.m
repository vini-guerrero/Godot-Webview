//
//  GodotWebview.m
//  GodotWebview
//
//  Created by Vinicius Guerrero on 08/04/19.
//  Copyright © 2019 Vinicius Guerrero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GodotWebview.h"
#import "WebKit/WebKit.h"
#include "CoreGraphics/CGGeometry.h"

@implementation GodotWebview

-(void)helloWorld{
    NSLog(@"Hello World");
    //    Object *obj = ObjectDB::get_instance(instanceId);
    //    obj->call_deferred("Hello World");
}

- (void)loadWebView {
    NSString *url=@"https://www.google.com";
    
    // Webview Size - Screen Bounds
    CGRect webViewFrame = [[UIScreen mainScreen] bounds];
    
    // Creates Dynamic Webview and Assigns Default Config
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    WKWebView *webview=[[WKWebView alloc] initWithFrame: webViewFrame configuration:config ];
    
    // Parses String Into URL Request
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    
    // Assings Self As Delegate
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    webview.UIDelegate = window.rootViewController;
    
    // Acctual Request
    [webview loadRequest:nsrequest];
    
    // Find A Way To Append Webview To Main Godot Game View
    // [self.view addSubview:webview];
}

// Find A Way To Attach Programmatically Created Webview Events Into Godot Delegate
- (void)webview:()webview {
    NSLog(@"Fully Loaded!");
}


@end
