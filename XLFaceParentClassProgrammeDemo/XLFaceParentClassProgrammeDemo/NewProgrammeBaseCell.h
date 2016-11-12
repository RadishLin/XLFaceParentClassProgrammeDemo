//
//  NewProgrammeBaseCell.h
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResponseNewProgrammeData.h"
#import "NewProgrammeCellHeightProtocol.h"

//子类需要有回调事件的代理
@protocol NewProgrammeTableViewCellProtocol <NSObject>

- (void)cell1DidSelectedRightButton;
- (void)cell2DidSelectedRightButton;
- (void)cell3DidSelectedRightButton;

@end

@interface NewProgrammeBaseCell : UITableViewCell <NewProgrammeCellHeightProtocol>

@property (nonatomic,   weak) id<NewProgrammeTableViewCellProtocol> delegate;
@property (nonatomic, strong) ResponseNewProgrammeData * responseNewProgrammeData;

@end
