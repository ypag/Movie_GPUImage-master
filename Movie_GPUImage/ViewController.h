//
//  ViewController.h
//  Movie_GPUImage
//

//

#import <UIKit/UIKit.h>
#import <GPUImage/GPUImage.h>

@interface ViewController : UIViewController
{
    GPUImageVideoCamera *videoCamera;
    GPUImageOutput<GPUImageInput> *filter;
    GPUImageMovieWriter *movieWriter;
    GPUImageMotionDetector *detector;
}


@end

