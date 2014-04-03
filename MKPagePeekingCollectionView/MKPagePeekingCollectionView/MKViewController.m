//
//  MKViewController.m
//  pagePeekingCollectionView
//
//  Created by Mayank Kumar on 4/2/14.
//  Copyright (c) 2014 Mayank. All rights reserved.
//

#import "MKViewController.h"
#import "MKCollectionViewCell.h"

@interface MKViewController ()
@property (nonatomic, weak) IBOutlet UICollectionView *myCollectionView;
@end

@implementation MKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.myCollectionView registerClass:[MKCollectionViewCell class] forCellWithReuseIdentifier:@"aCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource Methods
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"aCell" forIndexPath:indexPath];
    UIView *centerLine = [[UIView alloc] initWithFrame:CGRectMake(cell.frame.size.width/2, 0, 1, cell.frame.size.height)];
    centerLine.backgroundColor = [UIColor blackColor];
    [cell addSubview:centerLine];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

@end
