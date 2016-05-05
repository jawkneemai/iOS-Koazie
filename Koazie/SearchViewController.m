//
//  SearchViewController.m
//  Koazie
//
//  Created by Johnathan Mai on 5/4/16.
//  Copyright © 2016 Johnathan Mai. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController () <UITableViewDelegate, UITableViewDataSource>

    @property (weak, nonatomic) IBOutlet UIButton *buttonCancel;

@end

@implementation SearchViewController

    static NSString *reuseIdentifier = @"SearchCell";

- (void) viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonCancelTouched:(id)sender {
    [self dismissViewControllerAnimated: YES completion: nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat: @"%ld.", ((long)(indexPath.row) + 1)];
    
    return cell;
}

- (void) didReceieveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
