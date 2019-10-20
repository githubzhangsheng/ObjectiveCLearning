//
//  main.m
//  02-延展
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 延展 ： Extension
    1）是一个特殊的分类，所以延展也是类的一部分。
    2）特殊之处：
        a. 延展这个特殊的分类没有名字。
        b. 只有声明没有实现，和本类共享一个实现。
 
 2. 延展的语法
    语法：
    @interface 本类名 （）
    @end
 
    没有实现，和本类共享一个实现。
 
 3. 为类添加延展的步骤
    只有一个 .h 文件，文件名称：本类名+文件名.h
    这个文件中只有延展的声明
     @interface Person ()
 
     @end
 
 4. 延展的基本使用
    1）延展的本质是一个分类，作为本类的一部分
        只不过是一个特殊的类
        没有名字
    2）延展只有声明，没有单独的实现，和本类共享一个实现。
 
5. 延展和分类的区别
    1)分类有名字，延展没有名字（或者说是匿名的分类）
    2）每一个分类都一个单独的声明和实现，而延展只有声明，没有单独的实现，和本类共享一个实现。
    3）分类当中只能新增方法，而延展中任意的成员都可以写（包括私有属性）。
    4）分类中可以写@property，但是只会生成getter setter的声明。
        延展当中写@property，会自动生成私有属性，也会生成getter、setter的声明和实现（代码生成在本类的实现当中）

 6. 延展的应用场景
    1）要为类写一个私有的@property
        生成的getter、setter方法只能在类的内部访问，不能在外部访问.
        其实，只要@property生成私有属性，生成getter、setter的实现，不要声明即可。
 
    2) 延展100%的情况下不会独占一个文件。都是将延展直接写在本类的实现文件当中。
        这个时候，写在延展中的成员，就相当于是这个类的私有成员，只能在本类的实现中访问。
        外部不能访问
    3) 什么时候使用延展？
        当我们想要为类定义私有成员的时候，就可以使用延展，将延展定义在这个类的实现当中。
        如果想要为类写一个真私有属性，虽然我们可以定义在@implementation之中。但是不要这么写，因为这样写不规范。
        写一个延展，将这个私有属性定义在延展当中。
 
        如果要为类写一个私有的方法，建议将声明写在延展中，实现写在本类的实现当中。提高代码的阅读性。
 
        如果想要为类写一个私有的@property就直接写在延展当中就可以了
 
    4） 所以延展天生就是来私有化类的成员的
        如果类的成员只希望在类的内部访问，那么就将其定义在延展中
        如果类的成员允许被外界访问，定义在本类的@interface当中。
        
 
 */
#import <Foundation/Foundation.h>
#import "Person+itcast.h"
#import "Student.h"
#import "Girl.h"

int main(int argc, const char * argv[]) {
//    案例1
//    Person *p1 = [Person new];
//    p1.weight = 45.5f;
//    NSLog(@"p1.weight = %f",p1.weight);
//    [p1 sayHi];
//    [p1 run];
//    [p1 sleep];
//
//    Student *s1 = [Student new];
//    [s1 sayHi];
    
    
//    案例2
    
    Girl *g1 = [Girl new];
    [g1 show];
    
    return 0;
}
