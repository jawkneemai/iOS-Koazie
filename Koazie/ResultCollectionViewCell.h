//
//  ResultCollectionViewCell.h
//  Koazie
//
//  Created by Johnathan Mai on 5/4/16.
//  Copyright © 2016 Johnathan Mai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelIndex;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelAddress1;
@property (weak, nonatomic) IBOutlet UILabel *labelAddress2;
@property (weak, nonatomic) IBOutlet UILabel *labelPhone;
@property (weak, nonatomic) IBOutlet UILabel *labelRating;

@end
