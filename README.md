ObjCUtilities
=======

These are some utilities I use in ObjC - primarily targeting strings. Some of them are still works in progress so
don't take these too seriously.  i.e. grab some ideas but think twice about importing them into production code.

Each file has *brief* documentation. (Yes I should have more and probably will add it as I use them more)

re_class : a set of C++ classes that are containers for ObjC NSString and NSRegularExpression to let you
do ruby or perl styled regex literals. Right now I just have a comparison (i.e. match) operator overloaded.
Unfortunately the reality of ObjC++ means I need container classes so using it ends up like this:
   if ( re(@"^test$") == nss(@"test") ) { ... }
rather than something clean like re(@"^test$") == @"test" 


