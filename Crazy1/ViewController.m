//
//  ViewController.m
//  Crazy1
//
//  Created by Arron on 10/25/15.
//  Copyright (c) 2015 Arron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIBarButtonItem *done;
    UINavigationItem *navItem;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textView.delegate=self;
    UINavigationBar * navBar= [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 44)];
    [self.view addSubview:navBar];
    
    
    navItem=[[UINavigationItem alloc]initWithTitle:@"导航条"];
    navBar.items=@[navItem]; //这个是什么语法
    
    
    done=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(finishEdit)];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textViewDidBeginEditing:(UITextView *)textView{
    navItem.rightBarButtonItem=done;
}
-(void)textViewDidEndEditing:(UITextView *)textView{
    navItem.rightBarButtonItem=nil;
    
}

-(void)finishEdit{
    [self.textView resignFirstResponder];
    
}


@end
