//
//  MutableNode.h
//  persistent
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface MutableNode : Node

- (void)setNext:(Node*)next;
- (void)setValue:(id)value;

@end
