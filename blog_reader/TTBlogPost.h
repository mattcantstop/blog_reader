//
//  TTBlogPost.h
//  blog_reader
//
//  Created by Duff on 5/18/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTBlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

- (id) initWithTitle:(NSString *)title;
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) thumbnailURL;
- (NSString *) formattedDate;

@end
