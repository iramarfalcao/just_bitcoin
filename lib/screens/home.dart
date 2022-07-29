import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_bitcoin/components/line_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bitcoin',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.black,
              size: 24.0,
              semanticLabel: '',
            ),
          )
        ],
      ),
      body: Scrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 8),
              child: Text('Saldo aproximado de bitcoins'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text(
                'R\$ 385,00',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      '1 BTC =',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('R\$ 289.981,56'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 0, 2),
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                    child: Text(
                      '19,04%',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.black,
              child: const LinePage(),
            ),
          ],
        ),
      ),
    );
  }
}
