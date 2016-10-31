//
//  Regular.m
//  algorithms
//
//  Created by Norbert Henry on 10/28/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "Regular.h"

@implementation Regular

-(NSMutableString*)removeDupUsingHash:(NSMutableString *)str
{
    NSMutableArray *hash = [[NSMutableArray alloc] initWithCapacity:256];
    NSMutableString *outp = [[NSMutableString alloc]init];
    Boolean dup;
    for(int i = 0; i < 256 ; i++)
	  {
	  [hash addObject:[NSNumber numberWithBool:false]];
	  }
    for(int i = 0 ; i<(int)str.length ; i++)
	  {
	  char temp = [str characterAtIndex:i];
	  if([[hash objectAtIndex:temp] boolValue] == false)
		{
		[outp appendString:[NSString stringWithFormat:@"%C", [str characterAtIndex:i]]];
		[hash replaceObjectAtIndex:temp withObject:[NSNumber numberWithBool:true]];
		}
	  else
		{
		dup = true;
		}
	  }
    return outp;
}

-(NSMutableString*)removeDupsUsingHashSameString:(NSMutableString *)strin
{
    NSMutableArray *hash = [[NSMutableArray alloc] initWithCapacity:256];
    int innercount = 0;
    for(int i = 0 ; i < 256 ; i++)
	  {
	  [hash addObject:[NSNumber numberWithBool:false]];
	  }
    for( int i = 0; i < (int)strin.length; i++)
	  {
	  char temp = [strin characterAtIndex:i];
	  if([[hash objectAtIndex:temp]boolValue] == false)
	  {
	  [hash replaceObjectAtIndex:temp withObject:[NSNumber numberWithBool:true]];
	  [strin replaceCharactersInRange:NSMakeRange(innercount, 1) withString:[NSString stringWithFormat:@"%C", [strin characterAtIndex:i]]];
	  innercount++;
	  }
	  }
    [strin replaceCharactersInRange:NSMakeRange(innercount, 1) withString:@"\n"];
    return strin;
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
    for(int i = 0 ; i < newLength ; i ++)
    {
	  [newstring appendString:[NSString stringWithFormat:@"%c",'a']];
    }
    for(int i = (int)s1.length-1 ; i >=0 ; --i)
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
