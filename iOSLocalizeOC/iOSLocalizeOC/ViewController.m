//
//  ViewController.m
//  iOSLocalizeOC
//
//  Created by Allen Gao on 2019/1/22.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "ViewController.h"

#import "ViewController.h"
#import "ALLanguageManager.h"
#import "LanguageSettingController.h"


@interface ViewController () <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    NSArray *data;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *bottomLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomRightLabel;
@property (weak, nonatomic) IBOutlet UIButton *imagePickerButton;

@property (nonatomic) UIImagePickerController *imagePickerController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.bottomLeftLabel.text = NSLocalizedString(@"Happy New Year", @"");
    self.bottomRightLabel.text = @"ПТНПНХ";
}

#pragma mark - UIImagePickerController

- (IBAction)imagePickerButton:(UIButton *)sender
{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.modalPresentationStyle = UIModalPresentationCurrentContext;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePickerController.delegate = self;
    
    self.imagePickerController = imagePickerController;
    [self presentViewController:self.imagePickerController animated:YES completion:nil];
}


- (IBAction)languageSettginBtnAction:(UIButton *)sender {
    [self.navigationController pushViewController:[[LanguageSettingController alloc]init] animated:YES];
}


- (IBAction)alertAction:(UIButton *)sender {
    
    NSLocalizedString(@"Happy New Year", @"");
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: NSLocalizedString(@"Greeting", @"") message:NSLocalizedString(@"Happy New Year", @"") preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle: NSLocalizedString(@"Confirm", @"") style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:NULL];
    self.imagePickerController = nil;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
