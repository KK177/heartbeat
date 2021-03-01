//
//  ViewController.m
//  CABasicanimation基本使用
//
//  Created by iiik- on 2021/3/1.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CABasicAnimation *anim = [CABasicAnimation animation];
    //设置变化的值
    anim.keyPath = @"position.x";
    //设置变化的值结束时的值
    anim.toValue = @300;
    //设置动画不会自动删除
    anim.removedOnCompletion = NO;
    //设置动画最后保存前一个状态
    anim.fillMode = kCAFillModeForwards;
    //给layer添加动画
    //forKey的值是用于给不同的动画添加标识
    [self.blueView.layer addAnimation:anim forKey:nil];
}

@end
