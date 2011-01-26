//
//  TimeParserAppDelegate.h
//  TimeParser
//
//  Created by Steve Baker on 1/26/11.
//  Copyright 2011 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimeParserViewController;

@interface TimeParserAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TimeParserViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TimeParserViewController *viewController;

@end

