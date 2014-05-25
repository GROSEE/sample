//
//  ViewController.m
//  touchButton
//
//  Created by GROSEE on 2014/05/25.
//  Copyright (c) 2014年 grosee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
}

@synthesize yearMonthDay;
@synthesize hourMinutesSecond;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self nowTime];
    
    yearMonthDay.text=[NSString stringWithFormat:@"%d年%d月%d日",year,month,day];
    hourMinutesSecond.text=[NSString stringWithFormat:@"%d時%d分%d秒",hour,minute,second];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)touchButton:(id)sender{
    [self nowTime];
    yearMonthDay.text=[NSString stringWithFormat:@"%d年%d月%d日",year,month,day];
    hourMinutesSecond.text=[NSString stringWithFormat:@"%d時%d分%d秒",hour,minute,second];
}

-(void)nowTime{
    NSDate *now = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger flags;
    NSDateComponents *comps;
    
    // 年・月・日を取得
    flags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    comps = [calendar components:flags fromDate:now];
    
    year = comps.year;
    month = comps.month;
    day = comps.day;
    
    NSLog(@"%d年%d月%d日",year,month,day);
    hour = comps.hour;
    minute = comps.minute;
    second = comps.second;
    
    NSLog(@"%d時%d分%d秒",hour,minute,second);
}
@end
