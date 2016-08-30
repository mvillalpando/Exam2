//
//  HomeViewController.m
//  Intro Table
//
//  Created by Walter Gonzalez Domenzain on 17/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *avengerNames;
@property NSMutableArray *avengerImgs;
@property NSMutableArray *makeupDescriptions;

@property NSString *sProductName;
@property NSString *sProductImage;
@property NSString *sProductPrice;

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------

- (void)initController {
    self.avengerNames   = [[NSMutableArray alloc] initWithObjects: @"MAKEUP BAG", @"TENDERTALK LIP BALM", @"PRO LONGWEAR BLUSH", @"DUO FIBRE BLUSH BRUSH", @"STROBE CREAM", @"EYES X 9 PALETTE: TINASHE", @"FLUIDLINE", @"STUDIO FIX FLUID SPF 15", @"VIVA GLAM LIPSTICK", @"LIPSTICK", nil];
    
    self.avengerImgs   = [[NSMutableArray alloc] initWithObjects: @"bag.jpg", @"balm.jpg", @"blush.jpg", @"brush.jpg", @"cream.jpg", @"eyeshadow.jpg", @"fluidline.jpg", @"fond.jpg", @"glam.jpg", @"heroine.jpg", nil];
    
    self.makeupDescriptions = [[NSMutableArray alloc] initWithObjects: @"$567.00", @"$350.00", @"$375.00", @"$240.00", @"$540.00", @"$589.00", @"$295.00", @"$499.00", @"$310.00", @"$285.00", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.avengerNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 70;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellAvengers *cell = (cellAvengers *)[tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellAvengers" bundle:nil] forCellReuseIdentifier:@"cellAvengers"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    }
    //Fill cell with info from arrays
    cell.lblName.text         = self.avengerNames[indexPath.row];
    cell.imgAvenger.image     = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    cell.lblDescription.text  = self.makeupDescriptions[indexPath.row];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    self.sProductName = self.avengerNames[indexPath.row];
    self.sProductPrice = self.makeupDescriptions[indexPath.row];
    self.sProductImage = self.avengerImgs[indexPath.row];
    
    [self performSegueWithIdentifier:@"Payments" sender:self];
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[Payments class]]) {
        Payments *ProductInfo = [segue destinationViewController];
        ProductInfo.avengerNames = self.sProductName;
        ProductInfo.makeupDescriptions = self.sProductPrice;
        ProductInfo.avengerImgs = self.sProductImage;
    }
}


@end
