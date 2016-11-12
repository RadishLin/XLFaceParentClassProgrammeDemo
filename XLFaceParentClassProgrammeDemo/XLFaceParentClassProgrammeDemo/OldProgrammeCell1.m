//
//  OldProgrammeCell1.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "OldProgrammeCell1.h"

@interface OldProgrammeCell1 ()

@property (nonatomic, weak) IBOutlet UILabel *lblName;

@end

@implementation OldProgrammeCell1

- (void)configMessage:(NSString *)message
{
    self.lblName.text = message;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
