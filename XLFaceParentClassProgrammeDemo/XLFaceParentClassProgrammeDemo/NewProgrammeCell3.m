//
//  NewProgrammeCell3.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "NewProgrammeCell3.h"

@interface NewProgrammeCell3 ()

@property (nonatomic, weak) IBOutlet UILabel *lblName;

@end

@implementation NewProgrammeCell3
@synthesize responseNewProgrammeData = _responseNewProgrammeData;

+ (BOOL)isStaticCell
{
    return NO;
}

- (void)setResponseNewProgrammeData:(ResponseNewProgrammeData *)responseNewProgrammeData
{
    _responseNewProgrammeData = responseNewProgrammeData;
    self.lblName.text = _responseNewProgrammeData.string3;
}

- (IBAction)didPressedPush:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cell3DidSelectedRightButton)]) {
        [self.delegate cell3DidSelectedRightButton];
    }
}


@end
