//
//  main.m
//  02-内存管理概述
//
//  Created by a on 2019/10/10.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 内存管理
 内存的作用：存储数据
 1）如何将数据存储到内存之中
 声明一个变量，然后将数据存储进去。
 
 2）当数据不再被使用的时候，占用的内存空间如何被释放
 
 
 2. 内存中的五大区域
 栈：局部变量,当局部变量的作用域被执行完毕之后，这个局部变量就会被系统立即回收。
 堆：OC对象、使用C函数申请的动态空间，
 BSS段(block started by symbol)：
 + 用来存放程序中未初始化或初始化为0的全局变量和静态变量的一块内存区域，特点是可读写，一旦初始化就回收，并转存到数据段之中
 + 程序执行之前会自动清零，未初始化的全局变量在程序执行之前就已经成0了
 
 数据段：已经初始化的全局变量，静态变量，直到程序结束的时候才会被回收
 代码段：代码，程序结束的时候，系统会自动回收存储在代码段中的数据。
 
 栈、BSS段、数据段、代码段存储在它们中的数据的回收是由系统自动完成的。不需要我们干预。
 
 3. 分配在堆区中的OC对象，是肯定需要回收的。
    iPhone 内存机制，超出内存限制的大小后，程序就会发生闪退。
    存储在堆中的OC对象，系统不会自动回收。直到程序结束的时候才会被回收
 
 4. 内存管理的范围：只需要管理存储在堆中的OC对象的回收，其他区域中数据的回收是系统自动管理的。
 
 5. 对象应该什么时候被回收？
    当有人使用这个对象的时候，这个对象不能被回收
    只有在没有任何人使用这个对象的时候，才可以回收
 
 6. 引用计数器
    1）每一个对象都有一个属性，叫做 retainCount,叫做引用计数器（默认值是1），类型是 unsigned long 占 8 个字节
        引用计数器的作用：用来记录这个对象有多少人在使用它。
        默认情况下，创建一个对象出来，这个对象的引用计数器的默认值为1
    2）当多一个人使用这个对象的时候，应该先让这个对象的引用计数器+1，代表这个对象多一个人使用
    3）当这个对象少一个人使用的时候，应该先让这个对象的引用计数器的值-1，代表这个对象少一个人使用
    4）当这个对象的引用计数器变为0的时候，代表这个对象无人使用，这个时候系统就会自动回收这个对象。
 
 7. 如何操作引用计数器
    1）为对象发送一条 retain 消息，对象的引用计数器就会加一，当多一个人使用对象的时候才发。
    2）为对象发送一条 release 消息，对象的引用计数器的值就会减一，当少一个人使用对象的时候才发。
    3）为对象发送一条 retainCount 消息，就可以取到对象的引用计数器的值
    当对象的引用计数器变为0的时候，对象就会被系统立即回收。
    在对象被回收的时候，会自动调用对象的 dealloc 方法。
 8. 内存管理的分类
    MRC： Manual Reference Counting 手动引用计数，手动内存管理
         当多一个人使用对象的时候，要求程序员手动地发送retain消息，当少一个人使用的时候，程序员手动地发送release消息
 
    2011年之前 iOS5之前
    ARC：Automatic Reference Counting 自动引用计数，自动内存管理
        系统自动地在合适的地方发送retain release 消息
    我们今天学习的是MRC。
 
    学习 MRC 的理由：
    1）面试必考 100%
    2）早期的APP开发使用的是MRC技术
    3）iOS大牛都是从MRC成长起来的，方便交流
    4）ARC是基于MRC的
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(){
    Person *p1 = [[Person alloc] init];
    p1.name = @"jack";
    p1.age = 10;
    
    return 0;
    
}
