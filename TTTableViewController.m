//
//  TTTableViewController.m
//  blog_reader
//
//  Created by Duff on 5/16/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import "TTTableViewController.h"

@interface TTTableViewController ()

@end

@implementation TTTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.titles = [NSArray arrayWithObjects:@"The Missing Widget in the Android SDK: SmartImageView",
                                      @"Get Started with iOS Development",
                                      @"Treehouse Friends: Paul Irish",
                                      @"Getting a Job in Web Design and Development",
                                      @"Treehouse Show Episode 13",
                   nil];
    NSDictionary *blogPost1 = [NSDictionary dictionaryWithObjectsAndKeys:@"The Missing Widget In Android",@"title",@"Ben Jakuben",@"author", nil];
    NSDictionary *blogPost2 = [NSDictionary dictionaryWithObjectsAndKeys:@"My First iPhone App With API", @"title",@"Matthew Duff",@"author",nil];
    NSDictionary *blogPost3 = [NSDictionary dictionaryWithObjectsAndKeys:@"A Beautiful, Sunny Day",@"title",@"Kylee Duff",@"author", nil];
    NSLog(@"%@", blogPost1);
    NSLog(@"%@", blogPost2);
    NSLog(@"%@", blogPost3);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.titles count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [self.titles objectAtIndex:indexPath.row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
