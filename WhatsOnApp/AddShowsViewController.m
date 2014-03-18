//
//  AddShowsViewController.m
//  WhatsOnApp
//
//  Created by Christine Røde on 3/17/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import "AddShowsViewController.h"
//#import "AllShows.h"

@interface AddShowsViewController ()

@property (nonatomic, strong) NSArray *shows;

@end

@implementation AddShowsViewController

NSArray *tableData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        
        self.title = @"Add Shows";
        self.shows =  [[NSArray alloc] initWithObjects:
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

        
    }
    return self;
}


- (void)loadView {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView reloadData];
    
    self.view = tableView;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table Stuff

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.shows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    // Configure the cell...
    cell.textLabel.text = [self.shows objectAtIndex:indexPath.row];
    
    return cell;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
