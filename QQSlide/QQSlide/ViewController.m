//
//  ViewController.m
//  jianpan
//
//  Created by cyyz on 15/12/8.
//  Copyright © 2015年 cyyz. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Additions.h"
@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic ,strong) UIScrollView *scroll;
@property (nonatomic ,strong) UIImageView *headimg;


@end

@implementation ViewController

//- (void)textDidChange:(id<UITextInput>)textInput {
//    NSLog(@"sdfasd");
//}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    
}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"asdfasdf");
}

//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
//    NSLog(@"asdfasd");
//    return YES;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUP];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setUP {
    CGRect rect = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:rect];
    [self.view addSubview:scroll];
    CGSize size = CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height * 2);
    scroll.contentSize = size;
    // scroll.contentOffset = CGPointMake(0, 100);
    UIEdgeInsets inset = UIEdgeInsetsMake(-300, 0, 0, 0);
    scroll.contentInset = inset;
    scroll.bounces = YES;
    _scroll = scroll;
    _scroll.delegate = self;
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page-view-controller-1"]];
    imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 600);
    self.headimg = imageView;
    [scroll addSubview:imageView];
    
    UIImageView *buImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"05 登录"]];
    [_scroll addSubview:buImg];
    buImg.frame = CGRectMake(0, 400, [UIScreen mainScreen].bounds.size.width, 600);
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%f",scrollView.contentOffset.y);
    if (scrollView.contentOffset.y < 250) {
        self.headimg.y = scrollView.contentOffset.y/2;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
