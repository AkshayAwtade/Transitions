//
//  ViewController.m
//  AATransition And Animation
//
//  Created by Student P_04 on 06/10/16.
//  Copyright © 2016 Akshay Awtade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self rotateView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) original
{
    CGFloat x= self.rocketImage.frame.origin.x;
    CGFloat y= self.rocketImage.frame.origin.y;
    CGFloat width= self.rocketImage.frame.size.width;
    CGFloat height= self.rocketImage.frame.size.height;
    [self.rocketImage setFrame:CGRectMake(x,y, width, height)];
}
-(void)transitWithDimensions_X:(CGFloat) xoriginchange Y :(CGFloat) yoriginChange
{
   
    [UIView transitionWithView:self.rocketImage duration:0.4 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        
        CGPoint point=self.rocketImage.frame.origin;
//        CGRect viewPoints=self.view.frame;
//        CGRect rocket =self.rocketImage.frame;
        CGFloat width=self.rocketImage.frame.size.width;
        CGFloat height=self.rocketImage.frame.size.height;
       if(point.x <=300 && point.y <=400)
       {
           
           [self.rocketImage setFrame:CGRectMake(point.x+xoriginchange, point.y+yoriginChange, width, height)];
       }
        
    } completion:^(BOOL finished) {
        NSLog(@"Transition Completed");
    }];
   
}
-(void)ZoomWithDimensions_X:(CGFloat) heightChange Y :(CGFloat) widthChange
{
    [UIView transitionWithView:self.rocketImage duration:1.0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        
        CGPoint point=self.rocketImage.frame.origin;
        CGFloat width=self.rocketImage.frame.size.width;
        CGFloat height=self.rocketImage.frame.size.height;
        
        [self.rocketImage setFrame:CGRectMake(point.x, point.y, width+widthChange, height+heightChange)];
    } completion:^(BOOL finished) {
        NSLog(@"Transition Completed");
    }];
}

-(void)rotateView{
    [UIView transitionWithView:self.image1 duration:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
        for(int a=0; a<=10;a++)
        self.image1.transform=CGAffineTransformMakeRotation(2*a);
        self.image1.animationRepeatCount=10;


        
    } completion:nil];
}
- (IBAction)button:(id)sender {
    UIButton *button =sender;
    if(button.tag==1)
    {
       
        [self transitWithDimensions_X:-30 Y:-30];
    }
    else
    if(button.tag==2)
    {
        
        [self transitWithDimensions_X:0 Y:-30];
    }
    else
    if(button.tag==3)
    {
        
        [self transitWithDimensions_X:30 Y:-30];
    }
    else
    if(button.tag==4)
    {
      
        [self transitWithDimensions_X:30 Y:0];
    }
    else
    if(button.tag==5)
    {
        
        [self transitWithDimensions_X:30 Y:30];
    }
    else
    if(button.tag==6)
    {
      
        [self transitWithDimensions_X:0 Y:30];
    }
    else
    if(button.tag==7)
    {
        
        [self transitWithDimensions_X:-30 Y:30];
    }
    else
    if(button.tag==8)
    {
       
        [self transitWithDimensions_X:-30 Y:0];
    }
    else
        if(button.tag==9)
        {
            
            [self ZoomWithDimensions_X:10 Y:10];
        }
    
        else
            if(button.tag==10)
            {
                
                [self ZoomWithDimensions_X:-10 Y:-10];
            }
            else
                {
                    
                    [self rotateView];
                }
    


}





@end
