//
//  NewProgrammeCell2.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "NewProgrammeCell2.h"

@interface NewProgrammeCell2 ()

@property (nonatomic, weak) IBOutlet UILabel *lblName;

@end

@implementation NewProgrammeCell2
@synthesize responseNewProgrammeData = _responseNewProgrammeData;


+ (BOOL)isStaticCell
{
    return NO;
}

- (void)setResponseNewProgrammeData:(ResponseNewProgrammeData *)responseNewProgrammeData
{
    _responseNewProgrammeData = responseNewProgrammeData;
    self.lblName.text = _responseNewProgrammeData.string2;
}

- (IBAction)didPressedPush:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cell2DidSelectedRightButton)]) {
        [self.delegate cell2DidSelectedRightButton];
    }
}

@end
