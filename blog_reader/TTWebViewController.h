//
//  TTWebViewController.h
//  blog_reader
//
//  Created by Duff on 5/20/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTWebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSURL *blogPostURL;

@end
