//
//  re_class.cpp
//
//  Created by CLARK GOBLE on 2/12/14.
//  Copyright (c) 2014 Goble. All rights reserved.
//

#include "re_class.h"

// re and nss are container classes to let us use C++ operator overloading. To use
// objc objects with C++ you have to make container classes first. re is the
// container class for a regular expression and nss for a NSString.
//
// To use simply enclose your regular expression literal in a re constructor
// and use the == comparison with a NSString enclosed in a nss constructor.
// i.e.
//      if ( re(@"^test") == nss(@"test") ) { ...
//
// These are works in progress and often hacks for my own use. So don't take
// them too seriously.


re::re()
{
    reg = nil;
}

re::re(NSString* p)
{
    NSError *error = [NSError new];
    reg = [NSRegularExpression regularExpressionWithPattern: p options:0 error:&error];
}


re::~re()
{

}



bool re::operator== (const nss &other ) const
{
    NSString* s = other.string();
    NSUInteger numhits = [this->reg numberOfMatchesInString: s options:0
                                                          range: NSMakeRange(0, [s length])];
    return ( numhits > 0);
}

nss::nss()
{
    st = nil;

}

nss::nss(NSString* s)
{
    st = s;

}

NSString* nss::string() const
{
    return st;

}

