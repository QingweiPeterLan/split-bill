//
//  SBPayment.m
//  Split Bill
//
//  Created by Qingwei Lan on 1/4/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import "SBPayment.h"
#import "SBPerson.h"
#import "SBMoney.h"
#import "Payment+CoreDataClass.h"

@interface SBPayment ()

@property (nonatomic, strong, readwrite) SBPerson *person;
@property (nonatomic, strong, readwrite) SBMoney *amount;

@end

@implementation SBPayment

+ (SBPayment *)paymentWithPerson:(SBPerson *)person andAmount:(SBMoney *)amount
{
    SBPayment *payment = [[SBPayment alloc] init];
    payment.person = person;
    payment.amount = amount;
    return payment;
}

+ (SBPayment *)paymentFromCDPayment:(Payment *)payment
{
    return [SBPayment paymentWithPerson:[SBPerson personFromCDPerson:payment.person] andAmount:[SBMoney moneyWithVal:payment.amount]];
}

#pragma mark - DEBUG

- (NSString *)description
{
    return [NSString stringWithFormat:@"Payment: %@ paid %@", self.person, self.amount];
}

@end
