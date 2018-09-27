//
//  BasicGreeter.m
//  DynaLoader
//
//  Created by 唐仁于 on 2018/9/13.
//  Copyright © 2018 唐仁于. All rights reserved.
//

#import "BasicGreeter.h"

@implementation BasicGreeter

-(NSString *)greeting:(NSString *)salutation
{
    
    return [NSString stringWithFormat:@"%@ world!",salutation];
}


@end
