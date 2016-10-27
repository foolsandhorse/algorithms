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
-(void)printSubset:(NSMutableArray*)A withSubset:(int)K withStart:(int)Start withCurentlength:(int)curr arrayused:(NSMutableArray*)sed;
-(void)replacSpacewith:(NSMutableString*)s1 withLength:(int)length;


@end
