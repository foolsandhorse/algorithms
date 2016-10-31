//
//  dynamicProgramming.h
//  algorithms
//
//  Created by Norbert Henry on 10/26/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dynamicProgramming.h"
#import "Regular.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
	  Regular *newObject = [[Regular alloc]init];
	  NSMutableString *strin = [[NSMutableString alloc]init];
	
	  [strin appendString:[NSString stringWithFormat:@"%c",'a']];
	  [strin appendString:[NSString stringWithFormat:@"%c",'b']];
	  [strin appendString:[NSString stringWithFormat:@"%c",' ']];
	  [strin appendString:[NSString stringWithFormat:@"%c",'c']];
	  [strin appendString:[NSString stringWithFormat:@"%c",'a']];
	  [strin appendString:[NSString stringWithFormat:@"%c",'d']];
	  [strin replaceCharactersInRange:NSMakeRange(3, 1) withString:[NSString stringWithFormat:@"%c",'e']];
	  
	  
	  [newObject replacSpacewith:strin withLength:2];
	  [newObject removeDupsUsingHashSameString:strin];
	  
    }
    return 0;
}
