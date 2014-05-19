//
//  TTBlogPost.m
//  blog_reader
//
//  Created by Duff on 5/18/14.
//  Copyright (c) 2014 tiniestTime. All rights reserved.
//

#import "TTBlogPost.h"

@implementation TTBlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    if ( self ) {
        self.title = title;
    }
    return self;
}


+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}
@end
