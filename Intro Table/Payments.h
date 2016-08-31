//
//  Payments.h
//  Intro Table
//
//  Created by Carlos E. Villalpando on 8/29/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPalMobile.h"
#import "Declarations.h"


@interface Payments : UIViewController<PayPalPaymentDelegate>

@property NSString *avengerNames;
@property NSString *makeupDescriptions;
@property NSString *avengerImgs;

@property (strong, nonatomic) IBOutlet UIImageView *imgMakeup;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblPrice;

@end
