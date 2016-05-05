//
//  ResultsViewController.m
//  Koazie
//
//  Created by Johnathan Mai on 5/4/16.
//  Copyright © 2016 Johnathan Mai. All rights reserved.
//

#import "ResultsViewController.h"
#import "ResultCollectionViewCell.h"
#import <QuartzCore/QuartzCore.h>

@interface ResultsViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ResultsViewController

    NSString *reuseIdentifier = @"ResultCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonBackPressed:(id)sender {
    [self dismissViewControllerAnimated: YES completion: nil];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger) collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ResultCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    // Configuring the cell
    // Purple Border if uncommented
    //cell.layer.borderWidth = 1.0f;
    //cell.layer.borderColor = [UIColor colorWithRed:(150./255.) green:(121./255.) blue:(184./255.) alpha:1].CGColor;
    
    cell.labelIndex.text = [NSString stringWithFormat: @"%ld.", ((long)(indexPath.row) + 1)];
    
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    float width = collectionView.frame.size.width;
    float height = 150;
    return CGSizeMake(width, height);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
