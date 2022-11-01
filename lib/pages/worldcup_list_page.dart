import 'package:flutter/material.dart';
import 'package:test_final/models/world_item.dart';

class WorldListPage extends StatefulWidget {
  const WorldListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WorldListPageState createState() => _WorldListPageState();
}

class _WorldListPageState extends State<WorldListPage> {
  List<WorldItem>? _worldList;
  //var _isLoading = false;
  //String? _errMessage;
  
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
            Expanded(
              child: Stack(
                children: [
                  if (_worldList != null)
                    ListView.builder(
                      itemBuilder: _buildListItem,
                      itemCount: _worldList!.length,
                    ),
                ],
              ),),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int i) {
    var worldItem = _worldList![i];

    return Card(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Image.network(
              worldItem.flagImage,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                children: [
                  Text(worldItem.team,),
                  Text(worldItem.group),
                ],
              ),
            ),
            _buildButton(),
          ],
        ),
      ),
    );
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

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('VOTE',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}


