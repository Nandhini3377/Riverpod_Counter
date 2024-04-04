import 'package:counter/model/counter.dart';
import 'package:flutter_test/flutter_test.dart';


main() {
  test('Counter number should start at 0', () {
    expect(Count().value, 0);
  });

  test('Counter number should be incremented', () {
    final counter = Count();
    counter.increment();
    expect(counter.value, 1);
  });

  test('Counter number should not be decremented below 0', () {
    final counter = Count();
    counter.decrement();
    expect(counter.value, greaterThanOrEqualTo(0));
  });
}