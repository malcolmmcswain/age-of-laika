//
//  CCViewController.h
//  Age of Laika
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController

/* IBOutlets are references to view objects in our storyboard */
@property (strong, nonatomic) IBOutlet UILabel *yearsLabel;
@property (strong, nonatomic) IBOutlet UITextField *yearsTextField;
@property (strong, nonatomic) IBOutlet UILabel *realYearsLabel;

/*IBAction is a way for our view object to send a message to our Controller that the button was tapped.*/
- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender;
- (IBAction)convertToRealDogYearsButtonPressed:(UIButton *)sender;

@end
