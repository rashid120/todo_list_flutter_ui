import 'package:flutter/material.dart';
import 'util.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget title;
  final Widget flexibleSpace;
  final List<Widget> actions;
  final double elevation;
  final LinearGradient gradient;
  final PreferredSizeWidget? bottom;

  const GradientAppBar({
    super.key,
    required this.title,
    required this.flexibleSpace,
    required this.actions,
    this.elevation = 4.0,
    required this.gradient,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      flexibleSpace: flexibleSpace,
      actions: actions,
      elevation: elevation,
      backgroundColor: Colors.transparent,
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}

PreferredSizeWidget fullAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [CustomColors.HeaderBlueDark, CustomColors.HeaderBlueLight],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          CustomPaint(
            painter: CircleTwo(),
          ),
        ],
      ),
    ),
    title: Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello Brenda!',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Text(
            'Today you have 9 tasks',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
        // child: Image.asset('assets/images/photo.png'),
        child: const Icon(Icons.person),
      ),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(43),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
        decoration: BoxDecoration(
          color: CustomColors.BlueDark,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Today Reminder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Meeting with client',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '13.00 PM',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.6,
            ),
            const Icon(Icons.doorbell_outlined),

            const SizedBox(
              child: Icon(
                Icons.clear,
                color: Colors.white,
                size: 18.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

PreferredSizeWidget emptyAppbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [CustomColors.HeaderBlueDark, CustomColors.HeaderBlueLight],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomPaint(
            painter: CircleOne(),
          ),
          CustomPaint(
            painter: CircleTwo(),
          ),
        ],
      ),
    ),
    title: Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello Brenda!',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Text(
            'Today you have no tasks',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
        child: const Icon(Icons.person),
        // child: Image.asset('assets/images/photo.png'),
      ),
    ],
  );
}

class CircleOne extends CustomPainter {
  late Paint _paint;

  CircleOne() : super() {
    _paint = Paint()
      ..color = CustomColors.HeaderCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(28.0, 0.0), 99.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class CircleTwo extends CustomPainter {
  late Paint _paint;

  CircleTwo() {
    _paint = Paint()
      ..color = CustomColors.HeaderCircle
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(-30, 20), 50.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
