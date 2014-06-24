//
//  THViewController.m
//  CrystalBall
//
//  Created by Roger Graves on 6/20/14.
//  Copyright (c) 2014 Roger Graves. All rights reserved.
//

#import "THViewController.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.predictions = [[NSArray alloc] initWithObjects:@"It is decidedly so!", @"Absolutely Not", @"Maybe", nil];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //CGRect frame = self.label.frame;
    //self.label.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height-100);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    srandom(time(NULL));
    int r = arc4random() % self.predictions.count;
    NSLog(@"random index: %d", r);
    
    self.label.text = [self.predictions objectAtIndex:r];

}
@end
