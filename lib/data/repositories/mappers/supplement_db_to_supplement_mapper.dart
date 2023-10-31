import 'package:vitamins_app_for_footballer/data/local/models/supplement_local.dart';
import 'package:vitamins_app_for_footballer/domain/models/supplement.dart';

class SupplementDbToSupplementMapper {
  static Supplement fromLocal(SupplementLocal local) {
    return Supplement(
      name: local.name,
    );
  }
}
