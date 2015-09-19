//
//  SettingsViewController.m
//  CardGameApp
//
//  Created by Nicky on 2014-07-18.
//  Copyright (c) 2014 NickySetia. All rights reserved.
//

#import "SettingsViewController.h"
#import "GameResult.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (IBAction)resetAllScores:(id)sender {
    [[NSUserDefaults standardUserDefaults] setObject: nil forKey:ALL_RESULTS_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
