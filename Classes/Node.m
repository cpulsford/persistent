//
//  Node.m
//  Sequence
//

#import "Node.h"

@implementation Node

- (id)init
{
	return [self initWithValue:nil];
}


- (id)initWithValue:(id)v
{
	self = [super init];
	
	if (self) {
		next_ = nil;
		value_ = [v retain];
	}
	
	return self;
}

- (void)dealloc
{
	[next_ release];
	next_ = nil;
	[value_ release];
	value_ = nil;
	
	[super dealloc];
}

+ (Node*)nodeWithValue:(id)v
{
	return [[[Node alloc] initWithValue:v] autorelease];
}

+ (Node*)nodeWithNode:(Node*)n
{
	return [[[Node alloc] initWithValue:n.value] autorelease];
}

- (Node*)next
{
	return next_;
}

- (id)value
{
	return value_;
}

@end
