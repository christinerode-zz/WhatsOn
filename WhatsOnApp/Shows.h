//
//  Shows.h
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shows : NSObject

    @property (nonatomic, strong) NSString *name;
    @property (nonatomic, strong) NSString *posterUrl;
    @property (nonatomic, strong) NSString *channel;

    @property (nonatomic, strong) NSDate *lastEpisode;
    @property (nonatomic, strong) NSDate *nextEpisode;

- (id)initWithDictionary:(NSDictionary *)dictionary;
+ (NSArray *)myShows;


@end
