import '../../../../domain/models/supplement.dart';

abstract class SupplementsScheduleState {}

class SupplementsListLoadingState extends SupplementsScheduleState {}

class SupplementsListLoadedState extends SupplementsScheduleState {
  final List<Supplement> supplements;

  SupplementsListLoadedState(this.supplements);
}

class SupplementsListErrorState extends SupplementsScheduleState {
  final String message;

  SupplementsListErrorState(this.message);
}
