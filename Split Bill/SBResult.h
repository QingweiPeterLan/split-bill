//
//  SBResult.h
//  Split Bill
//
//  Created by Qingwei Lan on 1/5/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SBPerson;
@class SBMoney;

@interface SBResult : NSObject

@property (nonatomic, strong, readonly) SBPerson *lendee;
@property (nonatomic, strong, readonly) SBPerson *lender;
@property (nonatomic, strong, readonly) SBMoney *amount;

+ (SBResult *)resultWithLendee:(SBPerson *)lendee
                     andLender:(SBPerson *)lender
                     andAmount:(SBMoney *)amount;

@end