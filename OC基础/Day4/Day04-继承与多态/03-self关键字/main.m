//
//  main.m
//  03-self关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1.在方法的内部可以定义一个和属性名相同的变量,这时候访问的时候函数内部的局部变量
    问题1：这时候想访问同名的属性咋办？
    问题2：在一个对象方法中要调用当前对象的另外一个对象方法在办？
 
 2. self:自己的
    和Java、C#中的this关键字有一点点像
    可以在对象方法和类方法中使用
 
    self是一个指针，在对象方法中self指向当前对象，在类方法中self指向当前类
 
 3. self用在对象方法中
    1）self在对象方法中，指向当前对象
    2）在对象方法中，self指向当前对象
        a. 可以使用self显示地访问当前对象的属性
            self->属性，代表访问的是当前对象的属性
        b. 可以使用self显示地访问当前对象的方法
            [self func]
    3）对象方法中使用self的场景
        1）必须使用self的场景
            -> 如果在方法中存在和属性同名的局部变量
            -> 在对象方法中，如果要调用当前对象的其他对象方法，必须使用self
        2）选用self的场景
            在方法中不存在和属性同名的局部变量，如果这个时候想要访问当前对象的属性
            用不用self效果都是一样的，都是访问的是当前对象的属性
 
        属性要求以下划线开头，局部变量不要求以下划线开头，按照规范来不会冲突的。
 
 4. 把self用在类方法当中
    1）类加载，当类第一次被访问的时候，会将类的代码存储在代码区
             代码区中用来存储类的空间也有一个地址
    2）在类方法中 self也是一个指针，指向当前这个类在代码段中的地址
       self 在类方法中就相当于是当前类
    3）总结：取到类在代码中的地址的方式
            a. 调试查看对象isa的值
            b. 在类方法中输出sef的值
            c. 调用对象的class 方法 [p1 class] 就会返回这个对象所属的类在代码段中的地址
            d. 调用类的类方法 class [Person class] 就会返回这个类在代码段中的地址
    4）有什么用？
        可以在类方法中使用self来显示的调用本类的其他的类方法
        使用建议:如果要在当前类方法中调用本类的其他方法，虽然可以直接使用类名，但是建议用self
 
 
 5. 对象方法可以声明多次，但是只会认为有一次
    对象方法如果有多次声明只能实现一次，否则就会报错
    对象方法之间是不能重名的
    类方法之间也是不能重名的
 
    但是，对象方法和类方法是可以重名的
 
    通过类名来调用就是类方法
    通过对象来调用就是对象方法
 
 
 6. 注意
    1）在对象方法中，self代表当前对象
       所以可以通过self访问当前对象的成员
 
       在对象方法中，不能使用self调用本类的的类方法
 
    2）在类方法中，self代表当前这个类
        所以可以通过self去调用当前类的其他方法
 
        在类方法当中，不能使用self访问对象的成员，不能直接访问属性和对象的方法。
 
    
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    p1->_name = @"小明";
    NSLog(@"%p", p1);
    [p1 sayHi];
    
    return 0;
}
