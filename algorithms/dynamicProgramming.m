//
//  dynamicProgramming.m
//  algorithms
//
//  Created by Norbert Henry on 10/26/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "dynamicProgramming.h"
int const max = 1000;
int fibarray[max] = {0};

@interface dynamicProgramming ()
{
    NSMutableArray *fib;
}
@property(nonatomic,copy)NSMutableArray  *fib;
@end

@implementation dynamicProgramming
@synthesize fib;

#pragma Fibonacci
-(int)FibonacciRe:(int)n
{
    if(n == 0)
	  return 0;
    if(n == 1)
	  return 1;
    else
	  return [self FibonacciRe:n-1] + [self FibonacciRe:n-2];
}


/*
 
 */
-(int)FibonacciDynamicTopDown:(int)n
{
    if(n == 0)
	  return 0;
    if(n == 1)
	  return 1;
    //if(fibarray[n] != 0)
	  //return fibarray[n];
    if ([[fib objectAtIndex:n] intValue] != 0)
	  return [[fib objectAtIndex:n]intValue];
    else
	  {
	  [fib insertObject:[NSNumber numberWithInt:[self FibonacciDynamicTopDown:n-1] + [self FibonacciDynamicTopDown:n-2]] atIndex:n];
	  return [[fib objectAtIndex:n]intValue];
	  }
}

-(int)fibarrayBottomUp:(int)n
{
    int fibarry[n+1];
    fibarry[0] = 0;
    fibarry[1] = 1;
    for(int i=2; i<=n; i++)
    {
	  fibarry[i] = fibarry[i-1] + fibarry[i-2];
    }
    return fibarry[n];
    
}

@end
