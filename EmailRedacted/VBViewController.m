//
//  VBViewController.m
//  EmailRedacted
//
//  Created by Ariel Rodriguez on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VBViewController.h"
#import "VBRedactedViewController.h"

@interface VBViewController ()

@end

@implementation VBViewController
@synthesize plainTextView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setPlainTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    VBRedactedViewController *rvc = [segue destinationViewController]; 
    NSString *regexPattern = @"\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b"; 
    NSString *originalText = [[self plainTextView] text];
    NSString *redactedText = [originalText stringByReplacingOccurrencesOfString:regexPattern  
                                                          withString:@"redacted"
                                                             options:NSRegularExpressionSearch | NSCaseInsensitiveSearch
                                                               range:NSMakeRange(0, [originalText length])];
    [rvc setRedactedText:redactedText]; 
}

@end
