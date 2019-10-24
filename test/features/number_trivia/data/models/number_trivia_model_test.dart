import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final numberTriviaModel = NumberTriviaModel(number: 1, text: 'test');

  test('should be a subclass of NumberTrivia entity', () async {
    expect(numberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when the JSON number is an integer',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result, isA<NumberTriviaModel>());
      expect(result.number, isA<int>());
    });

    test(
        'should return a valid model when the JSON number is regarded as a double',
        () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      // act
      final result = NumberTriviaModel.fromJson(jsonMap);
      // assert
      expect(result, isA<NumberTriviaModel>());
      expect(result.number, isA<int>());
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () async {
      // act
      final result = numberTriviaModel.toJson();
      // assert
      final expectedJsonMap = {
        "text": "test",
        "number": 1,
      };
      expect(result, expectedJsonMap);
    });
  });
}
