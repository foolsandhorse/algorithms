//
//  dynamicProgramming.h
//  algorithms
//
//  Created by Norbert Henry on 10/26/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>
extern int const max;

@interface dynamicProgramming : NSObject

-(int)FibonacciRe:(int)n;
-(int)FibonacciDynamicTopDown:(int)n;
-(int)fibarrayBottomUp:(int)n;

@end
