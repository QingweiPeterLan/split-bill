//
//  Expense+CoreDataProperties.m
//  Split Bill
//
//  Created by Qingwei Lan on 2/25/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Expense+CoreDataProperties.h"

@implementation Expense (CoreDataProperties)

+ (NSFetchRequest<Expense *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Expense"];
}

@dynamic isPayback;
@dynamic name;
@dynamic unique;
@dynamic group;
@dynamic paymentsInvolved;
@dynamic peopleInvolved;

@end
