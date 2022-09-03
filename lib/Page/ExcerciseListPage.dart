import 'package:flutter/material.dart';
import '../helpers/Constants.dart';

class ExcerciseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('今日運動',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: appGreenColor,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 247,
                    alignment: Alignment.centerLeft,
                    child: Text('運動清單',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text('自定義',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          icon: Image.asset('assets/images/addButton.png'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                child:
                Card(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title:  TextField(
                      decoration:  InputDecoration(
                        hintText: '搜尋',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index){
                    return Row(
                      children: [
                        Text('測試'),
                      ],
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
