//
//  TJMGameBoardCell.m
//  Game Board
//
//  Created by Tyler Milner on 3/3/14.
//  Copyright (c) 2014 Tyler Milner. All rights reserved.
//

#import "TJMGameBoardCell.h"

#define kNSCodingStateKey @"state"

@implementation TJMGameBoardCell

+ (instancetype)gameBoardCell
{
    return [[self alloc] initWithGameBoardCellState:TJMGameBoardCellStateEmpty];
}

- (instancetype)initWithGameBoardCellState:(TJMGameBoardCellState)state
{
    self = [super init];
    
    if (self)
    {
        _state = state;
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInteger:self.state forKey:kNSCodingStateKey];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if (!self)
    {
        return nil;
    }
    
    self.state = [aDecoder decodeIntegerForKey:kNSCodingStateKey];
    
    return self;
}

@end
