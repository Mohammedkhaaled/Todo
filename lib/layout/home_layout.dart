import 'package:flutter/material.dart';
import 'package:todo/Modules/settings/settings.dart';
import 'package:todo/Modules/tasks/tasks.dart';
import 'package:todo/shared/styles/colors.dart';

import '../Modules/bottom_sheets/add_task_bottom_sheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = '/';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> tabs = [TasksScreen(), SettingScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "TODO",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(side: BorderSide(width: 4, color: WhiteColor)),
        onPressed: () {
          // open bottom sheet
          OpenBottomSheetToAddTask();
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 9,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
          ],
        ),
      ),
      body: tabs[currentIndex],
    );
  }

  OpenBottomSheetToAddTask() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddTaskBottomSheet(),
          ),
        );
      },
      isScrollControlled: true,
    );
  }
}
