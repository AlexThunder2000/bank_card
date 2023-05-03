import 'package:app/components/bank_card.dart';
import 'package:app/components/bank_card_dto.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<BankCarDTO> list = [
    BankCarDTO(
      title: 'Universal Bank',
      bin1: '1111',
      bi2: '2222',
      bi3: '3333',
      bi4: '4444',
      dateExp: '03/99',
      startColor: Colors.black,
      endColor: Colors.black45,
    ),
    BankCarDTO(
      title: 'UK Bank',
      bin1: '2222',
      bi2: '2222',
      bi3: '2222',
      bi4: '5555',
      dateExp: '06/50',
      startColor: Colors.black,
      endColor: Colors.red,
    ),
    BankCarDTO(
      title: 'UK Bank',
      bin1: '2222',
      bi2: '2222',
      bi3: '2222',
      bi4: '5555',
      dateExp: '06/50',
      startColor: Colors.blue,
      endColor: Colors.yellow,
    ),
    BankCarDTO(
      title: 'UK Bank',
      bin1: '2222',
      bi2: '2222',
      bi3: '2222',
      bi4: '5555',
      dateExp: '06/50',
      startColor: Colors.green,
      endColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...list.map((value) => BankCard(data: value)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
