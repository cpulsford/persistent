//
//  PersistentList.h
//  Sequence
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface PersistentList : NSObject {
	Node *first_;
	NSUInteger count_;
}

@property (readonly) Node* first;

-(id)init;
-(id)initWithValue:(id)v;
-(id)initWithArray:(id)arr;

+(PersistentList*)list;
+(PersistentList*)listWithValue:(id)v;
+(PersistentList*)listWithArray:(id)arr;

-(void)print;

-(NSUInteger)count;


@end

