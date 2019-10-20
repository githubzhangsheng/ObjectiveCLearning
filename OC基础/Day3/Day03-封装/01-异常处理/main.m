//
//  main.m
//  01-异常处理
//
//  Created by a on 2019/6/28.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1. 什么是错误？
    一般情况下，错误指的是我们写的源代码不符合语法规范，然后编译错误。
    后果：程序无法编译
    解决：将不符合语法规范的代码改为符合语法规范的代码就可以了
 
 2. 什么是Bug？
    程序可以编译、链接、执行、程序执行的结果并不是我们所预想的那样。
    解决：通过调试寻找发生Bug的原因。
 
 3. 什么是异常？
    程序可以编译 链接 执行。
    当程序在执行的时候，处于某种特定条件下程序的执行就会终止。
 
    异常的后果：程序会立即崩溃。程序立即终止运行。并且后面的代码不会再执行。
 
 4. 如何处理异常
 
    1）目的：为了让程序在执行的时候如果发生了异常而不奔溃，而是继续往下执行。
    2）语法：
    @try
    {
 
    }
    @catch(NSException *ex)
    {
        将有可能发生异常的代码放在@try中
    }
    当@try中的代码在执行的时候，如果发生了异常，不会奔溃，而是会立即跳转到@catch中去执行里面的代码
    当@catch的代码执行完毕之后，结束@try...@catch往下执行
    如果@try中的代码在执行的时候没有发生异常，就会略过@catch往下执行
    3）当@try中的代码在执行功能的时候发生了异常，@try块发生异常的后面的代码不会执行，而是立即转到@catch
 
 5. @catch中的代码只有在@try的代码发生异常的时候才会执行
    所以，@catch中我们一般情况下写处理异常的代码。
    发生异常以后，要做什么事情。
 
 6. @catch 的参数 NSException *ex 对象通过%@打印出ex指向的对象的值，可以拿到发生异常的原因。
 
 7. @try..@catch后面还可以跟着一个@finally
    @finally中的代码无论@try中是否发生了异常都会被执行。
 
 8. @try..@catch并不是万能的，不是所有的运行时错误都是可以处理的。
    C语言的异常是根本无法处理的。
    在实际开发的过程中，使用@try用的相对的比较少。
    避免异常最常用的方式还是逻辑判断。
 
 
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @try
    {
        
    }
    @catch(NSException *ex)
    {
        NSLog(@"发生了异常");
    }
    @finally
    {
        NSLog(@"finally");
    }
    NSLog(@"over.");
    return 0;
}
