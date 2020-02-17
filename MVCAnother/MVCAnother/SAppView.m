//
//  SAppView.m
//  MVCAnother
//
//  Created by Sun on 2020/2/16.
//  Copyright © 2020 sun. All rights reserved.
//

#import "SAppView.h"
#import "SModel.h"

@interface SAppView()

@property (nonatomic, weak) UIImageView  *iconView;
@property (nonatomic, weak) UILabel *nameLabel;

@end

@implementation SAppView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 100, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    return self;
}

- (void)setApp:(SModel *)app {
    _app = app;
    
    self.iconView.image = [UIImage imageNamed:app.image];
    self.nameLabel.text = app.name;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([self.delegate respondsToSelector:@selector(appViewDidClick:)]) {
        [self.delegate appViewDidClick:self];
    }
}

@end
