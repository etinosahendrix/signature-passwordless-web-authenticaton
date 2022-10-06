import 'package:flutter/material.dart';
import '../../models/cards/token_card.dart';
import '../sub_pages/add_code_manual_page.dart';

class TokenPage extends StatefulWidget {
  const TokenPage({super.key});

  @override
  State<TokenPage> createState() => _TokenPageState();
}

class _TokenPageState extends State<TokenPage> {
  @override
  Widget build(BuildContext context) {
    bool isFABVisible = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 100,
              itemBuilder: (context, index) {
                return const TokenCard();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: isFABVisible,
        child: SizedBox(
          width: 50,
          height: 50,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddCodeManual()),
              );
            },
            backgroundColor: Colors.black87,
            child: const Icon(Icons.add_outlined),
          ),
        ),
      ),
    );
  }
}
