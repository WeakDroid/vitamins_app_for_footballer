import 'package:get_it/get_it.dart';
import 'package:vitamins_app_for_footballer/data/repositories/supplements/supplements_repository.dart';
import 'package:vitamins_app_for_footballer/data/repositories/supplements/supplements_repository_impl.dart';
import 'package:vitamins_app_for_footballer/domain/use_cases/supplements_list/get_supplements_list_use_case.dart';
import 'package:vitamins_app_for_footballer/domain/use_cases/supplements_list/get_supplements_list_use_case_impl.dart';
import '../data/local/db/local_data_manager.dart';
import '../data/local/db/local_data_manager_impl.dart';
import '../ui/features/bottom_menu/cubit/bottom_navigation_cubit.dart';
import '../ui/features/calendar/bloc/supplements_schedule_bloc.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  _setupData();
  _setupDomain();
  _setupUi();
}

void _setupData() {
  locator.registerLazySingleton<SupplementsRepository>(
      () => SupplementsRepositoryImpl(locator<LocalDataManager>()));
  locator.registerLazySingleton<LocalDataManager>(() => LocalDataManagerImpl());
}

void _setupDomain() {
  locator.registerLazySingleton<GetSupplementsListUseCase>(() =>
      GetSupplementsListUseCaseImpl(
          supplementsRepository: locator<SupplementsRepository>()));
}

void _setupUi() {
  locator
      .registerFactory<SupplementsScheduleBloc>(() => SupplementsScheduleBloc(
            locator<GetSupplementsListUseCase>(),
          ));

  locator.registerLazySingleton<BottomNavigationCubit>(
      () => BottomNavigationCubit());
}
