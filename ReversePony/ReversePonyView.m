//
//  ReversePonyView.m
//  ReversePony
//
//  Created by Jack Canty on 2/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#define LogSize(SIZE) NSLog(@"size: %0.0f x %0.0f", SIZE.width, SIZE.height)

#import "ReversePonyView.h"

@implementation ReversePonyView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/5.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
//    image = [[NSImage alloc] initWithContentsOfURL:[[NSURL alloc] initWithString:@"http://bubblespace.edublogs.org/files/2011/02/cute4-1nxm7s9.jpg"]];
    image = [[NSImage alloc] initWithContentsOfFile:@"/sq/ReversePony/ReversePony/ScreenShot.png"];

}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    NSRect imageRect;
    imageRect.origin = NSZeroPoint;
    imageRect.size = [image size];
    [image drawInRect:[self bounds] fromRect:imageRect operation:NSCompositeSourceOver fraction:1];

}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
