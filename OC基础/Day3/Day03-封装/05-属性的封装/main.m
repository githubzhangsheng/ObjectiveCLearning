//
//  main.m
//  05-属性的封装
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1. 面向对象的三大特性是什么？
    封装
        函数就是一个封装的体现。
        类就是更高级别的封装。类将数据和行为封装为了一个整体。
        好处：
        -> 屏蔽内部的实现，外界不需要知道内部是如何实现的，只需要知道这个对象有什么用。
        -> 方便操作
        -> 后期的维护也十分的便利
 
    继承
        
    多态
 2. 存在的问题
    就是为对象的属性赋值的时候，语法上其实只要数据的类型是属性的类型就是可以的。
    但是，情理上这么做是不合适的
 
    解决的问题：为Person对象的属性 age 做一个逻辑验证 【1-200】
 
    如果为属性赋的值在这个逻辑范围内，那么我们就把这个值赋值给属性，否则我们就做默认处理。
 
 3. 实现需求
    1）将属性的@public去掉，因为一旦写上@public就意味着外界可以直接访问对象的这个属性，外界就可以任意地位这个属性赋值。
       去掉@public外界就无法直接访问这个属性，也就无法直接赋值了。
 
    2）为类提供一个方法，这个方法专门为这个属性赋值，这个方法叫做 setter
       a. 这个方法一定是一个对象方法，因为这个方法要为属性赋值
       b. 这个方法没有返回值
       c. 方法的名字必须以set开头加上属性名
       d. 这个方法有参数，参数的类型与属性类型一致
 
    3）为类提供一个方法，这个方法专门为这个属性取值并返回，这个方法叫 getter
        a. 这个方法有返回值
        b. 方法的名字直接是属性名
 
 4. 都是你的错
    1）属性封装记得去除@public
    2）需要遵守getter 和 setter 命名规范
 
 5. 什么时候需要为属性封装setter和getter？
    1）只要属性需要被外界访问，就要为这个属性封装setter和getter，哪怕在赋值和取值的时候没有任何逻辑验证。
    2）如果属性只在类的内部访问，那么就不需要为其封装getter setter
 
 6. 只读封装与只写封装
 
    只读封装：为属性封装的时候，只提供getter 不提供setter
    只写封装：为属性封装的时候，只提供setter 不提供getter
 
    
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    
    [p1 setAge:190];
  
    
    [p1 setName:@"小懂"];
    [p1 sayHi];
    
    NSLog(@"我的名字是%@，我的年龄是%d。",[p1 name],[p1 age]);
    
    return 0;
}
