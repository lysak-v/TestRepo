//
//  HistoryViewController.m
//  WebBrowser
//
//  Created by Volodymyr Lysak on 7/3/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController () //<UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *historyTable;

@end

@implementation HistoryViewController

@synthesize historyTable;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[historyTable setDataSource:self];
    
    // Do any additional setup after loading the view.
}

- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    NSString *history = [[NSString alloc] initWithContentsOfFile:fileName encoding:NSUTF8StringEncoding error:nil];
//    NSArray *historyRows;
//
//    return 5;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *c = [historyTable dequeueReusableCellWithIdentifier:@"Cell"];
//
//    [[c textLabel] setText:@"one"];
//    return c;
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
