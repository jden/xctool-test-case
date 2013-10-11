# test case

Illustrates running tests in an XCode 5 project via xctool 0.1.13

Tests using XCTest run perfectly.
Tests using Kiwi/XCTest run in Xcode, run in xcbuild, but not in xctool.

Expected: 2 tests run, 2 tests pass.
Actual in xctool: 1 test runs, 1 test passes (the XCTest test)

To reproduce:

git clone this repo
make xcbuild
make xctool


Related to https://github.com/facebook/xctool/issues/196

License: wtfpl. or, if your lawyers care, MIT.