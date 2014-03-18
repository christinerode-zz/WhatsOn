//
//  ShowsTableViewCell.h
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowsTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *cellItemName;
@property (strong, nonatomic) IBOutlet UIImageView *cellItemPoster;
@property (strong, nonatomic) IBOutlet UILabel *cellItemSubTitle;
@property (strong, nonatomic) IBOutlet UIImageView *cellItemChannelLogo;


@property (nonatomic, strong) NSString *cellItemUrl;
@property (nonatomic, strong) NSString *cellItemChannel;



@end
