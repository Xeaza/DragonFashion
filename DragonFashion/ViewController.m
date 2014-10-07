//
//  ViewController.m
//  DragonFashion
//
//  Created by Taylor Wright-Sanson on 10/7/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *dragons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dragon *dragon = [[Dragon alloc] init];
    dragon.name = @"Smaug";

    self.dragons = [NSMutableArray arrayWithObject:dragon];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];

    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.name;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
