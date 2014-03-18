//
//  MainViewController.m
//  WhatsOnApp
//
//  Created by Christine Røde on 3/16/14.
//  Copyright (c) 2014 Christine Røde. All rights reserved.
//

#import "MainViewController.h"
#import "Shows.h"
#import "ShowsTableViewCell.h"
#import "UIImageView+AFNetworking.h"
#import "AddShowsViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) NSArray *shows;
@property (nonatomic, strong) UINavigationController *navController;

@end

@implementation MainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.title = @"My Shows";
        
        self.shows = [Shows myShows];
        _navController = self.navigationController;
        
        UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(openAllShows)];
        
        self.navigationItem.rightBarButtonItem = addButton;
        
    }
    return self;
}

- (void)loadView {
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame] style:UITableViewStylePlain];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 200;
    [tableView reloadData];
    
    self.view = tableView;
    

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }*/
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

- (ShowsTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ShowsTableViewCell *cell = (ShowsTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ShowsTableViewCell"];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ShowsTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    Shows *show = self.shows[indexPath.row];
    
    NSURL *posterUrl = [NSURL URLWithString:show.posterUrl];
    
    [cell.cellItemPoster setImageWithURL:posterUrl];
    [cell.cellItemName setText:show.name];
    
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}


#pragma mark - Actions

- (void)openAllShows {
    AddShowsViewController *viewController = [[AddShowsViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    NSLog(@"Pushed AddShows");
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
