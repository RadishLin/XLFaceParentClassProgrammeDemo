//
//  NewProgrammeViewModel.m
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/9.
//  Copyright © 2016年 xl. All rights reserved.
//

#import "NewProgrammeViewModel.h"

static NSString * const NewProgrammeCell1Identifier = @"NewProgrammeCell1";
static NSString * const NewProgrammeCell2Identifier = @"NewProgrammeCell2";
static NSString * const NewProgrammeCell3Identifier = @"NewProgrammeCell3";

@implementation NewProgrammeViewModel


- (NSArray *)getIdentifierList
{
    return  @[NewProgrammeCell1Identifier,
              NewProgrammeCell2Identifier,
              NewProgrammeCell3Identifier];
}

- (void)requestData
{
  self.responseNewProgrammeData = [[ResponseNewProgrammeData alloc] init];
}


@end
