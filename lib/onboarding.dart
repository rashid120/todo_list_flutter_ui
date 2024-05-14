import 'package:flutter/material.dart';

import 'empty.dart';
import 'util.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: <Widget>[
              const Expanded(
                flex: 8,
                child: Hero(
                  tag: 'Clipboard',
                  child: Image(image: NetworkImage('https://th.bing.com/th/id/OIP.LizUYCSvTIjLQCJMz_YYbgHaHa?rs=1&pid=ImgDetMain')),
                  // child: Image.asset('assets/images/Clipboard.png'),
                ),
              ),
              const Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Reminders made simple',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.TextHeader),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque erat in blandit luctus.',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.TextBody,
                          fontFamily: 'opensans'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Empty()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.zero,
                    elevation: 0,
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[
                          CustomColors.GreenLight,
                          CustomColors.GreenDark,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: CustomColors.GreenShadow,
                          blurRadius: 15.0,
                          spreadRadius: 7.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
