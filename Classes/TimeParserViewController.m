//
//  TimeParserViewController.m
//  TimeParser
//
//  Created by Steve Baker on 1/26/11.
//  Copyright 2011 Beepscore LLC. All rights reserved.
//

#import "TimeParserViewController.h"
#import "ISO8601DateFormatter.h"

@interface TimeParserViewController ()
- (void)demoISODateFromString:(NSString *)aDateString;
- (void)demoISODateAndTimeZoneFromString:(NSString *)aDateString;
@end


@implementation TimeParserViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *myDateString = @"2011-01-26T08:37:15.747867Z";
    [self demoISODateFromString:myDateString];
    [self demoISODateAndTimeZoneFromString:myDateString];
}


- (void)demoISODateFromString:(NSString *)aDateString
{
    ISO8601DateFormatter *isoDateFormatter = [[ISO8601DateFormatter alloc] init];    
	isoDateFormatter.parsesStrictly = YES;
    
    NSDate *date = [isoDateFormatter dateFromString:aDateString];
    NSLog(@"date = %@", [date description]);
    
    [isoDateFormatter release];    
}


- (void)demoISODateAndTimeZoneFromString:(NSString *)aDateString
{
    ISO8601DateFormatter *isoDateFormatter = [[ISO8601DateFormatter alloc] init];    
	isoDateFormatter.parsesStrictly = YES;
    
    // declare NSTimeZone object.  We will supply a pointer to it (i.e. &outTimeZone)
    // as an argument to method dateFromString:timeZone:
    NSTimeZone *outTimeZone = nil;
    
    // dateFromString:timeZone: returns an NSDate
    // Also, it can change the object that &outTimeZone points to,
    // and so have an effect similar to returning a second object.
    NSDate *date = [isoDateFormatter dateFromString:@"2011-01-26T08:37:15.747867Z"
                                              timeZone:&outTimeZone];
    
    NSLog(@"date = %@", [date description]);
    
    // check what dateFromString:timeZone: set outTimeZone to
    NSLog(@"outTimeZone = %@", [outTimeZone description]);
    
    [isoDateFormatter release];       
}


- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc
{
    [super dealloc];
}

@end
