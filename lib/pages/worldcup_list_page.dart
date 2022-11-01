import 'package:flutter/material.dart';

class WorldListPage extends StatefulWidget {
  const WorldListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WorldListPageState createState() => _WorldListPageState();
}

class _WorldListPageState extends State<WorldListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          )
        ),

        child: Column(
          children: [
            _build_LoGo(),
            Expanded(child: Stack()),
          ],
        ),
      ),
    );
  }
}

Widget _build_LoGo() {
  return Padding(padding: const EdgeInsets.all(7.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(9.0),
            child: Image.asset('assets/images/logo.jpg',width: 300.0),
          ),
        ],
      ),
    ),
  );
}