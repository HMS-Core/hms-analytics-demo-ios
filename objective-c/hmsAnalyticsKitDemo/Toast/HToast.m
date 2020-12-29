//
//  HToast.m
//  test
//
//  Created by  epro123 on 2020/11/26.
//

#import "HToast.h"
#import "HToastView.h"
@interface HToast()
@property (nonatomic, strong) HToastView *toastView;
@end

@implementation HToast

+ (instancetype)sharedInstance {
    static HToast *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (void)showMessage:(NSString *_Nullable)message {
    [[self sharedInstance]showMessage:message];
}

- (void)showMessage:(NSString *_Nullable)message {
    if (self.toastView.superview != nil || self.toastView) {
        [self hide];
    }
    self.toastView = [HToastView initWithMessage:message];
    self.toastView.alpha = 0;
    UIWindow *keyWindow = [self getKeyWindow];
    [keyWindow addSubview:self.toastView];
    [UIView animateWithDuration:0.2 animations:^{
        self.toastView.alpha = 1;
    }];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self hide];
    });
}

- (void)hide {
    [self.toastView removeFromSuperview];
    self.toastView = nil;
}

- (UIWindow *)getKeyWindow {
    UIWindow *window = nil;
    if (@available(iOS 13.0, *)) {
        for (UIWindowScene* windowScene in [UIApplication sharedApplication].connectedScenes) {
            if (windowScene.activationState == UISceneActivationStateForegroundActive) {
                window = windowScene.windows.lastObject;
            }
        }
        return window;
    }
    return [UIApplication sharedApplication].keyWindow;
}

@end
