//
//  SBPayment.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/4/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SBMoney, SBPerson;

@interface SBPayment : NSObject

@property (nonatomic, strong, readonly) SBPerson *person;
@property (nonatomic, strong, readonly) SBMoney *amount;

+ (SBPayment *)paymentWithPerson:(SBPerson *)person andAmount:(SBMoney *)amount;

@end
