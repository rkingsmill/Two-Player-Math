//
//  GameModel.m
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

-(instancetype) init {
    self = [super init];
    if (self) {
        
        _x = arc4random_uniform(20);
        _y = arc4random_uniform(20);
        _player1 = [[Player alloc]init];
        _player2 = [[Player alloc]init];
        _isFirstPlayer = YES;
    
    }
    
    return self;
}


@end
