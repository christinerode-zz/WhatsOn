//
//  Shows.m
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import "Shows.h"

@implementation Shows

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    self.name = dictionary[@"name"];
    self.posterUrl = [dictionary valueForKeyPath:@"posterUrl"];
    self.channel  = [dictionary valueForKeyPath:@"channel"];
    
    self.nextEpisode = [dictionary valueForKeyPath:@"nextEpisode"];
    self.lastEpisode = [dictionary valueForKeyPath:@"lastEpisode"];
    
    return self;
    
}

+ (NSArray *)myShows {
    NSMutableArray *shows = [[NSMutableArray alloc] init];
    
    NSDictionary *show1 =
    @{@"name" : @"Girls",
      @"posterUrl" : @"http://upload.wikimedia.org/wikipedia/en/9/9d/Girls_HBO_Poster.jpg",
      @"channel" : @"HBO",
      @"lastEpisode" : [NSDate dateWithTimeIntervalSince1970:1394988672],
      @"nextEpisode" : [NSDate dateWithTimeIntervalSince1970:1395593472],
      };
    
    Shows *show = [[Shows alloc] initWithDictionary:show1];
    [shows addObject: show];
    
    
    NSDictionary *show2 =
    @{@"name" : @"True Detective",
      @"posterUrl" : @"http://cdn.theatlantic.com/newsroom/img/posts/2014/03/true_detective_poster/417b152a0.jpg",
      @"channel" : @"HBO",
      @"lastEpisode" : [NSDate date],
      @"nextEpisode" : [NSDate date],
      };
    
    show = [[Shows alloc] initWithDictionary:show2];
    [shows addObject: show];
    
    NSDictionary *show3 =
    @{@"name" : @"Parenthood",
      @"posterUrl" : @"http://www.popspotting.net/wp-content/uploads/2011/06/parenthood.jpg",
      @"channel" : @"NBC",
      @"lastEpisode" : [NSDate date],
      @"nextEpisode" : [NSDate date],
      };
    
    show = [[Shows alloc] initWithDictionary:show3];
    [shows addObject: show];
    
    
    return shows;
    
}


@end
