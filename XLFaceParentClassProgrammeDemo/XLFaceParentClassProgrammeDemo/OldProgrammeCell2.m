//
//  OldProgrammeCell2.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "OldProgrammeCell2.h"

@interface OldProgrammeCell2 ()

@property (nonatomic, weak) IBOutlet UILabel *lblName;

@end

@implementation OldProgrammeCell2

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
