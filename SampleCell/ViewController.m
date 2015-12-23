//
//  ViewController.m
//  SampleCell
//
//  Created by Santhosh on 22/12/15.
//  Copyright (c) 2015 Santhosh. All rights reserved.
//

#import "ViewController.h"

#import "TableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) TableViewCell *heightCell;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"CellId"];
    
    _heightCell = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:nil options:nil] firstObject];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    
    cell.titleLabel.text = @"Under Build Settings, in Packaging, make sure the Defines Module setting for that framework target is set to Yes. Import the Swift code from that framework target into any Objective-C .m file within that framework target using this syntax and substituting the appropriate names:";
    
    return cell;
}

#pragma mark - 

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    _heightCell.titleLabel.text = @"Under Build Settings, in Packaging, make sure the Defines Module setting for that framework target is set to Yes. Import the Swift code from that framework target into any Objective-C .m file within that framework target using this syntax and substituting the appropriate names:";

    [_heightCell setNeedsLayout];
    [_heightCell layoutIfNeeded];
    
    CGFloat height = _heightCell.titleLabel.frame.size.height;
    return height;
}
@end
