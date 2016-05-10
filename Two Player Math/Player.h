//
//  Player.h
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger score;
@property NSInteger lives;

-(NSInteger)updateScore:(BOOL)answer;
-(NSInteger)updateLives:(BOOL)answer;



@end
