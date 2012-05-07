//
//  VBRedactedViewController.m
//  EmailRedacted
//
//  Created by Ariel Rodriguez on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VBRedactedViewController.h"

@interface VBRedactedViewController ()

@end

@implementation VBRedactedViewController
@synthesize redactedTextView;
@synthesize redactedText; 

- (id)initWithNibName:(NSString *)nibNameOrNil 
               bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self redactedTextView] setText:redactedText]; 
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    [self setRedactedTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
