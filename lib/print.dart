import 'dart:html';
import 'dart:async';

DivElement div = querySelector('#console');

print(Object object) {
  div.append(
      new DivElement()..innerHtml = object.toString().replaceAll("\n", "<br>"));


}
