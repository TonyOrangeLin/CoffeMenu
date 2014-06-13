
//  FirstViewController.m
//  CoffeeMenu
//
//  Created by 黃昱彰 on 2014/6/8.
//  Copyright (c) 2014年 max005. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
{
    //宣告一個存放連絡人的陣列變數，_contacts
    NSArray * _contacts;
}
@end

@implementation FirstViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _contacts = [[NSArray alloc] initWithObjects:
                 @"Latte"
                 , @"Mocha"
                 ,@"Cappuccino"
                 , nil];
    
    self.collectionView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_contacts count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //透過dequeueReusableCellWithReuseIdentifier:forIndexPath:訊息，
    //將預先設計的cell樣本拿出來使用，
    //其Identifier為cell1的樣本
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
    
    //透過viewWithTag:訊息，
    //找出Tag為100的view，
    //此100的view即是在cell樣本上的Label，
    //並自_contacts陣列取出對應位置的連絡人姓名，
    //設定為label上的文字
    UILabel * label = (UILabel*)[cell viewWithTag:100];
    [label setText:[_contacts objectAtIndex:[indexPath row]]];
    
    UIImageView *image = (UIImageView*)[cell viewWithTag:50];
    UIImage *img = [UIImage imageNamed:[_contacts objectAtIndex:[indexPath row]]];
    [image setImage:img];
    
    //設cell的背景色為blue
    [cell setBackgroundColor:[UIColor blueColor]];
    _selectedIndex = indexPath.row;
    //回傳cell
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] lastObject];
    
    NSString *tempString = [NSString stringWithFormat:@"%d",(int)indexPath.row];
    id secondcon = segue.destinationViewController;
    [secondcon setValue:tempString forKey:@"coffeeString"];
}



@end
