//
//  ViewController.m
//  project
//
//  Created by 张洪荣 on 2017/11/22.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "ViewController.h"
#import "TeamVC.h"
#import "ChampionshipVC.h"
#import "ResultVC.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *TEAMbtn;
@property (weak, nonatomic) IBOutlet UIButton *championBTN;
@property (weak, nonatomic) IBOutlet UIButton *RESUILTBTN;

@end

@implementation ViewController
- (void)TEAMbtnAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    TeamVC *vc = [sb instantiateViewControllerWithIdentifier:@"TwoVC"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)championBTNAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ChampionshipVC *vc = [sb instantiateViewControllerWithIdentifier:@"ThreeVC"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)RESUILTBTNAction{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ResultVC *vc = [sb instantiateViewControllerWithIdentifier:@"FourVC"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.TEAMbtn addTarget:self action:@selector(TEAMbtnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.RESUILTBTN addTarget:self action:@selector(RESUILTBTNAction) forControlEvents:UIControlEventTouchUpInside];
    
    [ self.championBTN addTarget:self action:@selector(championBTNAction) forControlEvents:UIControlEventTouchUpInside];
}
- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;

}

- (BOOL)prefersStatusBarHidden
{
    return YES; //No means show, yes means hide
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
