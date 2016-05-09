//
//  GameModel.m
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel


-(BOOL)answerCheckMethod:(NSString*)Answer:answer {
    
    BOOL right = YES;
    
    NSInteger intAnswer = [answer integerValue];
    
    //if statement for calculating if response matches actual sum of randomized numbers
    int actualResult = _x + _y;
    
    if (intAnswer != actualResult) {
        right = NO;
        
    }
    
    return right;
}

-(NSInteger)updateScore:(BOOL)Answer:answer {
    
    NSInteger *newScore;
    
    if (answer == YES){
    
    newScore = _player.score + 1;
      
    }
    
    else {
        newScore = _player.score;
    }
    
    return newScore;
}

-(NSInteger)updateLives:(BOOL)Answer:answer) {
    
    NSInteger newLives;
    
    if (answer == YES) {
        newLives = _player.lives - 1;
    }
    
    else {
        newLives = _player.lives;
    }
    
    return newLives;
}


@end
