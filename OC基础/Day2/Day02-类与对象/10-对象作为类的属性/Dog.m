//
//  Dog.m
//  10-对象作为类的属性
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)sayHi{
    NSLog(@"旺旺，我叫%@，是一条%@的狗。",_name,_color);
}
@end
