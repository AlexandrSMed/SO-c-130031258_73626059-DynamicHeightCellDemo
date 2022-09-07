//
//  TDWDynamicHeightTableViewCell.h
//  DynamicHeightCell
//
//  Created by Aleksandr Medvedev on 07.09.2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TDWDynamicHeightTableViewCell : UITableViewCell

@property(class, copy, readonly, nonatomic) NSString *classReuseIdentifier;
@property(weak, readonly, nonatomic) UIStackView *stackView;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *_Nullable)reuseIdentifier;

@end

NS_ASSUME_NONNULL_END
