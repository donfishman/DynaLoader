//
//  Greeter.h
//  DynaLoader
//
//  Created by 唐仁于 on 2018/9/13.
//  Copyright © 2018 唐仁于. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Greeter <NSObject>

-(NSString *)greeting:(NSString *)salutation;

@end
