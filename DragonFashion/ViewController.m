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
    Dragon *smaug = [[Dragon alloc] initWithName:@"Smaug"];
    smaug.favoriteClothingItem = @"Turtle neck and chain";
    Dragon *glaedr = [[Dragon alloc] initWithName: @"Glaedr"];
    glaedr.favoriteClothingItem = @"Scaled corsit";
    Dragon *firnen = [[Dragon alloc] initWithName:@"Firnen"];
    firnen.favoriteClothingItem = @"Headband";
    Dragon *opheila = [[Dragon alloc] initWithName:@"Opheila"];
    opheila.favoriteClothingItem = @"Birthday suit";
    Dragon *miremel = [[Dragon alloc] initWithName:@"Miremel"];
    miremel.favoriteClothingItem = @"Knee high socks made of noodles";

    self.dragons = [NSMutableArray arrayWithObjects:smaug, glaedr, firnen, opheila, miremel, nil];

    // Calling alloc init on Dragon will crash the app and give the warning set in the Dragon class
    // with NSException
    //[[Dragon alloc] init];
    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@", dragon.name);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];

    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.name;
    cell.detailTextLabel.text = dragon.favoriteClothingItem;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
