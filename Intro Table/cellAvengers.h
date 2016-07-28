//
//  cellAvengers.h
//  Intro Table
//
//  Created by Walter Gonzalez Domenzain on 17/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellAvengers : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgAvenger;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;

@end
