import '../../../domain/data_result/data_result.dart';
import '../../../domain/models/supplement.dart';

abstract class SupplementsRepository {
  Future<DataResult<List<Supplement>>> getSupplementsList();
}

