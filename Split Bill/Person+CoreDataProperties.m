//
//  Person+CoreDataProperties.m
//  Split Bill
//
//  Created by Qingwei Lan on 3/9/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Person+CoreDataProperties.h"

@implementation Person (CoreDataProperties)

+ (NSFetchRequest<Person *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Person"];
}

@dynamic name;
@dynamic unique;
@dynamic weight;
@dynamic expensesInvolved;
@dynamic group;
@dynamic paymentsMade;

@end
