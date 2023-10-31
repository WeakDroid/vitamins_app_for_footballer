import 'package:hive/hive.dart';

part 'supplement_local.g.dart';

@HiveType(typeId: 0)
class SupplementLocal {
  @HiveField(0)
  final String name;

  SupplementLocal(this.name);
}
