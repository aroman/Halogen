//
//  ARKitViewController.m
//  HoloKinect
//
//  Created by Krishna Bharathala on 7/29/17.
//  Copyright © 2017 Krishna Bharathala. All rights reserved.
//

#import "ARKitViewController.h"

@interface ARKitViewController () <ARSCNViewDelegate>

@property (nonatomic, strong) ARSCNView *sceneView;
@property (nonatomic, strong) SCNScene *scene;
@property (nonatomic, strong) UILabel *label;

@property (nonatomic) BOOL planeFound;

@end

@implementation ARKitViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self setupLabel];
    [self setupSceneView];
    
    self.sceneView = [[ARSCNView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview: _sceneView];
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightSwipe];
}

- (void)didSwipe:(UISwipeGestureRecognizer*) swipe {
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self setupScene];
    [self startSession];
    
    // Setting up the navigation bar
    [self.navigationController.navigationBar setHidden:YES];
    self.navigationController.navigationItem.backBarButtonItem = nil;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.sceneView.session pause];
}
- (void)setupSceneView
{
    self.sceneView.delegate = self;
    self.sceneView.autoenablesDefaultLighting = YES;
}

- (void)setupScene
{
    self.scene = [SCNScene new];
    self.sceneView.scene = self.scene;
}

//- (void)setupLabel
//{
//    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height * 0.5, self.view.frame.size.width - 20, 40)];
//    self.label.numberOfLines = 0;
//    self.label.textAlignment = NSTextAlignmentCenter;
//    self.label.font = [UIFont systemFontOfSize:16];
//    [self.view addSubview:self.label];
//    self.label.text = @"FIND A DANCEFLOOR.";
//}

- (void)startSession
{
    ARWorldTrackingSessionConfiguration *configuration = [ARWorldTrackingSessionConfiguration new];
    configuration.planeDetection = ARPlaneDetectionHorizontal;
    configuration.worldAlignment = ARWorldAlignmentGravityAndHeading;
    [self.sceneView.session runWithConfiguration:configuration];
}

- (void)showDiscoBallWithAncor:(ARPlaneAnchor *)anchor onNode:(SCNNode *)node
{
//    SCNNode *plane = [self planeFromAnchor:anchor];
//    SCNNode *discoBall = [self discoBall];
//
//    NSArray *colors = @[[UIColor yellowColor],
//                        [UIColor redColor],
//                        [UIColor greenColor],
//                        [UIColor blueColor],
//                        [UIColor purpleColor],
//                        [UIColor magentaColor],
//                        [UIColor orangeColor],
//                        [UIColor cyanColor]];
//
//    for (NSInteger i = 0; i < 30; i++) {
//        UIColor *color = colors[arc4random() % colors.count];
//        SCNNode *lightBeam = [self lightBeamOfColor:color];
//        lightBeam.rotation = SCNVector4Make([self randomFloat], [self randomFloat], [self randomFloat], (M_PI * 0.5) * (CGFloat)((arc4random() % 3) + 1));
//        [discoBall addChildNode:lightBeam];
//    }
    
//    CABasicAnimation *rotation = [self rotationAnimation];
//    [discoBall addAnimation:rotation forKey:@"rotation"];
//    [plane addChildNode:discoBall];
//    [node addChildNode:plane];
}

#pragma mark - Utils

#pragma mark - Node builders

- (SCNNode *)planeFromAnchor:(ARPlaneAnchor *)anchor
{
    SCNPlane *plane = [SCNPlane planeWithWidth:anchor.extent.x height:anchor.extent.z];
    plane.firstMaterial.diffuse.contents = [UIColor clearColor];
    SCNNode *planeNode = [SCNNode nodeWithGeometry:plane];
    planeNode.position = SCNVector3Make(anchor.center.x, 0, anchor.center.z);
    planeNode.transform = SCNMatrix4MakeRotation(-M_PI * 0.5, 1, 0, 0);
    
    return planeNode;
}

#pragma mark - ARSCNViewDelegate

- (void)renderer:(id <SCNSceneRenderer>)renderer didAddNode:(SCNNode *)node forAnchor:(ARAnchor *)anchor;
{
//    if (self.planeFound == NO)
//    {
//        if ([anchor isKindOfClass:[ARPlaneAnchor class]])
//        {
//            dispatch_async(dispatch_get_main_queue(), ^{
//                self.planeFound = YES;
//                self.label.text = @"DANCEFLOOR FOUND. LET'S BOOGIE";
//
//                UIView *overlay = [[UIView alloc] initWithFrame:self.view.frame];
//                overlay.backgroundColor = [UIColor blackColor];
//                overlay.alpha = 0;
//                [self.view insertSubview:overlay belowSubview:self.label];
//
//                [UIView animateWithDuration:1.5 delay:2 options:UIViewAnimationOptionCurveEaseIn animations:^{
//                    self.label.alpha = 0;
//                    overlay.alpha = 0.5;
//                } completion:^(BOOL finished) {
//                    ARPlaneAnchor *planeAnchor = (ARPlaneAnchor *)anchor;
//                    [self showDiscoBallWithAncor:planeAnchor onNode:node];
//                }];
//            });
//        }
//    }
}

- (void)session:(ARSession *)session didFailWithError:(NSError *)error
{
}

- (void)sessionWasInterrupted:(ARSession *)session
{
}

- (void)sessionInterruptionEnded:(ARSession *)session
{
}



@end
