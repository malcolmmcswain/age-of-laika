//
//  CCViewController.m
//  Age of Laika
//
//  Created by Eliot Arntz on 9/24/13.
//  Copyright (c) 2013 Code Coalition. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

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

/* This method was created when we control dragged from the story board and hooked up our button as an action.  Now when the user presses the button the code inside the curly braces will evaluate. */

- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender
{
    /* First we create a variable of type float.  We then access the string (series of characters) text from the textField and convert it to a floatValue */
    int humanYears = [self.yearsTextField.text intValue];
    
    /* In order to convert the age of the dog to dog years we multiply its' age  by 7. */
    int dogYears = humanYears * 7;
    
    /* Next we update the label to show the number of dog years.  In order to display the dogYears float variable as text on our screen we must convert the float variable to an NSString.  NSStrings, which we will learn about in our Objects section, allows us to package characters together.
     */
    self.yearsLabel.text = [NSString stringWithFormat:@"%i",dogYears];
}

/*
 This method was created when we control dragged from the story board and hooked up our button as an action.  Now when the user presses the button the code inside the curly braces will evaluate.
 */
- (IBAction)convertToRealDogYearsButtonPressed:(UIButton *)sender
{
    /* First we create a variable of type float.  We then access the string (series of characters) text from the textField and convert it to a floatValue */
    int humanYears = [self.yearsTextField.text intValue];
    
    /*Initialize a variable named realDogYears.  Based on the if comparision we will assign a value to this variable later. */
    int dogYears;
    
    /* An if statement will test if the variable ageOfDog's value is greater than 2.  If it is greater than 2 set the realDogYears variable equal to the value (10.5 * 2) + (ageOfDog - 2) * 4;.  Otherwise multiply the ageOfDog by 10.5. */
    if (humanYears > 2){
        dogYears = (10.5 *2) + ((humanYears -2) * 4);
    }
    else {
        dogYears = 10.5 * humanYears;
    }
    
    /* Next we update the label to show the number of dog years.  In order to display the realDogYears float variable as text on our screen we must convert the float variable to an NSString.  NSStrings, which we will learn about in our Objects section, allows us to package characters together. */
    self.realYearsLabel.text = [NSString stringWithFormat:@"%i", dogYears];
}

@end
