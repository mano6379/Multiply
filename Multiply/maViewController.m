//
//  maViewController.m
//  Multiply
//
//  Created by Marion Ano on 3/10/14.
//  Copyright (c) 2014 Marion Ano. All rights reserved.
//

#import "maViewController.h"

@interface maViewController ()
@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;

@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UIView *greenScreen;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation maViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myMultiplier.text = @"10";
    self.myNumber.text = @"3";
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onCalculateButtonPressed:(id)sender

{
    
     //this code has retrieved the string and assigned it to the NSString object "number"
    NSString *number = [self.myNumber text];
    
    //converted local string variable, "number", into an integer by calling the "interValue" method on the string variable, "number". The converted string is assigned to the local interger value, "numberFRomString".
    NSInteger numberFromString = [number integerValue];
    
    //this code has retrieved the string from myMultiplier and assigned it to the local string variable, "numberMultiplier".
    NSString *numberMultiplier = [self.myMultiplier text];
    
    //this code converted local string variable, "numberMultiplier", by calling the integerValue method on the string, "numberMultiplier" and it is assigned to the local integer, numberFromMultiplier.
    NSInteger numberFromMultiplier = [numberMultiplier integerValue];
    
    //The operation of numberFromMultiplier * numberFromString is stored in the NSInteger variable, "finalNumber".
    NSInteger finalNumber = numberFromMultiplier * numberFromString;
    //updating the field
    
    //assigning the text property of "myAnswer" to the 
    self.myAnswer.text = [NSString stringWithFormat:@"%d", finalNumber];
    
    if (finalNumber > 20) {
        
        self.greenScreen.backgroundColor = [UIColor greenColor];
    }
    
    else {
        
        self.greenScreen.backgroundColor = [UIColor whiteColor];
    }


}

- (IBAction)sliderChange:(id)sender {
    
    //converted self.mySlider.value from a float to a NSInteger
    NSInteger sliderNumber = self.mySlider.value;
    
    //set self.myMultiplier.text to the string of the integer variable "sliderNumber"
    self.myMultiplier.text = [ NSString stringWithFormat:@"%d", sliderNumber];
    
    

    
    
    
}


/*{
    //code to change myAnswer to an interger
    
    NSString *theAnswer = [self.myAnswer text];
    NSInteger numberAnswer = [theAnswer integerValue];
    //condition to set green screen
    }*/


- (void)didReceiveMemoryWarning

{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
