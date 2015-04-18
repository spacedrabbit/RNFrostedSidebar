//
//  RNFrostedSidebarSpecSpec.m
//  RNFrostedSidebar
//
//  Created by Louis Tur on 4/18/15.
//  Copyright 2015 Ryan Nystrom. All rights reserved.
//

#import "Specta.h"
#import <Expecta/Expecta.h>
#import "RNFrostedSidebar.h"


SpecBegin(RNFrostedSidebarSpec)

describe(@"+[RNFrostedSidebar visibleSidebar] returns instance of RNFrostedSidebar", ^{
    
    __block RNFrostedSidebar * frostedSidebar;
    __block RNFrostedSidebar * designatedInitFrostedSidebar;
    __block NSMutableIndexSet *optionIndices;
    
    NSArray *images = @[
                        [UIImage imageNamed:@"gear"],
                        [UIImage imageNamed:@"globe"],
                        [UIImage imageNamed:@"profile"],
                        [UIImage imageNamed:@"star"],
                        [UIImage imageNamed:@"gear"],
                        [UIImage imageNamed:@"globe"],
                        [UIImage imageNamed:@"profile"],
                        [UIImage imageNamed:@"star"],
                        [UIImage imageNamed:@"gear"],
                        [UIImage imageNamed:@"globe"],
                        [UIImage imageNamed:@"profile"],
                        [UIImage imageNamed:@"star"],
                        ];
    
    NSArray *colors = @[
                        [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
                        [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
                        [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
                        [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
                        [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
                        [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
                        [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
                        [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
                        [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
                        [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
                        [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
                        [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
                        ];
    
    beforeAll(^{
        optionIndices = [NSMutableIndexSet indexSetWithIndex:1];
        
        frostedSidebar = [RNFrostedSidebar visibleSidebar];
        designatedInitFrostedSidebar = [[RNFrostedSidebar alloc] initWithImages:images selectedIndices:optionIndices borderColors:colors];
        
    });
    
    it(@"Should not be nil", ^{
        expect(frostedSidebar).toNot.beNil;
        expect(designatedInitFrostedSidebar).toNot.beNil;
    });
    
    it(@"", ^{
        
    });
    
});

SpecEnd
