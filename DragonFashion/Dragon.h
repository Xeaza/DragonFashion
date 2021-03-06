//
//  Dragon.h
//  DragonFashion
//
//  Created by Taylor Wright-Sanson on 10/7/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

@property (readonly) NSString *name;
@property (nonatomic) NSString *favoriteClothingItem;

- (instancetype)initWithName:(NSString *)name;

@end
