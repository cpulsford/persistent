//
//  Node.h
//  Sequence
//

#import <Foundation/Foundation.h>

@interface Node : NSObject {
	Node *next_;
	id value_;
}

-(id)initWithValue:(id)v;

+(Node*)nodeWithValue:(id)v;
+(Node*)nodeWithNode:(Node*)n;

- (Node*)next;
- (id)value;


@end

