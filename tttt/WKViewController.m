//
//  WKViewController.m
//  tttt
//
//  Created by sks on 17/1/23.
//  Copyright © 2017年 sks. All rights reserved.
//

#import "WKViewController.h"
#import <WebKit/WebKit.h>
@interface WKViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation WKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   WKWebView *webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];

    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://mjfsc.sd.sgcc.com.cn/ppm/special_content/annualAccount.jhtml?consNo=57S1Zt25%2FKFfBdunKYta3w%3D%3D&timestamp=1485155134290&channl=ZSDL&sign=b32bdf66e9a58adc50671202d3a9208060555bfb"]]];
    
    
    // Do any additional setup after loading the view.
}
#pragma mark - WKNavigationDelegate
// 页面开始加载时调用
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    NSLog(@"加载中");
}
// 当内容开始返回时调用
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    
}
// 页面加载完成之后调用
- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    NSLog(@"加载完成");
}
// 页面加载失败时调用
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation{
     NSLog(@"加载失败");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
