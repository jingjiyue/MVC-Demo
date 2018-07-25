//
//  MNFileReadWriteClass.m
//  HCCF
//
//  Created by 梁宇航 on 2018/7/25.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import "MNFileReadWriteClass.h"

@implementation MNFileReadWriteClass

+ (BOOL)writeToFile:(NSString *)fileName content:(id)content{
    
    NSData *json = [content yy_modelToJSONData];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *Json_path=[path stringByAppendingPathComponent:fileName];
    MNLog(@"Json_path = %@",Json_path)
    
    //==写入文件
    BOOL result = [json writeToFile:Json_path atomically:YES];
    MNLog(@"save = %d, file = %@",result, Json_path)
    return result;
}


+ (id)getFileDatasWithFileName:(NSString *)fileName{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *Json_path = [path stringByAppendingPathComponent:fileName];
    
    MNLog(@"path = %@",Json_path)
    
    //==Json数据
    NSData *data=[NSData dataWithContentsOfFile:Json_path];
    //==JsonObject
    
    id jsonObject=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    MNLog (@"%@,path = %@",jsonObject,path);//打印json字典
    
    return jsonObject;
}
@end
