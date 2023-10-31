import '../../../domain/data_result/data_result.dart';
import '../models/supplement_local.dart';

abstract class LocalDataManager {
  Future<List<SupplementLocal>> getSupplements();
}
