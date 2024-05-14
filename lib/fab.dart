import 'package:flutter/material.dart';

import 'bottomSheet.dart';
import 'util.dart';



FloatingActionButton customFab(context) {
  Modal modal = Modal();

  return FloatingActionButton(
    onPressed: () {
      modal.mainBottomSheet(context);
    },
    elevation: 5,
    backgroundColor: Colors.transparent,
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            CustomColors.PurpleLight,
            CustomColors.PurpleDark,
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.PurpleShadow,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
      child: const Icon(Icons.add),
    ),
  );
}
