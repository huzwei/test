//
//  ViewController.m
//  tttt
//
//  Created by sks on 17/1/23.
//  Copyright © 2017年 sks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
{
 UIWebView *_webView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSURLCache sharedURLCache] removeAllCachedResponses];
    
    
    self.view.backgroundColor=[UIColor redColor];
    _webView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0,self.view.frame.size.width,self.view.frame.size.height)];
    _webView.backgroundColor=[UIColor whiteColor];
    _webView.delegate=self;
    _webView.scalesPageToFit = YES;
    [_webView sizeToFit];
    [self.view addSubview:_webView];
    // 遮罩
    NSString *urlStr=@"http://mjfsc.sd.sgcc.com.cn/ppm/special_content/annualAccount.jhtml?consNo=57S1Zt25%2FKFfBdunKYta3w%3D%3D&timestamp=1485135202787&channl=ZSDL&sign=185ce55c79cdf767aa47cf789eff5032e565a0f3";
    
 //  NSString *urlStr=@"http://url.cn/444a5rZ";
    NSURL *url=[NSURL URLWithString:urlStr];

     NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL: url];
//    NSURLRequest *request=[NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringLocalCacheData  timeoutInterval:90.0f];
    //request
    [_webView loadRequest:request];
    
}

#pragma mark == webViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
    NSLog(@"加载数据中。。。。");
    //    [DejalBezelActivityView activityViewForView:webView];
    
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //  _webView.userInteractionEnabled=YES;
    NSLog(@"加载完成！！！！");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"加载失败%@-%ld",error, (long)error.code);

    
    
}
-(void)dealloc{
    NSLog(@"HZW销毁了");
}

@end
