//
//  SportsProtocol.h
//  08-协议的基本使用
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SportsProtocol <PlayProtocol>

-(void)climb;

@end

NS_ASSUME_NONNULL_END
