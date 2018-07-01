//
//  ViewController.h
//  WebBrowser
//
//  Created by Volodymyr on 7/1/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIWebView *web;
    IBOutlet UITextField *address;
}

- (IBAction)search:(id)sender;

@end

