//
//  Regular.h
//  algorithms
//
//  Created by Norbert Henry on 10/28/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Regular : NSObject

-(void)printSubset:(NSMutableArray*)A withSubset:(int)K withStart:(int)Start withCurentlength:(int)curr arrayused:(NSMutableArray*)sed;
-(void)replacSpacewith:(NSMutableString*)s1 withLength:(int)length;
-(NSMutableString*)removeDupUsingHash:(NSMutableString*)str;
-(NSMutableString*)removeDupsUsingHashSameString:(NSMutableString*)strin;

@end
