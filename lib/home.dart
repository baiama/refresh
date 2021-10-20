import 'package:flutter/material.dart';
import 'package:refresh_layout/refresh.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh'),
      ),
      body: PageView(
        children: [
          RefreshIndicator(
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
                      color: Colors.green,
                    ),
                  );
                }),
          ),
          VibrationRefreshIndicator(
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
          )
        ],
      ),
    );
  }
}
