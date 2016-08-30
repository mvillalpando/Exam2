//
//  HomeViewController.h
//  Intro Table
//
//  Created by Walter Gonzalez Domenzain on 17/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellAvengers.h"
#import "Payments.h"

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblAvengers;
@property (weak, nonatomic) IBOutlet UILabel *lblSelection;

@end
