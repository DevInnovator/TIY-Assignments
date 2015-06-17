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
    // this is a METHOD a collection of instructions to occur due to actions by user
@end

@implementation ViewController

- (void)viewDidLoad
    //nothing gets returned from (void), so nothing is going to be returned from viewDidLoaded

{
    [super viewDidLoad];

    //
    // 1. These three UI elements need to be emptied on launch
    //    Hint: there is a string literal that represents empty
    //
    
//    [self.agentNameTextField setText:];
//    self.greetingLabel.text = ;
//    self.missionBriefingTextView.text = ;
    [self.agentNameTextField setText: @""];
    //method call, recipe for set of instructions with an arguement
    self.greetingLabel.text = @"";
    // = is an assignment value (empty string) to a label
    self.missionBriefingTextView.text = @"";
    // set a property, reference a property and what?
    //self.name in viewDidLoad, name is the property, method is the full self.name
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)authenticateAgent:(UIButton *)sender
{ //IBAction so we know its connected to something on our storyboard
    //This must be a button, getting Button as argument, what does the View ask the View Controller that what happens after user pushes button
    
    
    // This will cause the keyboard to dismiss when the authenticate button is tapped
    if ([self.agentNameTextField isFirstResponder])
    {
        [self.agentNameTextField resignFirstResponder];
    }
    
    //
    // 2. Check whether there is text in BOTH the name and password textfields
    //
    if (![self.agentNameTextField.text isEqualToString:@""] && ![self.agentPasswordTextField.text isEqualToString:@""])
        //any METHOD with "IS" something, is a BOOL method by Apple
        //if conditional must return a BOOL, the conditional is the return of the method
        //if the textfield property is empty, BOOL returns YES
    {
    {
//        NSString *agentName = self.agentPasswordTextField.text;
        //when I substitute agentName for self.agentPasswordTextField below, the app crashes
        //instead of typing self.agentPasswordTextField.text you can use agentName
        NSArray *nameComponents = [self.agentNameTextField.text componentsSeparatedByString:@" "];
        self.greetingLabel.text= [NSString stringWithFormat:@"Good Evening, Agent %@", nameComponents[1]];
//        self.greetingLabel.text = greeting;
        //NSString *greeting
    }
    
    {
        NSArray *nameComponents = [self.agentNameTextField.text componentsSeparatedByString:@" "];
        NSString *briefing = [NSString stringWithFormat:@"This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent %@, you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds.", nameComponents[1]];
        //nameComponents is an arguement and goes after NSString @""
                            self.missionBriefingTextView.text = briefing;
    }
    
      
    {   UIColor *authenticatedBackgroundColor = [UIColor colorWithRed:0.585 green:0.78 blue:0.188 alpha:1.0];
        self.view.backgroundColor = authenticatedBackgroundColor;
    }
    }
    else
        
    {
        UIColor *accessDeniedBackgroundColor = [UIColor colorWithRed:0.78 green:0.188 blue:0.188 alpha:1.0];
        self.view.backgroundColor = accessDeniedBackgroundColor;
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