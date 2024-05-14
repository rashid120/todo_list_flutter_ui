import 'package:flutter/material.dart';
import 'package:todo_list/util.dart';
import 'appBars.dart';
import 'bottomNavigation.dart';
import 'fab.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,

        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: const Text(
                'Today',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.check_circle_rounded, color: Colors.orangeAccent,),
                  Text(
                    '07.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Go jogging with Christin',
                      style: TextStyle(
                          color: CustomColors.TextGrey,
                          //fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.orangeAccent,),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.green,),

                  Text(
                    '08.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Send project file',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.green,),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.pink,),

                  Text(
                    '10.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.pink,),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.green,),

                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.green,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 15),
              child: const Text(
                'Tomorrow',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.TextSubHeader),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.orangeAccent,),

                  Text(
                    '07.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Morning yoga',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.orangeAccent,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.green,),

                  Text(
                    '08.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Sending project file',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.green,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.pink,),

                  Text(
                    '10.00 AM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.pink,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.green,),

                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.green,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.pink,),

                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Meeting with client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.pink,),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.fromLTRB(5, 13, 5, 13),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.GreenIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.radio_button_unchecked, color: Colors.green,),

                  Text(
                    '13.00 PM',
                    style: TextStyle(color: CustomColors.TextGrey),
                  ),
                  SizedBox(
                    width: 180,
                    child: Text(
                      'Email client',
                      style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Icon(Icons.notifications, color: Colors.green,),
                ],
              ),
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar: BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}
