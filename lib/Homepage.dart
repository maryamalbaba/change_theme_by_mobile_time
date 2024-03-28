// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:imagetheme/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  bool isLight ;
  HomePage({
    Key? key,
    required this.isLight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(DateTime.now().minute);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                 isLight   ? 'asset/sky.jpg' : "asset/sky2.jpg",
                ),
                fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // child: ElevatedButton.icon(
            //   onPressed: () {
            //     context.read<themPageProvider>().changeMode();
            //   },
            //   label: Text("Change mode"),
            //   icon: Icon(Icons.mood),
            // ),
          ),
        ),
      ),
    );
  }
}
