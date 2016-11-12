//
//  ViewController.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl10014. All rights reserved.
//

#import "ViewController.h"
#import "XLOldProgrammeViewController.h"
#import "XLNewFaceParentClassViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    if (indexPath.row == 0) {
        cell.textLabel.text = @"常规老方式编程";
    } else {
        cell.textLabel.text = @"面向超类编程";
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        XLOldProgrammeViewController * oldVC = [[XLOldProgrammeViewController alloc] initWithNibName:@"XLOldProgrammeViewController" bundle:nil];
        [self.navigationController pushViewController:oldVC animated:YES];
    } else {
        
       XLNewFaceParentClassViewController * newVC  = [[XLNewFaceParentClassViewController alloc] initWithNibName:@"XLNewFaceParentClassViewController" bundle:nil];
       [self.navigationController pushViewController:newVC animated:YES];
    }
}




@end
