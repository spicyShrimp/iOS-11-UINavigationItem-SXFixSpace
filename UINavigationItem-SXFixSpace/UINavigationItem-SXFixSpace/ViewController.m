//
//  ViewController.m
//  UINavigationItem-SXFixSpace
//
//  Created by charles on 2017/9/8.
//  Copyright © 2017年 None. All rights reserved.
//

#import "ViewController.h"
#import "UIBarButtonItem+SXCreate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = [@(self.navigationController.viewControllers.count) stringValue];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self configBarItem];
}

-(void)configBarItem{
    if (self.navigationController.viewControllers.count > 0) {
        self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pushAction) image:[UIImage imageNamed:@"nav_add"]];
    }
    if (self.navigationController.viewControllers.count > 1) {
        self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(popAction) image:[UIImage imageNamed:@"nav_back"]];
    }
}

-(void)pushAction{
    [self.navigationController pushViewController:[ViewController new] animated:YES];
}

-(void)popAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
