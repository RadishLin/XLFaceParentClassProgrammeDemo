//
//  NewProgrammeCell1.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/8.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "NewProgrammeCell1.h"

@interface NewProgrammeCell1 ()

@property (nonatomic, weak) IBOutlet UILabel *lblName;

@end

@implementation NewProgrammeCell1
@synthesize responseNewProgrammeData = _responseNewProgrammeData;

- (void)setResponseNewProgrammeData:(ResponseNewProgrammeData *)responseNewProgrammeData
{
    _responseNewProgrammeData = responseNewProgrammeData;
    self.lblName.text = _responseNewProgrammeData.string1;
    
}

+ (BOOL)isStaticCell
{
    return YES;
}

+ (float)cellHeight
{
    return 44;
}

- (IBAction)didPressedPush:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(cell1DidSelectedRightButton)]) {
         [self.delegate cell1DidSelectedRightButton];
    }
}


@end
