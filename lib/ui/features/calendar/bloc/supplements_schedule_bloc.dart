import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamins_app_for_footballer/ui/features/calendar/bloc/supplements_schedule_event.dart';
import 'package:vitamins_app_for_footballer/ui/features/calendar/bloc/supplements_schedule_state.dart';
import '../../../../core/data_result/data_result_processor.dart';
import '../../../../domain/models/supplement.dart';
import '../../../../domain/use_cases/supplements_list/get_supplements_list_use_case.dart';

class SupplementsScheduleBloc
    extends Bloc<SupplementsScheduleEvent, SupplementsScheduleState> {
  final GetSupplementsListUseCase useCase;

  SupplementsScheduleBloc(this.useCase) : super(SupplementsListLoadingState()) {
    on<GetSupplementsEvent>((event, emit) async {
      emit(SupplementsListLoadingState());
      final result = await useCase.getSupplementsList();

      DataResultProcessor<List<Supplement>>.processResult(
        dataResult: result,
        onSuccess: (supplements) {
          emit(SupplementsListLoadedState(supplements));
        },
        onError: (errorResult) {
          emit(SupplementsListErrorState(errorResult.message));
        },
      );
    });
  }
}
