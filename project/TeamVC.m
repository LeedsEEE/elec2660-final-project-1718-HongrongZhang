//
//  TwoVC.m
//  project
//
//  Created by 张洪荣 on 2017/12/6.
//  Copyright © 2017年 University of Leeds. All rights reserved.
//

#import "TeamVC.h"
#import "TeamCell.h"
#import "FiveVC.h"

@interface TeamVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)NSArray *datas;
@property (weak, nonatomic) IBOutlet UITableView *mTable;
@property (nonatomic,strong)NSArray *detailArray;
@property (nonatomic,strong)NSArray *picArray;

@end

@implementation TeamVC

- (void)viewDidLoad
    {
    [super viewDidLoad];  //initialization
    self.datas = @[@"CITROEN",@"M-SPORT",@"HYUNDA",@"TOYOTA"];
    self.detailArray = @[@"Starting 2017 with a record of 96 WRC rally wins, 238 podium finishes and eight Manufacturers’ World Championship titles, Citroën has the best competitive record of the teams currently competing in the WRC.",@"After Ford’s withdrawal from the WRC at the end of 2012, the ongoing presence of the Blue Oval in the championship has been down to its former rally partner, British-based preparation firm M-Sport.",@"Hyundai made its return to WRC competition in 2014 with an all-new team and ambitious long-term plans for success in rallying’s top class.",@"A new entrant to the championship in 2017, the Toyota Gazoo Racing WRT represents the long-awaited WRC comeback for Toyota - a name synonymous with rallying success in the 1980s and 1990s."];//the details of the teams
    self.picArray = @[@"CITROEN",@"M-SPORT",@"HYUNDAI",@"TOYOTA"]; //picture allay
    }


   //view when needed
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
    return NO; //show, yes means hiden
    }
    //needed when recive memory warring
- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
    static NSString *identiferCell = @"cells";
    TeamCell *cell = [tableView dequeueReusableCellWithIdentifier:identiferCell forIndexPath:indexPath];
    cell.textLabel.text = self.datas[indexPath.row];
    return cell;
    }
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    FiveVC *VC = [sb instantiateViewControllerWithIdentifier:@"FiveVC"];
    VC.detailStr = self.detailArray[indexPath.row];
    VC.picStr = self.picArray[indexPath.row];
    [self.navigationController pushViewController:VC animated:YES];
}
@end

