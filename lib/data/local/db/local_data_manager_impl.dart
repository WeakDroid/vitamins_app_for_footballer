import 'package:hive/hive.dart';
import '../../../domain/data_result/data_result.dart';
import '../../repositories/get_local_data_result.dart';
import '../models/supplement_local.dart';
import 'local_data_manager.dart';

class LocalDataManagerImpl implements LocalDataManager {
  Box<SupplementLocal>? _supplementsBox;

  static const String supplementsBoxName = 'supplements';

  @override
  Future<List<SupplementLocal>> getSupplements() async {
    return getMockSupplements();
  }

  List<SupplementLocal> getMockSupplements() {
    return [
      SupplementLocal("Vitamin A"),
      SupplementLocal("Vitamin B1 (Thiamine)"),
      SupplementLocal("Vitamin B2 (Riboflavin)"),
      SupplementLocal("Vitamin B3 (Niacin)"),
      SupplementLocal("Vitamin B5 (Pantothenic Acid)"),
      SupplementLocal("Vitamin B6 (Pyridoxine)"),
      SupplementLocal("Vitamin B7 (Biotin)"),
      SupplementLocal("Vitamin B9 (Folic Acid)"),
      SupplementLocal("Vitamin B12 (Cobalamin)"),
      SupplementLocal("Vitamin C"),
      SupplementLocal("Vitamin D"),
      SupplementLocal("Vitamin E"),
    ];
  }
}
