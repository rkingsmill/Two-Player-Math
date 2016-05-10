//
//  Player.m
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "Player.h"
#import "GameModel.h"

@implementation Player


-(id)init {
    
    if (self = [super init]){
        _score = 0;
        _lives = 3;
        
    }
    return self;
}


-(NSInteger)updateScore:(BOOL)answer {
    
    NSInteger newScore;
    
    if (answer == YES) {
        
        newScore = self.score + 1;
        
    }
    
    else {
        
        newScore = self.score;
    }
    
    return newScore;
}

-(NSInteger)updateLives:(BOOL)answer {
    
    NSInteger newLives;
    
    if (answer == YES) {
        
        newLives = self.lives - 1;
    }
    
    else {
        
        newLives = self.lives;
    }
    
    return newLives;
}


@end
