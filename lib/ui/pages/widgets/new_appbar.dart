import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBars(context, {super.key})
      : super(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          title: const Text("Prakhar", style: TextStyle(fontSize: 30)),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/projects-list");
                },
                icon: const Icon(
                  Icons.account_tree_outlined,
                  color: Colors.white,
                  size: 30,
                ))
          ],
          automaticallyImplyLeading: false,
        );
}
