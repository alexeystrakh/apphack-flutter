import 'package:flutter/material.dart';

class WalletModel {
  final String name;
  final String amount;
  final String balance;
  final String balanceDiff;

  WalletModel(this.name, this.amount, this.balance, this.balanceDiff);
}

class Tab1 extends StatelessWidget {
  final List<WalletModel> entries = <WalletModel>[
    WalletModel('BTC', '\$9 454.20', '0.2443552', '+\$325.65 (3.5%)'),
    WalletModel('ETH', '\$229.020', '14.8742', '+\$11.65 (5.2%)'),
    WalletModel('LTC', '\$42.520', '22.5453', '+\$2.16 (5.2%)'),
    WalletModel('XRP', '\$0.18210', '0.01', '+\$0.046 (6.1%)'),
    WalletModel('DASH', '\$70.320', '0.2', '+\$3.56 (5.4%)'),
  ];

  Tab1();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                padding: EdgeInsets.all(30),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Available Balance",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      Text(
                        "+9.44%",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent),
                      ),
                      Text(
                        "\$6 652.60",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Your Cryptocurrencies",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )
                    ]),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue, Colors.green]),
                    shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40.0)))),
            new Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 60,
                        margin: EdgeInsets.all(20),
                        child: Center(
                            child: Text(
                                '${entries[index].name} \$${entries[index].balance}')),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.green, Colors.blue]),
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                      );
                    })),
          ]),
    );
  }
}
