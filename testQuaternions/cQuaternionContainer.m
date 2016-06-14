//
//  cQuaternionContainer.m
//  testQuaternions
//
//  Created by William Burgar on 14/06/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//

#import "cQuaternionContainer.h"

@implementation cQuaternionContainer

-(instancetype)initWithQuaternion:(GLKQuaternion)quaternion {
    
    self = [super init];
    if (self) {
        self.quaternion = quaternion;
    }
    return self;
}


@end
