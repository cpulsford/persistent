//
//  PersistentList.m
//  Sequence
//

#import "PersistentList.h"

@implementation PersistentList

@synthesize first = first_;

-(id)init
{
	if ((self = [super init])) {
		first_ = nil;
		count_ = 0;
	}
	
	return self;
}

-(id)initWithValue:(id)v
{
	if ((self = [super init])) {
		first_ = [[Node nodeWithValue:v] retain];
		count_ = 1;
	}
	
	return self;
}

-(id)initWithArray:(id)arr
{
//	if ((self = [super init])) {
//		count_ = [arr count];
//		first_ = [[Node nodeWithValue:[arr objectAtIndex:0]] retain];
//		Node *coll = first_;
//		for (int i = 1; i < [arr count]; i++) {
//			Node *temp = [[Node nodeWithValue:[arr objectAtIndex:0]] retain];
//			coll.next = temp;
//			coll = temp;
//		}
//	}
//	
	return self;
}

+(PersistentList*)list
{
	return [[[PersistentList alloc] init] autorelease];
}

+(PersistentList*)listWithValue:(id)v
{
	return [[[PersistentList alloc] initWithValue:v] autorelease];
}

+(PersistentList*)listWithArray:(id)arr
{
	return [[[PersistentList alloc] initWithArray:arr] autorelease];
}

-(NSUInteger)count
{
	return count_;
}

-(void)print
{
	NSLog(@"%@ %@", self.first.value, self.first.next.value);
}


@end

