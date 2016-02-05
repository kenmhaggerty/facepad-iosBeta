//
//  FISNewsFeedTableViewController.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISNewsFeedTableViewController.h"
#import "FISCoverImageTableViewCell.h"
#import "FISTextTableViewCell.h"
#import "FISImageTableViewCell.h"
#import "FISTextPost.h"
#import "FISImagePost.h"

@interface FISNewsFeedTableViewController ()

@end

@implementation FISNewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.user.posts.count+1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0)
    {
        FISCoverImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"coverCell" forIndexPath:indexPath];
        [cell.cover setImage:self.user.cover];
        return cell;
    }
    
    FISFeedPost *post = [self.user.posts objectAtIndex:indexPath.row-1];
    if ([post isKindOfClass:[FISTextPost class]])
    {
        FISTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"textCell" forIndexPath:indexPath];
        [cell.profilePic setImage:self.user.profilePic];
        [cell.profileUsername setText:self.user.username];
        [cell.postContent setText:((FISTextPost *)post).textContent];
        return cell;
    }
    else if ([post isKindOfClass:[FISImagePost class]])
    {
        FISImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
        [cell.profilePic setImage:self.user.profilePic];
        [cell.profileUsername setText:self.user.username];
        [cell.contentImage setImage:((FISImagePost *)post).imageContent];
        return cell;
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) return 132;
    
    FISFeedPost *post = [self.user.posts objectAtIndex:indexPath.row-1];
    if ([post isKindOfClass:[FISTextPost class]])
    {
        return 88;
    }
    else if ([post isKindOfClass:[FISImagePost class]])
    {
        return 220;
    }
    
    return 88;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
