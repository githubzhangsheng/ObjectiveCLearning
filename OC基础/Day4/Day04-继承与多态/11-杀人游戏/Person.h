//
//  Person.h
//  11-杀人游戏
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
-(NSString *)name;
/*
 呼救的方法
 
 */
-(void)help;
@end
