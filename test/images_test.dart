import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:clubcrafter/src/core/utils/resources//resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.appLogo).existsSync(), isTrue);
    expect(File(Images.avatarReplace).existsSync(), isTrue);
    expect(File(Images.detail).existsSync(), isTrue);
    expect(File(Images.event).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
    expect(File(Images.popular).existsSync(), isTrue);
    expect(File(Images.rc).existsSync(), isTrue);
    expect(File(Images.rec).existsSync(), isTrue);
    expect(File(Images.recom).existsSync(), isTrue);
    expect(File(Images.rectangle).existsSync(), isTrue);
    expect(File(Images.rectangleOne).existsSync(), isTrue);
    expect(File(Images.rectangleTwo).existsSync(), isTrue);
    expect(File(Images.recth).existsSync(), isTrue);
    expect(File(Images.seconSix).existsSync(), isTrue);
    expect(File(Images.secondFive).existsSync(), isTrue);
    expect(File(Images.secondFour).existsSync(), isTrue);
    expect(File(Images.secondOne).existsSync(), isTrue);
    expect(File(Images.secondThree).existsSync(), isTrue);
    expect(File(Images.secondTwo).existsSync(), isTrue);
  });
}
