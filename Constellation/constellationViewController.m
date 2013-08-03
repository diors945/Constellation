//
//  constellationViewController.m
//  Constellation
//
//  Created by maszmacadmin on 13-7-13.
//  Copyright (c) 2013年 constellation. All rights reserved.
//

#import "constellationViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <CoreImage/CoreImage.h>

@interface constellationViewController ()

@end

@implementation constellationViewController
@synthesize loginView;
@synthesize userText;
@synthesize passText;
@synthesize signView;

- (void)viewDidLoad
{
    [self.view setBackgroundColor:[UIColor clearColor]];
    
    UIImageView *backImage = [[UIImageView alloc] initWithFrame:self.view.frame];
    [backImage setImage:[UIImage imageNamed:@"bg.jpg"]];
    [self.view addSubview:backImage];
    
    [loginView setFrame:CGRectMake(0, 0, loginView.frame.size.width, loginView.frame.size.height)];
    [self.view addSubview:loginView];
    [signView setFrame:CGRectMake(0-signView.frame.size.width, 0, signView.frame.size.width, signView.frame.size.height)];
    [self.view addSubview:signView];
    
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
    [userLabel setBackgroundColor:[UIColor clearColor]];
    [userLabel setTextColor:[UIColor darkGrayColor]];
    [userLabel setText:@"用户名:"];
    [userLabel setAlpha:0.7f];
    [userText setLeftView:userLabel];
    [userText setLeftViewMode:UITextFieldViewModeAlways];
    
    UILabel *passLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 20)];
    [passLabel setBackgroundColor:[UIColor clearColor]];
    [passLabel setTextColor:[UIColor darkGrayColor]];
    [passLabel setText:@"密    码:"];
    [passLabel setAlpha:0.7f];
    [passText setLeftView:passLabel];
    [passText setLeftViewMode:UITextFieldViewModeAlways];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)scrollViewDidZoom:(UIScrollView *)scrollView
//{
//    for (UIImageView* subView in subImageArray) {
//        [subView setFrame:CGRectMake((backImage.frame.size.width-30*2)/3*subView.tag+30, backImage.frame.size.height/2, 25/scrollView.zoomScale, 25/scrollView.zoomScale)];
//    }
//}
//
//- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
//{
//    return backImage;
//}

- (void)saveGif
{
    if (imageArray.count == 0)
    {
        return;
    }
    
    return;
}

- (void)shotImage
{
    UIImage *image = [self viewImage];
    [imageArray addObject:image];
    if ([imageArray count] == 200)
    {
        [self saveGif];
        [imageTimer invalidate];
        imageTimer = nil;
        //[imageTimer release];
    }
}

- (UIImage *)viewImage
{
    UIGraphicsBeginImageContext(self.view.bounds.size);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return viewImage;
}

- (IBAction)textEditEnd:(id)sender
{
}

- (IBAction)loginButtonClicked:(id)sender
{
    
}

- (IBAction)forgetPassButtonClicked:(id)sender
{
    
}

- (IBAction)signButtonClicked:(id)sender
{
    CGRect frame = loginView.frame;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationCurve:0.2f];
    [loginView setFrame:CGRectMake(2*loginView.frame.size.width, 0, loginView.frame.size.width, loginView.frame.size.height)];
    [signView setFrame:frame];
    [UIView commitAnimations];
}

- (IBAction)signinButtonClicked:(id)sender
{
    
}

@end
