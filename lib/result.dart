
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result({ @required this.resultScore});

  String text = '';
  @override
  Widget build(BuildContext context) {
    if(resultScore <= 8){
      text = 'You have faild, try again';
    }
    else{
      text = 'Congratulations, you have passed';
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Total Score: $resultScore'),
          const SizedBox(
            height: 20,
          ),
          Text(text),
        ],
      ),
    );
  }
}
