//
//  Person.m
//  06-@property
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}
-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}
-(void)sayHello
{
    NSLog(@"大家好。");
}
+(void)sayHi
{
    NSLog(@"大家好。");
}
@end
