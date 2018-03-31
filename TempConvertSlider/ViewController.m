//
//  ViewController.m
//  TempConvertSlider
//
//  Created by Mick Sexton on 3/30/18.
//  Copyright © 2018 Mick Sexton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)SliderAction:(id)sender {
    // pull F temp from slider value
    double fahrenheitResult = self.sliderOutlet.value;
    // convert F to C
    double celsiusResult = (fahrenheitResult - 32) / 1.8;
    
    // format String text to display from F and C results
    NSString *fahrenheitDisplay = [[NSString alloc] initWithFormat:@"%4.1f fahrenheit", fahrenheitResult];
    NSString *celsiusDisplay = [[NSString alloc] initWithFormat:@"%4.1f celsius", celsiusResult];
    
    // assign formatted Strings to labels
    self.fahrenheitLabel.text = fahrenheitDisplay;
    self.celsiusLabel.text = celsiusDisplay;
}
@end
