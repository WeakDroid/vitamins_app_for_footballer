import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitamins_app_for_footballer/domain/use_cases/supplements_list/get_supplements_list_use_case.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/colors.dart';
import 'package:vitamins_app_for_footballer/ui/common/styles/text_styles.dart';

import '../../../../../di/locator.dart';
import '../../../../../domain/use_cases/supplements_list/get_supplements_list_use_case_impl.dart';
import '../../bloc/supplements_schedule_bloc.dart';
import '../../bloc/supplements_list_event.dart';
import '../../bloc/supplements_schedule_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _supplementsListBloc = locator<SupplementsScheduleBloc>();

  @override
  void initState() {
    super.initState();
    _supplementsListBloc.add(GetSupplementsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SupplementsScheduleBloc>(
      create: (context) => _supplementsListBloc,
      child: _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: _buildScreen(),
        ),
      ),
    );
  }

  Widget _buildScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_buildTitle(), _buildVitaminsList()],
    );
  }

  Widget _buildTitle() {
    return Center(
      child: Text(
        'Your supplements:',
        style: AppTextStyles.h1
            .copyWith(fontWeight: FontWeight.w500, color: AppColors.red800),
      ),
    );
  }

  Widget _buildVitaminsList() {
    return BlocBuilder<SupplementsScheduleBloc, SupplementsScheduleState>(
      builder: (context, state) {
        if (state is SupplementsListLoadingState) {
          return const CircularProgressIndicator(
            color: AppColors.red600,
          );
        } else if (state is SupplementsListLoadedState) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.supplements.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    state.supplements[index].name,
                    style: AppTextStyles.body1,
                  ),
                );
              },
            ),
          );
        } else if (state is SupplementsListErrorState) {
          return const Text(
            'Something went wrong',
            style: AppTextStyles.caption1,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
