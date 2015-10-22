# slugfield

Generate a slug for connected inputs.

![Slug field](https://raw.githubusercontent.com/ITCase/slugfield/master/doc/_static/example.gif)

## Usage

### Dart

A simple usage example in Dart language:

```dart

import 'package:slugfield/slugfield.dart' show SlugField;

main() {
  var slug = new SlugField('#name');
  slug
    ..adaptTo('#slug1')
    ..adaptTo('#slug2')
    ..adaptTo('#slug3')
    ..adaptTo('#slug4')
    ..adaptTo('#slug5');
}
```

### JavaScript

It can be used as a normal javascript library.
See example in [build/web](https://github.com/ITCase/slugfield/tree/master/build/web) directory of project:

```html

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Dart slugfield example</title>

<script async type="application/dart" src="slugfield.dart"></script>
<script async type="text/javascript" src="packages/browser/dart.js"></script>

<style>
.inline {
  display: inline-block;
  margin:10px;
}
</style>
</head>

<body>
<div class="inline">
  typing there -&gt; <input type="text" id="name">
</div>
<div class="inline">
  slug1: <input type="text" id="slug">
  <br/>
  slug2: <input type="text" id="slug2">
  <br/>
  slug3: <input type="text" id="slug3">
  <br/>
  slug4: <input type="text" id="slug4">
</div>

<script async type="text/javascript">
  window.onload = function() {
    dartSlugField("#name", ["#slug", "#slug2", "#slug3", "#slug4"]);
  }
</script>
</body>
</html>
```

### Bower

```bash
$ bower install slugfield
```

### npm

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/ITCase/slugfield/issues/
