import '../../domain/data_result/data_result.dart';

Future<DataResult<T>> safeDataResult<T>({
  required Future<T> Function() fetchData,
  required DataResult<T> Function(dynamic) processResult,
}) async {
  try {
    var response = await fetchData();
    return processResult(response);
  } catch (e) {
    return ErrorResult<T>(code: null, message: 'Something went wrong');
  }
}
