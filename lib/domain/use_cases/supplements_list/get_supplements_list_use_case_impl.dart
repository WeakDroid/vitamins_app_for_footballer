import 'package:vitamins_app_for_footballer/data/repositories/supplements/supplements_repository.dart';
import 'package:vitamins_app_for_footballer/domain/models/supplement.dart';
import '../../data_result/data_result.dart';
import 'get_supplements_list_use_case.dart';

class GetSupplementsListUseCaseImpl implements GetSupplementsListUseCase {
  final SupplementsRepository supplementsRepository;

  GetSupplementsListUseCaseImpl({required this.supplementsRepository});

  @override
  Future<DataResult<List<Supplement>>> getSupplementsList() {
    return supplementsRepository.getSupplementsList();
  }
}
