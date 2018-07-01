//
//  ViewController.m
//  WebBrowser
//
//  Created by Volodymyr on 7/1/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)search:(id)sender
{
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[address text]]]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.softserveinc.com"]]];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
