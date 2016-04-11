//
//  ViewController.m
//  1UIWebViewBasicUse
//
//  Created by  a on 16/4/10.
//  Copyright © 2016年 eva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     NSLog(@"加载完毕——————");
    
    // 直接使用webView空间加载一个资源 (可以加载网页 txt mp4 ppt等多种格式的资源)
    // 1. 创建一个简单的url请求
    // * 加载mp4视频文件 (远程网页)
    // NSURL *url = [NSURL URLWithString:@"http://localhost:8080/MJServer/resources/videos/minion_16.mp4"];
    // * 加载txt文件 (加载pptx文件时无法正常显示)
    // NSURL *url = [[NSBundle mainBundle] URLForResource:@"关于" withExtension:@"txt"];
    // * 加载本地网页 
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"salary" withExtension:@"html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    // 2. 根据请求区加载对应的资源
    [self.webView loadRequest:request];
    
    // 3. 使webView内资源适配屏幕
    [self.webView scalesPageToFit];
}



@end
