//
//  UINavigationController+SXFullScreen.h
//  SXAutoStreets
//
//  Created by charles on 2017/7/7.
//  Copyright © 2017年 上海澍勋电子商务有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SXFullScreen)

/**
 禁止右滑返回属性
 */
@property (nonatomic, assign)BOOL sx_disableInteractivePop;

@end

@interface UINavigationController (SXFullScreen)

@end
