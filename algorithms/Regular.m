//
//  Regular.m
//  algorithms
//
//  Created by Norbert Henry on 10/28/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "Regular.h"

@implementation Regular

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
