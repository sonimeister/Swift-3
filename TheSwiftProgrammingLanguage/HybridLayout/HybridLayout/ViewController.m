//
//  ViewController.m
//  HybridLayout
//
//  Created by Angel Ricardo on 10/27/14.
//  Copyright (c) 2014 Angel Ricardo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    // Create the view
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Load the subview from the nib file
    UIView *subview = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] lastObject];
    [self.view addSubview:subview];
    
    // Prepate it for Auto Layout
    // Even though the view was laid out using Autosizing, you're
    // adding it *to* Auto Layout. This property only affects the
    // subview's relation to its parent, and not its subviews.
    subview.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Add constraints
    NSLayoutConstraint *constraint;
    
    // Center it along its parent X and Y axes
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeCenterX
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeCenterX
                  multiplier:1
                  constant:0];
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeCenterY
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeCenterY
                  multiplier:1
                  constant:0];
    [self.view addConstraint:constraint];
    
    // Set its aspect ratio to 1:1
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeWidth
                  relatedBy:NSLayoutRelationEqual
                  toItem:subview
                  attribute:NSLayoutAttributeHeight
                  multiplier:1
                  constant:0];
    [subview addConstraint:constraint];
    
    // Constraint it with respect to the superview's size
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeWidth
                  relatedBy:NSLayoutRelationLessThanOrEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeWidth
                  multiplier:1
                  constant:-40];
    [self.view addConstraint:constraint];
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeHeight
                  relatedBy:NSLayoutRelationLessThanOrEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeHeight
                  multiplier:1
                  constant:-40];
    [self.view addConstraint:constraint];
    
    // Add a weak "match size" constraint
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeWidth
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeWidth
                  multiplier:1
                  constant:-40];
    constraint.priority = 1;
    [self.view addConstraint:constraint];
    constraint = [NSLayoutConstraint
                  constraintWithItem:subview
                  attribute:NSLayoutAttributeHeight
                  relatedBy:NSLayoutRelationEqual
                  toItem:self.view
                  attribute:NSLayoutAttributeHeight
                  multiplier:-40
                  constant:1];
    constraint.priority = 1;
    [self.view addConstraint:constraint];
}


@end
