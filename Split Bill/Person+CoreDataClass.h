//
//  Person+CoreDataClass.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/6/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Expense, Group, Payment;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSManagedObject

+ (Person *)personWithName:(NSString *)name
                    unique:(NSString *)unique
                    weight:(NSInteger)weight
                     group:(Group *)group
    inManagedObjectContext:(NSManagedObjectContext *)context;

+ (void)deletePersonWithUnique:(NSString *)unique
      fromManagedObjectContext:(NSManagedObjectContext *)context;


@end

NS_ASSUME_NONNULL_END

#import "Person+CoreDataProperties.h"
