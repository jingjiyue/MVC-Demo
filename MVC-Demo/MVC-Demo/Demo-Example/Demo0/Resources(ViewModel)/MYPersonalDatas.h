//
//  MYPersonalDatas.h
//  HCCF
//
//  Created by Lyh on 2018/1/30.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LFMineHomeDatasModel;
@interface MYPersonalDatas : MNBaseDatas

+ (NSArray *)getLocalDatas;

+ (NSArray *)setHttpDatas:(LFMineHomeDatasModel *)dataModel;

@end
