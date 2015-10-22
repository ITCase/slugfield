//
// slugfield_base.dart
// Copyright (C) 2015 uralbash <root@uralbash.ru>
//
// Distributed under terms of the MIT license.
//

library slugfield.base;

import 'dart:html';
import 'dart:js' as js;
import 'package:slugify/slugify.dart';

class SlugField
{
  InputElement baseField;
  var adapters = new List<InputElement>();
  Slugify slugify = new Slugify();

  SlugField(String cssselector)
  {
    baseField = querySelector(cssselector);
    if (baseField != null)
    {
      baseField
        ..onInput.listen(handler)
        ..onChange.listen(handler)
        ..onKeyDown.listen(handler)
        ..onKeyUp.listen(handler)
        ..onCut.listen(handler)
        ..onPaste.listen(handler);
    }
    else
    {
      print("Can't find '$cssselector' element");
    }

  }
  void adaptTo(name) {
    InputElement el = querySelector(name);
    if (el != null)
    {
      adapters.add(el);
      el.value = this.baseField.value;
    }
    else
    {
      print("Can't adapt '$name' to '${this.baseField.id}'");
    }
  }
  void handler(Event e)
  {
    String baseFieldValue = (e.target as InputElement).value;
    for (var field in this.adapters)
    {
      field.value = slugify.slugify(baseFieldValue);
    }
  }
}
