//
//  VBRedactedViewController.h
//  EmailRedacted
//
//  Created by Ariel Rodriguez on 5/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VBRedactedViewController : UIViewController
@property (strong) NSString *redactedText; 
@property (weak, nonatomic) IBOutlet UITextView *redactedTextView;
@end
