import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int yourScore;
  final Function resetHandler;
  Result(this.yourScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (yourScore >= 15) {
      resultText = 'you are awesome';
    } else if (yourScore >= 10) {
      resultText = 'you are not so bad';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: TextButton.styleFrom(
                primary: Colors.blue, side: BorderSide(color: Colors.blue)),
            child: Text('Reset Quiz'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
