//
//  Person.m
//  09-私有属性和私有方法
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    NSString *_name;
    int _age;
}
-(void)sayHi
{
    NSLog(@"hi");
}
-(void)sayHello
{
    [self sayHi];
}
@end
