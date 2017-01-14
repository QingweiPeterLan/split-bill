//
//  PeoplePaymentTableViewCell.m
//  Split Bill
//
//  Created by Qingwei Lan on 1/10/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import "PeoplePaymentTableViewCell.h"
#import "Person+CoreDataClass.h"

@implementation PeoplePaymentTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
    self.chosen = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setChosen:(BOOL)chosen
{
    _chosen = chosen;
    if (chosen) {
        self.paymentTextfield.hidden = NO;
        self.paymentTextfield.text = [NSString stringWithFormat:@"%.2f", self.eachPayment * self.person.weight];
    } else {
        self.paymentTextfield.hidden = YES;
        self.paymentTextfield.text = @"0.00";
    }
    if ([self.delegate respondsToSelector:@selector(weightDidChangeForPeoplePaymentCell:)]) {
        [self.delegate weightDidChangeForPeoplePaymentCell:self];
    }
}

- (void)setEachPayment:(double)eachPayment
{
    _eachPayment = eachPayment;
    if (self.chosen) {
        self.paymentTextfield.hidden = NO;
        self.paymentTextfield.text = [NSString stringWithFormat:@"%.2f", self.eachPayment * self.person.weight];
    } else {
        self.paymentTextfield.hidden = YES;
        self.paymentTextfield.text = @"0.00";
    }
}

- (void)setup
{
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.paymentTextfield.inputView.frame.size.width, 50.f)];
    toolBar.barStyle = UIBarStyleDefault;
    toolBar.items = @[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                      [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(donePad)]];
    [toolBar sizeToFit];
    self.paymentTextfield.inputAccessoryView = toolBar;
    self.nameLabel.text = self.person.name;
}

- (void)donePad
{
    [self.paymentTextfield resignFirstResponder];
}

@end
