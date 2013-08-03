//
//  constellationViewController.h
//  Constellation
//
//  Created by maszmacadmin on 13-7-13.
//  Copyright (c) 2013年 constellation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface constellationViewController : UIViewController
<UIScrollViewDelegate>
{   
    NSArray *subImageArray;
    NSMutableArray *imageArray;
    NSTimer *imageTimer;
}

@property (nonatomic)IBOutlet UIView *loginView;
@property (nonatomic)IBOutlet UITextField *userText;
@property (nonatomic)IBOutlet UITextField *passText;

@property (nonatomic)IBOutlet UIView *signView;

@end
