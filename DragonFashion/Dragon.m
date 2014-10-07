//
//  Dragon.m
//  DragonFashion
//
//  Created by Taylor Wright-Sanson on 10/7/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "Dragon.h"

@interface Dragon()

@property (readwrite) NSString *name;

@end

@implementation Dragon

// Write this to disallow the user to call init.
- (instancetype)init {
    //abort();
    [NSException raise:NSInvalidArgumentException format:@"Dragon must have a name, call initWithName:"];
    return nil;
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (name.length == 0) {
        [NSException raise:NSInvalidArgumentException format:@"Dragon must have a name"];
    }
    self.name = name;
    return self;
}

- (void)setFavoriteClothingItem:(NSString *)favoriteClothingItem {
    // Overridding the setter for the property favoriteClothingItem
    // to always add a '.' at the end of the favoriteClothingItem
    _favoriteClothingItem = [NSString stringWithFormat:@"%@.", favoriteClothingItem];
}



@end
