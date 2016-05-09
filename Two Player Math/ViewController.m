//
//  ViewController.m
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//Label for math question
@property (weak, nonatomic) IBOutlet UILabel *mathQuestion;

//score buttons
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

//enter button
@property (weak, nonatomic) IBOutlet UIButton *enterButton;

//number Buttons
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;

//response property

@property NSMutableString *response;

@end

@implementation ViewController

//Number Button Methods
- (IBAction)button1Touch:(id)sender {
    [_response appendString:@"1"];
}

- (IBAction)button2Touch:(id)sender {
    [_response appendString:@"2"];
}

- (IBAction)button3Touch:(id)sender {
    [_response appendString:@"3"];
}

- (IBAction)button4Touch:(id)sender {
    [_response appendString:@"4"];
}

- (IBAction)button5Touch:(id)sender {
    [_response appendString:@"5"];
}

- (IBAction)button6Touch:(id)sender {
    [_response appendString:@"6"];
}

- (IBAction)button7Touch:(id)sender {
    [_response appendString:@"7"];
}

- (IBAction)button8Touch:(id)sender {
    [_response appendString:@"8"];
}

- (IBAction)button9Touch:(id)sender {
    [_response appendString:@"9"];
}

- (IBAction)enterButtonTouch:(id)sender {
    
    //[player answerCheckMethod:_resonse];
    
    //update score label
    
    //randomize numbers (game model method)
    
    //update math question label
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //initiate empty string for user response
    _response = [[NSMutableString alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
