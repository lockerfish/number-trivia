import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  static const List _properties = const <dynamic>[];
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  Failure([List properties = _properties]);

  @override
  List<Object> get props => [_properties];
}

// General failures
class ServerFailure extends Failure {
  ServerFailure([List properties]) : super(properties);
}

class CacheFailure extends Failure {
  CacheFailure([List properties]) : super(properties);
}
