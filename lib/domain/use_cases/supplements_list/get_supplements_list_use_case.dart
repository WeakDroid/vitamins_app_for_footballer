import 'package:vitamins_app_for_footballer/domain/models/supplement.dart';
import '../../data_result/data_result.dart';

abstract class GetSupplementsListUseCase {
  Future<DataResult<List<Supplement>>> getSupplementsList();
}