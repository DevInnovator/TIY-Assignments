//
//  ViewController.m
//  Mission Briefing
//
//  Created by Ben Gohlke on 1/16/15.
//  Copyright (c) 2015 The Iron Yard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *agentNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *agentPasswordTextField;
@property (strong, nonatomic) IBOutlet UILabel *greetingLabel;
@property (strong, nonatomic) IBOutlet UITextView *missionBriefingTextView;

- (IBAction)authenticateAgent:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //
    // 1. These three UI elements need to be emptied on launch
    //    Hint: there is a string literal that represents empty
    //
    
//    [self.agentNameTextField setText:];
//    self.greetingLabel.text = ;
//    self.missionBriefingTextView.text = ;
    self.agentNameTextField.text = @"";
    self.greetingLabel.text = @"";
    self.missionBriefingTextView.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authenticateAgent:(UIButton *)sender
{
    
    
    // This will cause the keyboard to dismiss when the authenticate button is tapped
    if ([self.agentNameTextField isFirstResponder])
    {
        [self.agentNameTextField resignFirstResponder];
    }
    
    //
    // 2. Check whether there is text in BOTH the name and password textfields
    //
    if (![self.agentNameTextField.text isEqualToString:@""] && ![self.agentPasswordTextField.text isEqualToString:@""])
        
    {
        NSArray *nameComponents = [self.agentNameTextField.text componentsSeparatedByString:@" "];
        NSString *greeting = [NSString stringWithFormat:@"Good Evening, Agent %@", nameComponents[1]];
        self.greetingLabel.text = greeting;
    }
    {
        NSArray *nameComponents = [self.agentNameTextField.text componentsSeparatedByString:@" "];
        NSString *briefing = [NSString stringWithFormat:@"This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent %@", nameComponents[1]];
                              self.missionBriefingTextView.text = briefing;
    }
    {
        UIColor *authenticatedBackgroundColor = nil;
        self.view.backgroundColor = authenticatedBackgroundColor;
        
        UIColor *accessDeniedBackgroundColor = nil;
        self.view.backgroundColor = accessDeniedBackgroundColor;
        
        if (sender.buttonType == YES)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
    if ([self.agentNameTextField.text isEqualToString:nil])
        {
            self.view.backgroundColor = [UIColor redColor];
        }
    }
    
  
    
        // use * when creating an object variable, when only referencing the object variable then no *
        //when referencing a property we use "self" referencing class we are in, we are trying to see if text field is empty or has text, so "self.agentNameTextField + .text to find the text in the field"

/*
 
 

        //
        // 5. The view's background color needs to switch to green to indicate a successful login by the agent.
        //
        //    The color's RGB value is Red: 0.585, Green: 0.78, Blue: 0.188 with an alpha of 1. There is a class method on the
        //    UIColor class that returns a color object with custom defined RGBA values. Open the documentation and look for a
        //    method on UIColor that can take red, green, blue and alpha values as arguments.
        //
        //    Once you have the color object, you should be able to set the view's background color to this object.
        //
        
        UIColor *authenticatedBackgroundColor = nil;
        // Additional step to set the above color object to self.view's background color



        //
        // 6. The view's background color needs to switch to red to indicate a failed login by the agent.
        //
        //    The color's RGB value is Red: 0.78, Green: 0.188, Blue: 0.188 with an alpha of 1. There is a class method on the
        //    UIColor class that returns a color object with custom defined RGBA values. Open the documentation and look for a
        //    method on UIColor that can take red, green, blue and alpha values as arguments.
        //
        //    Once you have the color object, you should be able to set the view's background color to this object.
        //
        UIColor *accessDeniedBackgroundColor = nil;
        // Additional step to set the above color object to self.view's background color

*/

@end