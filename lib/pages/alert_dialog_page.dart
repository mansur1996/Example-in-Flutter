import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({Key? key}) : super(key: key);
  static const String id = "alert_dialog_page";

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  void _iosDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text("Logout"),
              content: Text("Do you want to logout?"),
              actions: [
                CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),
                CupertinoDialogAction(
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Confirm")),
              ],
            ));
  }

  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Logout"),
            content: const Text("Do you want to logout?"),
            actions: [
              TextButton(
                  child: const Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              TextButton(
                child: const Text("Confirm"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Alert Dialog",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: const BorderSide(
                    color: Colors.red,
                    strokeAlign: StrokeAlign.center,
                    width: 2),
              )),
          onPressed: () {
            if (Platform.isAndroid) {
              _androidDialog();
            } else if (Platform.isIOS) {
              _iosDialog();
            }
          },
          child: const Text(
            "Open Dialog",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
