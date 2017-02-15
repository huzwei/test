//
//  WKViewController.m
//  tttt
//
//  Created by sks on 17/1/23.
//  Copyright © 2017年 sks. All rights reserved.
//

#import "WKViewController.h"
#import <WebKit/WebKit.h>
#define SW [UIScreen mainScreen].bounds.size.width
#define SH [UIScreen mainScreen].bounds.size.height
@interface WKViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation WKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadyuanView];
    
    // Do any additional setup after loading the view.
}

-(void)loadyuanView{
    
    UIView *greenView=[[UIView alloc]initWithFrame:CGRectMake(20, 110, SW-40, (SW-40)/4)];
    greenView.backgroundColor=[UIColor whiteColor];
    greenView.layer.cornerRadius = 10; //设置圆形的程度
    greenView.layer.masksToBounds = YES; //设置是否切圆
    greenView.layer.borderColor = [[UIColor greenColor]CGColor]; //设置圆周围的颜色
    greenView.layer.borderWidth = 2; //设置圆环的粗细宽度
    [self.view addSubview:greenView];
    for (NSInteger i=0; i<5; i++) {
        for (NSInteger j=0; j<2; j++) {
            UIView *yuanView=[[UIView alloc]initWithFrame:CGRectMake(10+(SW-40)/4*i, 100+(SW-40)/4*j, 20, 20)];
            yuanView.backgroundColor=[UIColor whiteColor];
            yuanView.layer.cornerRadius = 10; //设置圆形的程度
            yuanView.layer.masksToBounds = YES; //设置是否切圆
            yuanView.layer.borderColor = [[UIColor greenColor]CGColor]; //设置圆周围的颜色
            yuanView.layer.borderWidth = 2; //设置圆环的粗细宽度
            [self.view addSubview:yuanView];
     }
    }
}


-(void)loadWkWebView{
    WKWebView *webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];
    
    webView.UIDelegate = self;
    webView.navigationDelegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];

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
