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

@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
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
    self.avengerNames   = [[NSMutableArray alloc] initWithObjects: @"MAKEUP BAG / CHARLOTTE OLYMPIA", @"TENDERTALK LIP BALM", @"PRO LONGWEAR BLUSH", @"DUO FIBRE BLUSH BRUSH", @"STROBE CREAM", @"EYES X 9 PALETTE: TINASHE", @"FLUIDLINE", @"STUDIO FIX FLUID SPF 15", @"VIVA GLAM LIPSTICK", @"LIPSTICK", @"LIPGLASS", @"IN EXTREME DIMENSION WATERPROOF", @"PATENTPOLISH LIP PENCIL", @"POWDER PUFF",@"PRO EYE MAKEUP REMOVER", @"DISC SPONGE", nil];
    
    self.avengerImgs   = [[NSMutableArray alloc] initWithObjects: @"bag.jpg", @"balm.jpg", @"blush.jpg", @"brush.jpg", @"cream.jpg", @"eyeshadow.jpg", @"fluidline.jpg", @"fond.jpg", @"glam.jpg", @"heroine.jpg", @"lipgloss.jpg", @"mask.jpg", @"pencil.jpg", @"puff.jpg", @"remover.jpg", @"sponge.jpg", nil];
    
    self.makeupDescriptions = [[NSMutableArray alloc] initWithObjects: @"Cosmetiquera especialmente diseñada que se dobla como un bolso ‘clutch’.", @"Un acondicionador de labios inteligente que crea un tinte personalizado con base en tu química corporal.", @"Un rubor suave con color de perfección extrema; dura ocho horas, no se corre.", @"Una brocha para aplicar suavemente rubor en polvo y en crema.", @"Una crema hidratante que revitaliza la piel ocapa e ilumina con partículas iridiscentes.", @"Una paleta de neutros férreos y tonos de noche brillantes. Exclusivo de online.", @"Un delineador en gel de larga duración que se aplica con un pincel de manera impecable.", @"Una fórmula para controlar la grasitud que ofrece un acabado mate natural con cobertura media a total.", @"Cada centavo del precio de venta de VIVA GLAM se dona a la M·A·C AIDS Fund.", @"Un lipstick con cientos de tonos. El producto icónico que hizo famosa a M·A·C.", @"Un lip gloss en una amplia variedad de colores que te permite crear un acabado cristal o un brillo sutil.", @"Una mascara que mejora el volumen, extiende la longitud, riza y se mantiene.", @"Un color para labios que combina el brillo de un lipgloss y la precisión de un delineador.", @"Una almohadilla lujosamente suave con cinta de satén que se usa para aplicar los productos en polvos sueltos.", @"Un limpiador liviano y no graso que no necesita enjuagarse y se retira sin irritar.", @"Una esponja multituso diseñada para aplicar productos en polvo, líquidos e híbridos.", nil];
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
    cell.lblName.text       = self.avengerNames[indexPath.row];
    cell.imgAvenger.image   = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    cell.lblDescription.text       = self.makeupDescriptions[indexPath.row];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   self.lblSelection.text = self.avengerNames[indexPath.row];
}

@end
