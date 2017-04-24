//
//  ViewController.m
//  视频播放器-Demo
//
//  Created by 王力 on 2017/4/24.
//  Copyright © 2017年 王力. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

#import "ERPlayer.h"

@interface ViewController ()

@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) MPMoviePlayerController *mpc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.url = [NSURL URLWithString:@"http://61.155.167.13/data2/video09/2017/04/24/4596648-102-008-0716.mp4"];
}

- (IBAction)mpcClick:(id)sender {
    self.mpc = [[MPMoviePlayerController alloc] initWithContentURL:self.url];
    self.mpc.view.frame = CGRectMake(0, 200, 414, 200);
    [self.view addSubview:self.mpc.view];
    [self.mpc play];
}

- (IBAction)mpvcClick:(id)sender {
    MPMoviePlayerViewController *moviePlayer = [[MPMoviePlayerViewController alloc] initWithContentURL:self.url];
    [self presentMoviePlayerViewControllerAnimated:moviePlayer];
}

- (IBAction)avPlayerClick:(id)sender {
    AVPlayer *player = [AVPlayer playerWithURL:self.url];
    AVPlayerLayer *playLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:playLayer];
    [player play];
}

- (IBAction)erPlayerClick:(id)sender {
    ERPlayer *erPlay = [[ERPlayer alloc] init];
    [erPlay setViedoUrl:self.url];
    erPlay.frame = self.view.bounds;
    [self.view addSubview:erPlay];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
