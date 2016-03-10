//
//  ViewController.m
//  ZHCycleView
//
//  Created by AdminZhiHua on 16/2/23.
//  Copyright © 2016年 AdminZhiHua. All rights reserved.
//

#import "ViewController.h"
#import "ZHCycleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *images = @[@"http://picture.swwy.com/MGVhZmE2MTY2YjI0NDg.jpg?imageView2/0/w/360/h/200/format/jpg/q/100",@"http://picture.swwy.com/OGQ0ODY4YzUyNDc2NDd.jpg?imageView2/0/w/360/h/200/format/jpg/q/100",@"http://picture.swwy.com/YzczZjg1ZDE5ZTY2NDM.jpg?imageView2/0/w/360/h/200/format/jpg/q/100",@"http://picture.swwy.com/MDhlMzYwZGZmNDNkNGV.jpg?imageView2/0/w/360/h/200/format/jpg/q/100"];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    ZHCycleView *cycleView = [ZHCycleView cycleViewWithFrame:CGRectMake(0, 100, size.width, 200) imageUrlGroups:images placeHolderImage:[UIImage imageNamed:@"placeImage"] selectAction:^(NSInteger index) {
    
        NSLog(@"%ld",index);
        
    }];
    
    cycleView.autoScrollTimeInterval = 1;
    
    cycleView.currentPageTintColor = [UIColor redColor];
    
    [self.view addSubview:cycleView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
