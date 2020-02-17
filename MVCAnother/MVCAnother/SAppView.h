//
//  SAppView.h
//  MVCAnother
//
//  Created by Sun on 2020/2/16.
//  Copyright © 2020 sun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SModel, SAppView;
@protocol SAppViewDelegate <NSObject>
@optional
- (void)appViewDidClick:(SAppView *)appView;
@end

@interface SAppView : UIView

@property (nonatomic, strong) SModel *app;
@property (nonatomic, weak) id<SAppViewDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
