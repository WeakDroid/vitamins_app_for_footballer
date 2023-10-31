import '../../domain/data_result/data_result.dart';

Future<DataResult<T>> safeLocalCall<T, U>(
    {required Future<U> Function() localCall,
    required DataResult<T> Function(U) processLocalResult}) async {
  try {
    var response = await localCall();
    return processLocalResult(response);
  } catch (e) {
    return ErrorResult(code: null, message: 'Something went wrong');
  }
}
