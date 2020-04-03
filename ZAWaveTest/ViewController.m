//
//  ViewController.m
//  ZAWaveTest
//
//  Created by 张奥 on 2020/4/3.
//  Copyright © 2020 张奥. All rights reserved.
//

#import "ViewController.h"
#import "ZAWaveView.h"
@interface ViewController ()
@property (nonatomic, strong)ZAWaveView *waveView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeCustom];
    startButton.frame = CGRectMake(50, 64, 60, 60);
    [startButton setTitle:@"开始" forState:UIControlStateNormal];
    startButton.backgroundColor = [UIColor redColor];
    startButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
    [startButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    startButton.layer.cornerRadius = 8.f;
    startButton.layer.masksToBounds = YES;
    [startButton addTarget:self action:@selector(clickStartButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeCustom];
    stopButton.frame = CGRectMake(200, 64, 60, 60);
    [stopButton setTitle:@"停止" forState:UIControlStateNormal];
    stopButton.backgroundColor = [UIColor redColor];
    stopButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
    [stopButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    stopButton.layer.cornerRadius = 8.f;
    stopButton.layer.masksToBounds = YES;
    [stopButton addTarget:self action:@selector(clickStopButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stopButton];
    
    
    self.view.backgroundColor = [UIColor blackColor];
    
    ZAWaveView *waveView = [[ZAWaveView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.waveView = waveView;
    waveView.color = [UIColor whiteColor];
    waveView.center = self.view.center;
    [self.view addSubview:waveView];
    
    
    UIImageView *avartImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100,100)];
    avartImageView.center = self.view.center;
    avartImageView.image = [UIImage imageNamed:@"dog.png"];
    avartImageView.layer.masksToBounds = YES;
    avartImageView.layer.cornerRadius = 50.f;
    [self.view addSubview:avartImageView];
    
    
}

-(void)clickStartButton{
    [self.waveView startWaveAnimationCircleNumber:3];
}

-(void)clickStopButton{
    [self.waveView stopwWaveAnimation];
}

@end
