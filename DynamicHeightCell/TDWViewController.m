//
//  ViewController.m
//  DynamicHeightCell
//
//  Created by Aleksandr Medvedev on 07.09.2022.
//

#import "TDWViewController.h"
#import "TDWDynamicHeightTableViewCell.h"

@interface TDWViewController ()

@end

@implementation TDWViewController

#pragma mark Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerClass:TDWDynamicHeightTableViewCell.class
           forCellReuseIdentifier:TDWDynamicHeightTableViewCell.classReuseIdentifier];
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 64;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TDWDynamicHeightTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TDWDynamicHeightTableViewCell.classReuseIdentifier
                                                                          forIndexPath:indexPath];
    for (UIView *arrangedSubview in cell.stackView.arrangedSubviews) {
        [arrangedSubview removeFromSuperview];
    }
    
    for (typeof(indexPath.row) i = 0; i <= indexPath.row; ++i) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.text = [NSString stringWithFormat:@"Label #%ld", i];
        [cell.stackView addArrangedSubview:label];
    }
    return cell;
}



@end
