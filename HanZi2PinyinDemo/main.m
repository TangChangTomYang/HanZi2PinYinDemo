//
//  main.m
//  HanZi2PinyinDemo
//
//  Created by yangrui on 2019/11/5.
//  Copyright © 2019 yangrui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+HanZi.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@",[@"中国成都" hanZiPinYin] );
        
    }
    return 0;
}
