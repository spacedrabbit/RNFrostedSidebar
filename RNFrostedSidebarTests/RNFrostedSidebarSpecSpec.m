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
    beforeAll(^{
        frostedSidebar = [RNFrostedSidebar visibleSidebar];
    });

    
    it(@"Should not be nil", ^{
        expect(frostedSidebar).toNot.beNil;
    });  
    
});

SpecEnd
