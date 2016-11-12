//
//  XLOldProgrammeViewController.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "XLOldProgrammeViewController.h"

#import "OldProgrammeCell1.h"
#import "OldProgrammeCell2.h"
#import "OldProgrammeCell3.h"
#import "ResponseOldProgrammeData.h"

@interface XLOldProgrammeViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,   weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) ResponseOldProgrammeData * responseOldProgrammeData;

@end

@implementation XLOldProgrammeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"常规老方式";
    [self requestData];
    [self configTableViewCell];
}

- (void)requestData
{
    self.responseOldProgrammeData = [[ResponseOldProgrammeData alloc] init];
}

- (void)configTableViewCell
{
    [self.tableView registerNib:[UINib nibWithNibName:@"OldProgrammeCell1" bundle:nil] forCellReuseIdentifier:OldCell1Identifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"OldProgrammeCell2" bundle:nil] forCellReuseIdentifier:OldCell2Identifier];
    [self.tableView registerNib:[UINib nibWithNibName:@"OldProgrammeCell3" bundle:nil] forCellReuseIdentifier:OldCell3Identifier];
}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        OldProgrammeCell1 * cell = [tableView dequeueReusableCellWithIdentifier:OldCell1Identifier];
        [cell configMessage:self.responseOldProgrammeData.string1];
        return cell;
    } else if (indexPath.row == 1)
    {
        OldProgrammeCell2 * cell = [tableView dequeueReusableCellWithIdentifier:OldCell2Identifier];
        [cell configMessage:self.responseOldProgrammeData.string2];
        return cell;
    } else if (indexPath.row == 2)
    {
        OldProgrammeCell3 * cell = [tableView dequeueReusableCellWithIdentifier:OldCell3Identifier];
        [cell configMessage:self.responseOldProgrammeData.string3];
        return cell;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = 0;
    if (indexPath.row == 0) {
        return 44;
    } else if (indexPath.row == 1)
    {
        UITableViewCell * cell  = [self tableView:tableView cellForRowAtIndexPath:indexPath];
        height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingExpandedSize].height;
        return height;
    } else if (indexPath.row == 2)
    {
        UITableViewCell * cell  = [self tableView:tableView cellForRowAtIndexPath:indexPath];
        height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingExpandedSize].height;
        return height;
    }
    return 0;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
