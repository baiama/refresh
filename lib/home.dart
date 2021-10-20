import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:refresh_layout/refresh.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh'),
      ),
      body: VibrationRefreshIndicator(
        //distance between child and top default 100
        childOffset: 100,
        //vibration types default FeedbackType.medium
        feedbackType: FeedbackType.medium,
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 3));
        },
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Container(
                  height: 40,
                  color: Colors.yellow,
                ),
              );
            }),
      ),
    );
  }
}
