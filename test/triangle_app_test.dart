import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group(
    'Detect the triangle',
    () {
      test(
        'Should throw error when side a + b <= c',
        () {
          expect(() => detectTriangle(1, 1, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(10, 1, 2), throwsA(isA<Exception>()));
        },
      );
      test(
        'Should throw Error when there is side less then 1',
        () {
          expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
          expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
        },
      );
      test(
        'Should return "Segitiga Sama Sisi" when all sides are equal',
        () {
          expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
          expect(detectTriangle(2, 2, 1), isNot("Segitiga Sama Sisi"));
        },
      );
      test(
        'Should return "Segitiga Sama Kaki" when only 2 sides are equal',
        () {
          expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
          expect(detectTriangle(2, 3, 2), "Segitiga Sama Kaki");
          expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
          expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
        },
      );

      test(
        'Should return "Segitiga Sembarang" when all sides are not equal',
        () {
          expect(detectTriangle(7, 6, 5), "Segitiga Sembarang");
          expect(detectTriangle(3, 5, 4), "Segitiga Sembarang");
          expect(detectTriangle(2, 2, 1), isNot("Segitiga Sembarang"));
        },
      );
    },
  );
}
