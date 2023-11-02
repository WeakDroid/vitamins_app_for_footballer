import 'package:flutter/material.dart';
import '../../../../common/bottom_menu/bottom_menu_widgets/bottom_navigation_menu.dart';
import '../../../../common/styles/colors.dart';
import '../../../../common/widgets/caution_button.dart';
import '../../../../common/widgets/color_selection_grid.dart';
import '../../../../common/widgets/counter_bar.dart';
import '../../../../common/widgets/custom_tile.dart';
import '../../../../common/widgets/expandable_data_tile.dart';
import '../../../../common/widgets/expandable_settings_tile.dart';
import '../../../../common/widgets/main_app_bar.dart';
import '../../../../common/widgets/main_button.dart';
import '../../../../common/widgets/main_dialog.dart';
import '../../../../common/widgets/main_text_field.dart';
import '../../../../common/widgets/toggle_tab.dart';
import '../../../../constants/colors_selection_list.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

class WidgetsBox extends StatefulWidget {
  const WidgetsBox({super.key});

  @override
  State<WidgetsBox> createState() => _WidgetsBoxState();
}

class _WidgetsBoxState extends State<WidgetsBox> {
  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: _buildScreen(),
        ),
      ),
    );
  }

  Widget _buildScreen() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [_buildTestWidgets()],
      ),
    );
  }

  Widget _buildTestWidgets() {
    return Center(
      child: Column(
        children: [
          const MainTextField(
            hint: 'Enter the weight of one tablet/capsule',
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ToggleTab(
                text: 'Days',
              ),
              const SizedBox(
                width: 8,
              ),
              ToggleTab(
                text: 'Weeks',
                onSelected: () {},
              ),
              const SizedBox(
                width: 8,
              ),
              const ToggleTab(
                text: 'Months',
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const ExpandableSettingsTile(),
          const SizedBox(
            height: 8,
          ),
          const ExpandableDataTile(),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainButton(
                text: 'Save',
                onPressed: () => {},
              ),
              const SizedBox(
                width: 16,
              ),
              MainButton(
                text: 'Done',
                onPressed: () => {},
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          CautionButton(
            text: 'Delete',
            onPressed: () => _showCustomDialog(context),
          ),
          const SizedBox(
            height: 16,
          ),
          ColorSelectionGrid(
            onColorSelected: (Color? value) {},
            initialColor: AppColors.green400,
          ),
          const SizedBox(
            height: 16,
          ),
          CounterBar(
            onChanged: (int value) {},
            initialValue: 0,
          ),
          const SizedBox(
            height: 8,
          ),
          const SupplementTile(
            mealTime: 'With Breakfast',
            supplement: 'D3 - 1600mg',
            pillInfo: '1 Capsule - 800 mg',
            times: 2,
            pillStatus: 'Done at 06:30 AM',
          ),
        ],
      ),
    );
  }

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MainDialog(
          title: 'Don’t save the changes?',
          description: 'Your changes will be not applied here',
          onConfirm: () {},
        );
      },
    );
  }
}
