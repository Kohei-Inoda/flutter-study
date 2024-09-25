import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;
  const NextPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 40, child: Text('ID')),
                  Text('：毎回同じIDを表示'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(width: 40, child: Text('PW')),
                  Text('：毎回同じPWを表示'),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children:[
                  SizedBox(width: 40, child: Text("住所")),
                  Text("：ユーザの住所を表示")
                ],
              ),
            ],
          ),
      ),
    );
  }
}