//
//  dynamicProgramming.h
//  algorithms
//
//  Created by Norbert Henry on 10/26/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dynamicProgramming.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
    dynamicProgramming *newObject = [[dynamicProgramming alloc] init];
	  NSMutableArray *A = [[NSMutableArray alloc] init];
	  [A addObject:[NSNumber numberWithInt:2]];
	  [A addObject:[NSNumber numberWithInt:3]];
	  [A addObject:[NSNumber numberWithInt:1]];
	  NSMutableArray *used = [[NSMutableArray alloc] init];
	  for ( int i = 0 ; i<[A count] ; i++)
	  {
		[used addObject:[NSNumber numberWithBool:false]];
	  }
	  [newObject printSubset:A withSubset:2 withStart:0 withCurentlength:0 arrayused:used];
	  [newObject replacSpacewith:@"this    is iy" withLength:10];
		
    }
    return 0;
}
