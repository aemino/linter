// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

final x = 1; //LINT [1:5]
final int xx = 3;
const y = 2; //LINT
const int yy = 3;

a(var x) {} //LINT
b(s) {} //LINT [3:1]
c(int x) {}
d(final x) {} //LINT
e(final int x) {}

main() {
  var x = ''; //LINT [3:3]
  for (var i = 0; i < 10; ++i) {  //LINT [8:3]
    print(i);
  }
  List<String> ls = <String>[];
  ls.forEach((s) => print(s)); //LINT [15:1]
  for (var l in ls) { //LINT [8:3]
    print(l);
  }
  try {
    for (final l in ls) { // LINT [10:5]
      print(l);
    }
  } on Exception catch (ex) {
    print(ex);
  } catch (e) { // NO warning (https://codereview.chromium.org/1427223002/)
    print(e);
  }

  var __; // LINT

  listen((_) { // OK!
    // ...
  });
}

listen(void onData(Object event)) {}

var z; //LINT

class Foo {
  static var bar; //LINT
  static final baz  = 1; //LINT
  static final int bazz = 42;
  var foo; //LINT
  Foo(var bar); //LINT [7:3]
}
