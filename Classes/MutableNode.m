//
//  MutableNode.m
//  persistent
//

#import "MutableNode.h"


@implementation MutableNode

- (void)setNext:(Node *)next
{
	if (next_ != next) {
		[next retain];
		[next_ release];
		next_ = next;		
	}
}

- (void)setValue:(id)value
{
	if (value_ != value) {
		[value retain];
		[value_ release];
		value_ = value;		
	}
}

@end
