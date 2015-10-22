//
// main.dart
// Copyright (C) 2015 uralbash <root@uralbash.ru>
//
// Distributed under terms of the MIT license.
//

import 'dart:js' as js;
import 'package:slugfield/slugfield.dart' show SlugField;

void init(String name, List<String> adapters)
{
  SlugField slugfield = new SlugField(name);
  if (slugfield.baseField != null)
  {
    adapters.forEach((a) => slugfield.adaptTo(a));
  }
}


void main() {
  js.context['dartSlugField'] = init;
}
