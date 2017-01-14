//
//  PeopleInvolvedTableViewCell.m
//  Split Bill
//
//  Created by Qingwei Lan on 1/10/17.
//  Copyright © 2017 Qingwei Lan. All rights reserved.
//

#import "PeopleInvolvedTableViewCell.h"
#import "Person+CoreDataClass.h"

@implementation PeopleInvolvedTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
    NSLog(@"Called awakeFromNib, %d", self.notChosen);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Actions

- (void)setEachCost:(double)eachCost
{
    _eachCost = eachCost;
    if (!self.notChosen) {
        self.weightLabel.hidden = NO;
        self.shouldPayTextField.hidden = NO;
        self.weightLabel.text = [NSString stringWithFormat:@"%lld", self.person.weight];
        self.shouldPayTextField.text = [NSString stringWithFormat:@"%.2f", self.eachCost * self.person.weight];
    } else {
        self.weightLabel.hidden = YES;
        self.shouldPayTextField.hidden = YES;
        self.weightLabel.text = @"0";
        self.shouldPayTextField.text = @"0.00";
    }
}

- (void)setNotChosen:(BOOL)notChosen
{
    _notChosen = notChosen;
    if (!notChosen) {
        self.weightLabel.hidden = NO;
        self.shouldPayTextField.hidden = NO;
        self.weightLabel.text = [NSString stringWithFormat:@"%lld", self.person.weight];
        self.shouldPayTextField.text = [NSString stringWithFormat:@"%.2f", self.eachCost * self.person.weight];
    } else {
        self.weightLabel.hidden = YES;
        self.shouldPayTextField.hidden = YES;
        self.weightLabel.text = @"0";
        self.shouldPayTextField.text = @"0.00";
    }
    if ([self.delegate respondsToSelector:@selector(weightDidChangeForPeopleInvolvedCell:)]) {
        [self.delegate weightDidChangeForPeopleInvolvedCell:self];
    }
}

- (void)setup
{
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.shouldPayTextField.inputView.frame.size.width, 50.f)];
    toolBar.barStyle = UIBarStyleDefault;
    toolBar.items = @[[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],
                      [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(donePad)]];
    [toolBar sizeToFit];
    self.shouldPayTextField.inputAccessoryView = toolBar;
    self.nameLabel.text = self.person.name;

    // if (!self.notChosen) {
    //     self.weightLabel.hidden = NO;
    //     self.shouldPayTextField.hidden = NO;
    //     self.weightLabel.text = [NSString stringWithFormat:@"%lld", self.person.weight];
    //     self.shouldPayTextField.text = [NSString stringWithFormat:@"%.2f", self.eachCost * self.person.weight];
    // } else {
    //     self.weightLabel.hidden = YES;
    //     self.shouldPayTextField.hidden = YES;
    //     self.weightLabel.text = @"0";
    //     self.shouldPayTextField.text = @"0.00";
    // }
}

- (void)donePad
{
    if ([self.shouldPayTextField isFirstResponder]) {
        [self.shouldPayTextField resignFirstResponder];
    }
}

@end
