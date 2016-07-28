//
//  ViewController.h
//  Intro Table
//
//  Created by Walter Gonzalez Domenzain on 17/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) IBOutlet UIButton *btnSkip;
- (IBAction)btnSkipPressed:(id)sender;

@end

