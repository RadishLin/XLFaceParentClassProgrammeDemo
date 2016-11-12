//
//  NewProgrammeCellHeightProtocol.h
//  XLFaceParentClassProgrammeDemo
//
//  Created by xl1 on 2016/11/9.
//  Copyright © 2016年 xl. All rights reserved.
//

#import <Foundation/Foundation.h>

//针对cell的高度写的协议
@protocol NewProgrammeCellHeightProtocol <NSObject>

@optional
+ (BOOL)isStaticCell;
+ (float)cellHeight;

@end
