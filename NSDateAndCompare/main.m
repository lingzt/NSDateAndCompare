//
//  main.m
//  NSDateAndCompare
//
//  Created by ling toby on 6/2/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate * now = [NSDate date];
        NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
        [outputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSString *newDateString = [outputFormatter stringFromDate:now];
        NSLog(@"newDateString the current time is  %@", newDateString);
        NSDate *startDate = [outputFormatter dateFromString:@"2016-06-02 23:12:22"];
        NSDate *endDate = [outputFormatter dateFromString:@"2016-06-02 23:12:22"];
        if([startDate compare: now] == NSOrderedDescending) // if start is later in time than end
        {
            NSLog(@"start date is later in time than now");
        }else{
            NSLog(@"start date is earlier in time than now");
            
        }
        
        if([startDate compare: endDate] == NSOrderedDescending) // if start is later in time than end
        {
            NSLog(@"start date is later in time than end");
        }if([startDate compare: endDate] == NSOrderedAscending) {
            NSLog(@"start date is earlier in time than end");
        }if ([startDate compare: endDate] == NSOrderedSame){
            NSLog(@"HAHA, starts and ends the same time");
        }
        
        //Watch out if the timeStap is the same WITH re
    }
    return 0;
}
