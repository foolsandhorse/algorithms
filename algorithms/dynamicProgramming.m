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

-(int)FibonacciRe:(int)n
{
    if(n == 0)
	  return 0;
    if(n == 1)
	  return 1;
    else
    {
	  int f = [self FibonacciRe:n-1] + [self FibonacciRe:n-2];
	  return f;
    }
    
}

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

-(void)printSubset:(NSMutableArray*)A withSubset:(int)K withStart:(int)start withCurentlength:(int)curr arrayused:(NSMutableArray*)sed
{
    if(curr == K )
	  {
	  for(int i = 0 ; i < A.count ; i++)
		{
		    if([[sed objectAtIndex:i] boolValue] == true)
		    {
			  NSLog(@"%@", [A objectAtIndex:i]);
		    }
		}
		return;
	  }
    if(start == A.count)
	  return;
    
    [sed replaceObjectAtIndex:start withObject:[NSNumber numberWithBool:true]];
    [self printSubset:A withSubset:K withStart:start+1 withCurentlength:curr+1 arrayused:sed];
    
    
    [sed replaceObjectAtIndex:start withObject:[NSNumber numberWithBool:false]];
    [self printSubset:A withSubset:K withStart:start+1 withCurentlength:curr arrayused:sed];
    
}

-(void)replacSpacewith:(NSMutableString *)s1 withLength:(int)length
{
    if(s1 == nil)
	  return;
    int spacecount = 0;
    for(int i = 0 ; i < s1.length ; i++)
	  {
		if([s1 characterAtIndex:i] == ' ')
		{
		    spacecount++;
		}
	  }
    int newLength = (int)s1.length + 2*spacecount;
    NSMutableString *newstring = [NSMutableString stringWithCapacity:newLength];
    for(int i = (int)s1.length-1 ; i >=0 ; i--)
    {
	  if([s1 characterAtIndex:i] == ' ')
	  {
	  [newstring replaceCharactersInRange:NSMakeRange(newLength-1, 1) withString:@"0"];
	  [newstring replaceCharactersInRange:NSMakeRange(newLength-2, 1) withString:@"2"];
	  [newstring replaceCharactersInRange:NSMakeRange(newLength-3, 1) withString:@"%"];
	  newLength = newLength-3;
	  }
	  else
	  {
	  [newstring replaceCharactersInRange:NSMakeRange(newLength-1,1) withString:[NSString stringWithFormat:@"%C",[s1 characterAtIndex:i]]];
	  newLength = newLength-1;
	  }
    }
}









@end










































