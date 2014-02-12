//
//  re_class.h
//  RegExTest
//
//  Created by CLARK GOBLE on 2/12/14.
//  Copyright (c) 2014 Goble. All rights reserved.
//

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


#ifndef __RegExTest__re_class__
#define __RegExTest__re_class__

#import <Foundation/Foundation.h>

class nss {
public:
    nss();
    nss(NSString* s);
    NSString *string();
private:
    NSString* st;
};

class re {
public:
    re();
    re(NSString* p);
    ~re();

    bool operator== (nss& other);
private:
    NSRegularExpression* regex;
};

#endif /* defined(__RegExTest__re_class__) */
