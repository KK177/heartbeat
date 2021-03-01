//
//  ViewController.m
//  心跳效果
//
//  Created by iiik- on 2021/3/1.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CABasicAnimation *anim = [CABasicAnimation animation];
    anim.keyPath = @"transform.scale";
    anim.toValue = @0;
    anim.duration = 1;
    //设置自动反转
    anim.autoreverses = YES;
    //设置动画无线执行
    anim.repeatCount = MAXFLOAT;
    [self.imageView.layer addAnimation:anim forKey:nil];
}

@end
