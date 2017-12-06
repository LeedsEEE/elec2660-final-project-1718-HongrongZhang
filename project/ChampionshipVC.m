//
//  ThreeVC.m
//  project
//
//  Created by 张洪荣 on 2017/12/6.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

#import "ChampionshipVC.h"
@interface ChampionshipVC ()

@end

@implementation ChampionshipVC

- (void)viewDidLoad
    {
    [super viewDidLoad];
    
    }

- (void)viewWillAppear:(BOOL)animated
    {
    
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    
    }

- (UIStatusBarStyle)preferredStatusBarStyle
    {
    return UIStatusBarStyleLightContent;

    }

- (BOOL)prefersStatusBarHidden
    {
    return NO; //No means show, yes means hide
    }

- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }


@end

