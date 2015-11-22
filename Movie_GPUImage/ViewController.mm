//
//  ViewController.m
//  Movie_GPUImage


#import "ViewController.h"
#import <GPUImage/GPUImage.h>

@interface ViewController (){
    // Setup the view (this time using GPUImageView)
    GPUImageView *videoView_;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  videoCamera = [[GPUImageVideoCamera alloc]
                                        initWithSessionPreset:AVCaptureSessionPreset640x480
                                        cameraPosition:AVCaptureDevicePositionBack];
    
    videoCamera.outputImageOrientation = UIInterfaceOrientationPortrait;
    
    //filter = [[GPUImageSepiaFilter alloc] init];
   // filter = [[GPUImageMotionDetector alloc] init];
  
    
  
   // Car *toyota = [[Car alloc] init];
    
    detector = [[GPUImageMotionDetector alloc] init];
    
    
    
    //[filter setIntensity: 0.5];
    
    GPUImageView *filteredVideoView = [[GPUImageView alloc] initWithFrame:self.view.frame];
    
    [videoCamera addTarget:detector];
    
    [detector addTarget:filteredVideoView];
    
    [self.view addSubview:filteredVideoView];
    
    [videoCamera startCameraCapture];
    
    /*
     // Setup GPUImageView (not we are not using UIImageView here).........
    videoView_ = [[GPUImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    // Important: add as a subview
    [self.view addSubview:videoView_];
    
    // Set the movie file to read
    NSURL *sampleURL = [[NSBundle mainBundle] URLForResource:@"simon" withExtension:@"mov"];
    
    GPUImageMovie *movieFile = [[GPUImageMovie alloc] initWithURL:sampleURL];
    movieFile.runBenchmark = NO;
    movieFile.playAtActualSpeed = YES;
    
    // Initialize filters
    GPUImageSepiaFilter *sepiaFilter = [[GPUImageSepiaFilter alloc] init];
    
    // Daisy chain the filters together (you can add as many filters as you like)
    [movieFile addTarget:sepiaFilter];
    [sepiaFilter addTarget:videoView_];
    
    // Rotates the video right so it displays properly
    [sepiaFilter setInputRotation:kGPUImageRotateRight atIndex:0];
    
    // Process the movie
    [movieFile startProcessing];
      */
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
