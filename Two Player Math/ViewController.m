//
//  ViewController.m
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

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

    if (self.gameModel.isFirstPlayer) {
        
        NSLog(@"first players turn");
        
    } else {
        
        NSLog(@"second players turn");
    }
    
    self.gameModel = [self giveQuestion];
    
    //check answer
    BOOL answer = [self answerCheckMethod:self.response];
    
    Player *player;
    
    if (self.gameModel.isFirstPlayer) {
    
        player = self.gameModel.player1;
        NSInteger score = [player updateScore:answer];
        NSInteger lives = [player updateLives:answer];
        self.player1Score.text = [NSString stringWithFormat:@"Player1: Score %ld, Lives %ld", score, lives];
        NSLog(@"%ld", score);
        NSLog(@"%ld", lives);
    }
    
    else {
        
        player = self.gameModel.player2;
        //updatescore and lives
        NSInteger score = [player updateScore:answer];
        NSInteger lives = [player updateLives:answer];
        self.player2Score.text = [NSString stringWithFormat:@"Player2: Score %ld, Lives %ld", score, lives];
    }
    
   
    
    //if else statement (ternary)
   // UILabel* scoreLabel = self.gameModel.isFirstPlayer ? self.player1Score : self.player2Score;
    
    //update player and math question and their label
    self.gameModel.isFirstPlayer = !self.gameModel.isFirstPlayer;
    
    
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //initiate empty string for user response
  
    self.response = [[NSMutableString alloc]init];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(GameModel*)giveQuestion {
    GameModel *gameModel = [[GameModel alloc]init];
    self.mathQuestion.text = [NSString stringWithFormat:@"%d + %d = ?", gameModel.x, gameModel.y];
    return gameModel;
}

-(BOOL)answerCheckMethod:(NSString*)answer {
    
    BOOL right = YES;
    
    NSInteger intAnswer = [answer integerValue];
    
    //if statement for calculating if response matches actual sum of randomized numbers
    int actualResult = self.gameModel.x + self.gameModel.y;
    
    if (intAnswer != actualResult) {
        right = NO;
        
    }
    
    return right;
}


@end
