//
//  NSString+HanZi.m
//  RGIndexTableView
//
//  Created by yangrui on 2019/11/4.
//  Copyright © 2019 yangrui. All rights reserved.
//

#import "NSString+HanZi.h"

 

@implementation NSString (HanZi)

-(NSString *)hanZiPinYin{
    // 初始化中文字符
    // 判断中文长度
    if (self.length > 0) {
        // 将中文字符串转成可变字符串
        NSMutableString *pinyinText = [[NSMutableString alloc] initWithString:self];

        // 先转换为带声调的拼音 // 输出 pinyin: zhōng guó sì chuān
        CFStringTransform((__bridge CFMutableStringRef)pinyinText, 0, kCFStringTransformMandarinLatin, NO);
         
        // 再转换为不带声调的拼音 // 输出 pinyin: zhong guo si chuan
        CFStringTransform((__bridge CFMutableStringRef)pinyinText, 0, kCFStringTransformStripDiacritics, NO);
        return pinyinText;
    }
    return self;
}
@end
