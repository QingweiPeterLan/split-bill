//
//  Expense+CoreDataProperties.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/6/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Expense+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Expense (CoreDataProperties)

+ (NSFetchRequest<Expense *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *unique;
@property (nullable, nonatomic, retain) NSSet<Payment *> *payments;
@property (nullable, nonatomic, retain) NSSet<Person *> *involved;
@property (nullable, nonatomic, retain) Group *group;

@end

@interface Expense (CoreDataGeneratedAccessors)

- (void)addPaymentsObject:(Payment *)value;
- (void)removePaymentsObject:(Payment *)value;
- (void)addPayments:(NSSet<Payment *> *)values;
- (void)removePayments:(NSSet<Payment *> *)values;

- (void)addInvolvedObject:(Person *)value;
- (void)removeInvolvedObject:(Person *)value;
- (void)addInvolved:(NSSet<Person *> *)values;
- (void)removeInvolved:(NSSet<Person *> *)values;

@end

NS_ASSUME_NONNULL_END
