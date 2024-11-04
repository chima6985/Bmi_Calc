// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, non_constant_identifier_names

import "package:bmi_calculator/bottom_button.dart";
import "package:bmi_calculator/constants.dart";
import "package:bmi_calculator/reusable_card.dart";
import "package:flutter/material.dart";

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this .bmiResult, required this.Interpretation, required this.resultText });
  
  final String bmiResult;
  final String resultText;
  final String Interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: SizedBox(),
        title: const Center(child: const Text("BMI CALCULATOR")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
             alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
           Expanded(
            flex: 5,
            child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase() ,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextstyle,
                    ),
                    Text(
                      Interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                colour: kActivecardColour),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, buttonTitle: "RE-CALCULATE", )
        ],
      ),
    );
  }
}
