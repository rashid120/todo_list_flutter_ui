
import 'package:flutter/material.dart';
import 'package:todo_list/task.dart';
import 'home.dart';
import 'util.dart';


class BottomNavigationBarApp extends StatelessWidget {
  final int bottomNavigationBarIndex;
  final BuildContext context;

  const BottomNavigationBarApp(this. context, this.bottomNavigationBarIndex, {super.key});

  void onTabTapped(int index) {
    Navigator.of(context).push(
      MaterialPageRoute<Null>(builder: (BuildContext context) {
        return (index == 1) ? const Task() : const Home();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      selectedLabelStyle: const TextStyle(color: CustomColors.BlueDark),
      selectedItemColor: CustomColors.BlueDark,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: const Icon(Icons.home_filled),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: const Icon(Icons.task),
          ),
          label: 'Task',
        ),
      ],
      onTap: onTabTapped,
    );
  }
}
