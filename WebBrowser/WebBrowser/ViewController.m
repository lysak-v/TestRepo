//
//  ViewController.m
//  WebBrowser
//
//  Created by Volodymyr on 7/1/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
{
    IBOutlet UIWebView *web;
    IBOutlet UITextField *address;
    NSMutableArray *historyURL;
}

@property NSMutableArray *historyURL;

@property (weak, nonatomic) IBOutlet UIButton *backButton;

@property (weak, nonatomic) IBOutlet UIButton *forwardButton;

@property (weak, nonatomic) IBOutlet UITextField *textURL;

- (IBAction)search:(id)sender;

@end

@implementation ViewController

@synthesize historyURL;

- (IBAction)search:(id)sender
{
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[address text]]]];
}

- (IBAction)goBack:(id)sender {
       [web goBack];
}

- (IBAction)goForward:(id)sender {
        [web goForward];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    web.delegate = self;
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.softserveinc.com"]]];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    if(![web canGoBack])
        _backButton.enabled = NO;
    else
        _backButton.enabled = YES;

    if(![web canGoForward])
        _forwardButton.enabled = NO;
    else
        _forwardButton.enabled = YES;
    
    NSString *historyURL = [[[[web request] URL] absoluteString] stringByAppendingString:@"\n"];
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/vlysa/Downloads/TestRepo-WebBrowserBranch/history.txt"];
    
    if(fileHandle)
    {
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[historyURL dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
    }
    else
    {
        [historyURL writeToFile:@"/Users/vlysa/Downloads/TestRepo-WebBrowserBranch/history.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    }
    
    
    [_textURL setText:[[[web request] URL] absoluteString]];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
@end
