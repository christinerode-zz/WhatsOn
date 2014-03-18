//
//  AllShows.m
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import "AllShows.h"

@implementation AllShows

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    return self;
    
}

+ (NSArray*)allShows {
    
    NSMutableArray *allShows_unsorted = [[NSMutableArray alloc] initWithObjects:
                         @"American Idol",
                         @"Scandal",
                         @"Blacklist",
                         @"Dancing with the Stars",
                         @"NCIS",
                         @"Homeland",
                         @"Sleepy Hollow",
                         @"Under the Dome",
                         @"Suits",
                        @"True Blood",
                        @"Arrested Development",
                        @"Pretty Little Liars",
                        @"Mad Men",
                        @"Game of Thrones",
                        @"Mom",
                        @"Grey's Anatomy",
                        @"The Originals",
                        @"Parenthood",
                        @"Two and a Half Men",
                        @"The Millers",
                        @"Modern Family",
                        @"Parks and Recreation",
                        @"New Girl",
                        @"Glee",
                        @"House of Cards",
                        @"The Walking Dead",
                        @"Trophy Wife",
                        @"Brooklyn Nine-Nine",
                        @"Girls",
                        @"Shameless",
                        @"House of Lies",
                        @"Dads",
                        @"Portlandia",
                        @"Betas",
                        @"The Daily Show with Jon Stewart",
                        nil];
    
    
   // NSMutableArray *allShows = [[NSMutableArray alloc]init];
    
  //  [allShows addObjectsFromArray: [allShows_unsorted sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)]];
    
   // NSArray *alltheShows = [AllShows allShows];
    
    return allShows_unsorted;

}

@end
