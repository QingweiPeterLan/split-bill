//
//  AddExpenseTableViewController.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/10/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Group;

@interface AddExpenseTableViewController : UITableViewController

// These properties can never be nil.
// Always need to be set when view is created.
@property (nonatomic, strong) Group *group;
@property (nonatomic, strong) NSArray *people;

@end
