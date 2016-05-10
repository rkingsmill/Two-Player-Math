//
//  GameModel.h
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property int x;
@property int y;
@property BOOL isFirstPlayer;
@property (strong, nonatomic) Player* player1;
@property (strong, nonatomic) Player* player2;

@end
