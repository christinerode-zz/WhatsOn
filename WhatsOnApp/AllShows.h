//
//  AllShows.h
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AllShows : NSObject

@property (nonatomic, strong) NSString *name;

+ (NSArray *)allShows;

@end
