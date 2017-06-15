//
//  ViewController.m
//  MockTest
//
//  Created by iOS-School-1 on 15.06.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *tf1;
@property (nonatomic, strong) UITextField *tf2;
@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UITextField *res;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.button1 = [[UIButton alloc] initWithFrame: CGRectMake(20, 20, 40, 50)];
    self.button1.backgroundColor = [UIColor blueColor];
    [self.button1 addTarget:self
                action:@selector(button1Press)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button1];
    
    self.tf1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 80, 150, 50)];
    self.tf1.backgroundColor = [UIColor whiteColor];
    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 140, 150, 50)];
    self.tf2.backgroundColor = [UIColor whiteColor];
    self.res = [[UITextField alloc] initWithFrame:CGRectMake(20, 200, 150, 50)];
    self.res.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tf1];
    [self.view addSubview:self.tf2];
    [self.view addSubview:self.res];

}

- (void)button1Press {
    NSInteger arg1 = self.tf1.text.integerValue;
    NSInteger arg2 = self.tf2.text.integerValue;
    NSInteger result = arg1 * arg2;
    self.res.text = [NSString stringWithFormat:@"%ld", (long)result];
}

@end
