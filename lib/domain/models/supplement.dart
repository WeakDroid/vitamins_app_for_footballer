import 'package:equatable/equatable.dart';

class Supplement extends Equatable {
  const Supplement({
    required this.name,
  });

  final String name;

  @override
  List<Object> get props => [name];
}
