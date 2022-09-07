//
//  TDWDynamicHeightTableViewCell.m
//  DynamicHeightCell
//
//  Created by Aleksandr Medvedev on 07.09.2022.
//

#import "TDWDynamicHeightTableViewCell.h"

@interface TDWDynamicHeightTableViewCell ()

@property (weak, readwrite, nonatomic) UIStackView *stackView;

@end

@implementation TDWDynamicHeightTableViewCell

+ (NSString *)classReuseIdentifier {
    return @"TDWDynamicHeightTableViewCell";
}

#pragma mark Lifecycle

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *_Nullable)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIStackView *stackView = [[UIStackView alloc] initWithFrame:CGRectZero];
        stackView.axis = UILayoutConstraintAxisVertical;
        stackView.translatesAutoresizingMaskIntoConstraints = NO;
        NSLayoutConstraint *minHeightConstraint = [stackView.heightAnchor constraintGreaterThanOrEqualToConstant:16];
        minHeightConstraint.priority = UILayoutPriorityDefaultHigh;
        
        [self.contentView addSubview:stackView];
        [NSLayoutConstraint activateConstraints:@[
            [NSLayoutConstraint constraintWithItem:stackView
                                         attribute:NSLayoutAttributeTop
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:self.contentView
                                         attribute:NSLayoutAttributeTopMargin
                                        multiplier:1
                                          constant:8],
            
            [NSLayoutConstraint constraintWithItem:stackView
                                         attribute:NSLayoutAttributeLeading
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:self.contentView
                                         attribute:NSLayoutAttributeLeadingMargin
                                        multiplier:1
                                          constant:0],
            
            [NSLayoutConstraint constraintWithItem:stackView
                                         attribute:NSLayoutAttributeBottom
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:self.contentView
                                         attribute:NSLayoutAttributeBottomMargin
                                        multiplier:1
                                          constant:0],
            
            [NSLayoutConstraint constraintWithItem:stackView
                                         attribute:NSLayoutAttributeTrailing
                                         relatedBy:NSLayoutRelationEqual
                                            toItem:self.contentView
                                         attribute:NSLayoutAttributeTrailingMargin
                                        multiplier:1
                                          constant:0],
            minHeightConstraint
        ]];
        stackView.backgroundColor = UIColor.greenColor;
        _stackView = stackView;
    }
    return self;
}

@end
