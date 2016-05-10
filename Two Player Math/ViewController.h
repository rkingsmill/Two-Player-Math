//
//  ViewController.h
//  Two Player Math
//
//  Created by Rosalyn Kingsmill on 2016-05-09.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"


@interface ViewController : UIViewController

@property GameModel *gameModel;


-(BOOL)answerCheckMethod:(NSString*)answer;



@end

