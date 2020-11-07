//
//  FirstView.h
//  iOSHitTest
//
//  Created by tonyreet on 2020/11/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, HitTestType) {
    HitTestTypeDirect,//直接返回view
    HitTestTypeHitTestSubView,// 通过hitTest递归返回subview的响应
    HitTestTypePointInsideSubView,// 通脱pointInside返回subview的响应
};

@interface FirstView : UIView

@property (nonatomic, assign) HitTestType hitTestType;

@end

NS_ASSUME_NONNULL_END
