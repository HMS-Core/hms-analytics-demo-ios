//
//  HToastView.m
//  test
//
//  Created by  epro123 on 2020/11/26.
//

#import "HToastView.h"

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kPadding 10

@interface HToastView()
@property (nonatomic, strong) UILabel *messageLabel;
@property (nonatomic, assign) CGFloat padding;
@end

@implementation HToastView

+ (instancetype)initWithMessage:(NSString * _Nullable)message {
    HToastView *toastView = [[HToastView alloc] init];
    toastView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
    toastView.layer.cornerRadius = 6;
    toastView.layer.masksToBounds = YES;
    toastView.messageLabel.text = message;
    toastView.messageLabel.textColor = [UIColor whiteColor];
    toastView.messageLabel.font = [UIFont systemFontOfSize:15];
    [toastView setupFrameWithMessage:message];
    return toastView;
}

- (void)setupFrameWithMessage:(NSString * _Nullable)message {
    CGSize toastSize = [self getSizeWithMessage:message];
    CGFloat toastWidth = (kScreenWidth / 3) > toastSize.width ? (kScreenWidth / 3) : toastSize.width;
    self.center = CGPointMake(kScreenWidth/2, kScreenHeight/2);
    self.bounds = CGRectMake(0, 0, toastWidth, toastSize.height);
    [self addConstraintWithMessageLabel];
}

- (CGSize)getSizeWithMessage:(NSString * _Nullable)message {
    UIFont *font = [UIFont systemFontOfSize:15];
    CGSize textSize = [message boundingRectWithSize:CGSizeMake(0.75 * kScreenWidth, 0.75 * kScreenHeight) options:(NSStringDrawingUsesLineFragmentOrigin) attributes:@{NSFontAttributeName:font} context:nil].size;
    CGFloat labelWidth = textSize.width + 1;
    CGFloat labelHeight = textSize.height + 1;
    CGFloat heightPadding = (2 * kPadding);
    CGFloat toastHeight = heightPadding + labelHeight;
    CGFloat toastWidth = labelWidth + (2 * kPadding);
    return CGSizeMake(toastWidth, toastHeight);
}

- (void)addConstraintWithMessageLabel {
    [self addSubview:self.messageLabel];
    [self.messageLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.messageLabel
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0
                                                      constant:kPadding]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.messageLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0
                                                      constant:kPadding]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.messageLabel
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0
                                                      constant:-kPadding]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.messageLabel
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0
                                                      constant:-kPadding]];
}

- (UILabel *)messageLabel {
    if (!_messageLabel) {
        _messageLabel = [[UILabel alloc] init];
        _messageLabel.numberOfLines = 0;
        _messageLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _messageLabel;
}

@end
