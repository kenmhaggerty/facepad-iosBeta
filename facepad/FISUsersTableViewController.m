//
//  FISUsersTableViewController.m
//  facepad
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUsersTableViewController.h"
#import "FISUser.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISNewsFeedTableViewController.h"

@interface FISUsersTableViewController ()
@property (nonatomic, strong) NSArray *users;
@end

@implementation FISUsersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *today = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setDay:1];
    [dateComponents setMonth:2];
    [dateComponents setYear:2016];
    NSDate *feb1 = [calendar dateFromComponents:dateComponents];
    
    [dateComponents setMonth:1];
    NSDate *jan1 = [calendar dateFromComponents:dateComponents];
    
    FISUser *joe = [[FISUser alloc] initWithUsername:@"jmburgess" profilePic:[UIImage imageNamed:@"joe-burgess.png"] cover:[UIImage imageNamed:@"coverimage.png"]];
    FISTextPost *joeTextPost = [[FISTextPost alloc] initWithUser:joe date:jan1];
    [joeTextPost setTextContent:@"Excited for the first day of school!"];
    FISImagePost *joeImagePost = [[FISImagePost alloc] initWithUser:joe date:today];
    [joeImagePost setImageContent:[UIImage imageNamed:@"flying.png"]];
    [joe setPosts:@[joeTextPost, joeImagePost]];
    
    FISUser *ken = [[FISUser alloc] initWithUsername:@"kenmhaggerty" profilePic:[UIImage imageNamed:@"ken.jpg"] cover:[UIImage imageNamed:@"ken_coverpic.jpg"]];
    FISImagePost *kenImagePost = [[FISImagePost alloc] initWithUser:ken date:jan1];
    [kenImagePost setImageContent:[UIImage imageNamed:@"ken_photo.jpg"]];
    FISTextPost *kenTextPost = [[FISTextPost alloc] initWithUser:ken date:feb1];
    [kenTextPost setTextContent:@"Did you see my tarsier photo?"];
    [ken setPosts:@[kenImagePost, kenTextPost]];
    
    [self setUsers:@[joe, ken]];
    
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
    
    return self.users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userCell" forIndexPath:indexPath];
    
    FISUser *user = [self.users objectAtIndex:indexPath.row];
    [cell.textLabel setText:user.username];
    
    return cell;
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

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    FISUser *user = [self.users objectAtIndex:indexPath.row];
    [((FISNewsFeedTableViewController *)segue.destinationViewController) setUser:user];
}

@end
