import 'package:vitamins_app_for_footballer/data/local/models/supplement_local.dart';
import 'package:vitamins_app_for_footballer/data/repositories/mappers/supplement_db_to_supplement_mapper.dart';
import 'package:vitamins_app_for_footballer/data/repositories/safe_local_call.dart';
import 'package:vitamins_app_for_footballer/data/repositories/supplements/supplements_repository.dart';
import '../../../domain/data_result/data_result.dart';
import '../../../domain/models/supplement.dart';
import '../../local/db/local_data_manager.dart';

class SupplementsRepositoryImpl implements SupplementsRepository {
  final LocalDataManager _localDataManager;

  SupplementsRepositoryImpl(this._localDataManager);

  @override
  Future<DataResult<List<Supplement>>> getSupplementsList() async {
    return safeLocalCall(
        localCall: () => _localDataManager.getSupplements(),
        processLocalResult: (data) =>
            SuccessResult(data: _processSupplementsList(data)));
  }

  List<Supplement> _processSupplementsList(
      List<SupplementLocal> supplementLocal) {
    var supplements = supplementLocal
        .map((supplement) =>
            SupplementDbToSupplementMapper.fromLocal(supplement))
        .toList();
    return supplements;
  }
}
