//
//  ERPlayer.h
//  ERPlayer
//
//  Created by 王耀杰 on 16/4/5.
//  Copyright © 2016年 Erma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MPVolumeView.h>

@interface ERPlayer : UIView

typedef NS_ENUM(NSInteger, ERVideoLayerStyle) {
    ERVideoTop,
    ERVideoLowerLeftCorner,
    ERVideoLowerRightCorner,
    ERVideoRightUpperRightCorner,
    ERVideoRightUpperLeftCorner
};

- (void)setViedoUrl:(NSURL *)videoUrl;

//  销毁
- (void)removeSelf;

/** 视屏样式 */
@property (nonatomic, assign) ERVideoLayerStyle videoLayerStyle;


@end
