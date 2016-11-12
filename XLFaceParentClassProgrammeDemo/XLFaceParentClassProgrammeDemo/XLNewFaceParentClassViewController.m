//
//  XLNewFaceParentClassViewController.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "XLNewFaceParentClassViewController.h"
#import "NewProgrammeViewModel.h"
#import "NewProgrammeBaseCell.h"

@interface XLNewFaceParentClassViewController ()<UITableViewDelegate,UITableViewDataSource,NewProgrammeTableViewCellProtocol>

@property (nonatomic,   weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NewProgrammeViewModel * viewModel;

@end

@implementation XLNewFaceParentClassViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"面向超类";
    [self.viewModel requestData];
    [self configTableViewCell];
}


- (void)configTableViewCell
{
    for (NSString * identifer in [self.viewModel getIdentifierList]) {
        [self.tableView registerNib:[UINib nibWithNibName:identifer bundle:nil]  forCellReuseIdentifier:identifer];
    }
}

#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.viewModel.getIdentifierList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellIdentifier = [self.viewModel.getIdentifierList objectAtIndex:indexPath.row];
    NewProgrammeBaseCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.delegate = self;
    cell.responseNewProgrammeData = self.viewModel.responseNewProgrammeData;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellIdentifier  = [self.viewModel.getIdentifierList objectAtIndex:indexPath.row];
    Class<NewProgrammeCellHeightProtocol> cellClass = NSClassFromString(cellIdentifier);
    CGFloat height = 0;
    if ([cellClass isStaticCell]) {
        height  = [cellClass cellHeight];
        return height;
    } else {
        NewProgrammeBaseCell * cell = (NewProgrammeBaseCell*)[self tableView:tableView cellForRowAtIndexPath:indexPath];
        height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingExpandedSize].height;
        return height;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NewProgrammeViewModel *)viewModel
{
    if (!_viewModel) {
        _viewModel = [[NewProgrammeViewModel alloc] init];
    }
    return _viewModel;
}

#pragma mark - NewProgrammeTableViewCellProtocolDelegete

- (void)cell1DidSelectedRightButton
{
    NSLog(@"点击了cell1的push");
}

- (void)cell2DidSelectedRightButton
{
     NSLog(@"点击了cell2的push");
}

- (void)cell3DidSelectedRightButton
{
    NSLog(@"点击了cell3的push");
}


@end
