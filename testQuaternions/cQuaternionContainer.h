//
//  cQuaternionContainer.h
//  testQuaternions
//
//  Created by William Burgar on 14/06/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>

@interface cQuaternionContainer : NSObject

@property (nonatomic, assign) GLKQuaternion quaternion;

-(instancetype)initWithQuaternion:(GLKQuaternion)quaternion;

@end
