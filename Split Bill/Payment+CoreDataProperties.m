//
//  Payment+CoreDataProperties.m
//  Split Bill
//
//  Created by Qingwei Lan on 1/6/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Payment+CoreDataProperties.h"

@implementation Payment (CoreDataProperties)

+ (NSFetchRequest<Payment *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Payment"];
}

@dynamic amount;
@dynamic person;
@dynamic expense;

@end
