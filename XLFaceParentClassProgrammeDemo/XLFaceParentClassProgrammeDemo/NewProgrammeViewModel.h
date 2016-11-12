//
//  NewProgrammeViewModel.h
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl on 2016/11/9.
//  Copyright © 2016年 xl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResponseNewProgrammeData.h"

//MVVM中的胖Model
//1.网络请求，数据解析
//2.某些页面的cell显示不是固定的，可能在不同情况下是否显示也不一样，这个判断逻辑页写在.m
//3.或者某些其他逻辑性操作

@interface NewProgrammeViewModel : NSObject

@property (nonatomic, strong) ResponseNewProgrammeData *responseNewProgrammeData;

- (NSArray *)getIdentifierList;//获取可能需要展示注册的cell

- (void)requestData;//请求页面初始化数据


@end
