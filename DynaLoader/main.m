//
//  main.m
//  DynaLoader
//
//  Created by 唐仁于 on 2018/9/13.
//  Copyright © 2018 唐仁于. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicGreeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        id<Greeter> greeter = [[BasicGreeter alloc]init];
        NSLog(@"Hello");
        
        NSString *bundlePath;
        if (argc != 2) {
            NSLog(@"没有路径");
        }else{
            bundlePath = [NSString stringWithUTF8String:argv[1]];
            NSBundle *greeterBundle = [NSBundle bundleWithPath:bundlePath];
            
            if (greeterBundle == nil) {
                NSLog(@"没找到路径");
            }else{
                //以动态包的方式加载
                NSError *error;
                BOOL isLoaded = [greeterBundle loadAndReturnError:&error];
                if (!isLoaded) {
                    NSLog(@"error = %@",[error localizedDescription]);

                }else{
                    Class greeterClass = [greeterBundle classNamed:@"CustomGreeter"];
                    greeter = [[greeterClass alloc]init];
                    
                    NSLog(@"%@",[greeter greeting:@"Hello"]);
                    
                    greeter = nil;
                    BOOL isUnloaded = [greeterBundle unload];
                    if (!isUnloaded) {
                        NSLog(@"卸载包失败");
                    }
                }
            }
        }
    }
    return 0;
}











