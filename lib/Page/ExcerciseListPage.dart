import 'package:flutter/material.dart';
import '../helpers/Constants.dart';
import 'ExcerciseList.dart';

class ExcerciseList extends StatefulWidget {
  @override
  _ExcerciseListState createState() => _ExcerciseListState();
}

class _ExcerciseListState extends State<ExcerciseList> {
  final controller = TextEditingController();
  List<Exercise> excerLists = defaultExerciseList;

  void searchExcerList(String query) {
    final suggestions = defaultExerciseList.where((excerList) {
      final excerTitle = excerList.name.toLowerCase();
      final input = query.toLowerCase();

      return excerTitle.contains(input);
    }).toList();

    setState(() => excerLists = suggestions);
  }

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
          Text('當前運動',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: allExerciseRecords.length,
            itemBuilder: (context, index) {
              final currentExercise = allExerciseRecords[index];
              return Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(
                  color: Color.fromRGBO(226, 226, 226, 1),
                  width: 1,
                ))),
                child: ListTile(
                  leading: Icon(Icons.circle, size: 8, color: appCardGreenColor),
                  title: Row(
                    children: [
                      Text(currentExercise.name),
                      Spacer(),
                      Text(currentExercise.cal.toString() + "千卡/1小時"),
                      SizedBox(width: 11),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        //解決按鈕點擊後產生的邊界
                        iconSize: 22,
                        onPressed: () {
                          setState(() {
                            allExerciseRecords.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.remove_circle,
                            color: Color.fromRGBO(226, 226, 226, 1)),
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.all(0),
                  minLeadingWidth: 0,
                  horizontalTitleGap: 9,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                ),
              );
            },
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('加總消耗',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              // SizedBox(width: 193),
              Text(totalExerciseCal.toString()+' 千卡',//'132 千卡',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 22),
          Row(
            children: [
              Text('運動清單',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(width: 173),
              Row(
                children: [
                  Text('自定義',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  SizedBox(width: 9),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Image.asset('assets/images/addButton.png',height: 22,width: 22),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              insetPadding: EdgeInsets.all(16),
                              titlePadding: EdgeInsets.only(top: 24),
                              contentPadding:
                                  EdgeInsets.only(top: 24, left: 24, right: 24),
                              actionsPadding: EdgeInsets.only(
                                  top: 16, left: 24, right: 24, bottom: 24),
                              title: Text('新增自定義',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '名稱',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 9.5, horizontal: 12),
                                        fillColor:
                                            Color.fromRGBO(238, 238, 238, 1.0),
                                        hintText: 'ex:跳繩',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '熱量(千卡/100g)',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    height: 40,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 9.5, horizontal: 12),
                                        fillColor:
                                            Color.fromRGBO(238, 238, 238, 1.0),
                                        hintText: 'ex:504',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                Row(
                                  children: [
                                    Container(
                                      width: 132,
                                      child: ElevatedButton(
                                        child: Text("確認",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  appCardGreenColor),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Container(
                                      width: 132,
                                      child: ElevatedButton(
                                        child: Text("取消",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  appCardGreenColor),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),
          Container(
            height: 40,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(238, 238, 238, 1.0),
                prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                hintText: '搜尋',
                hintStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: searchExcerList,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: excerLists.length,
            itemBuilder: (context, index) {
              final exercise = excerLists[index];
              var minutes = 0;
              return Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(
                  color: Color.fromRGBO(226, 226, 226, 1),
                  width: 1,
                ))),
                child: ListTile(
                  leading: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Image.asset('assets/images/addButton.png',height: 22,width: 22),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              insetPadding: EdgeInsets.all(16),
                              titlePadding: EdgeInsets.only(top: 24),
                              // contentPadding:
                              // EdgeInsets.only(top: 24, left: 24, right: 24),
                              actionsPadding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                              title: Text(exercise.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("請輸入運動時間(分鐘)"),
                                  SizedBox(height: 8),
                                  TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 9.5, horizontal: 12),
                                      fillColor:
                                      Color.fromRGBO(238, 238, 238, 1.0),
                                      hintText: 'ex:35',
                                      hintStyle: TextStyle(fontSize: 14),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      minutes = int.parse(value);
                                    },
                                  ),
                                ],
                              ),
                              actions: [
                                Row(
                                  children: [
                                    Container(
                                      width: 132,
                                      child: ElevatedButton(
                                        child: Text("確認",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(
                                              appCardGreenColor),
                                        ),
                                        onPressed: () {
                                          final calories = exercise.cal * minutes / 60;
                                          final newExercise = Exercise(name: exercise.name, cal: calories);
                                          setState(() {
                                            allExerciseRecords.add(newExercise);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Container(
                                      width: 132,
                                      child: ElevatedButton(
                                        child: Text("取消",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all(
                                              appCardGreenColor),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          });
                    },
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(exercise.name),
                      Text(exercise.cal.toString() + "千卡/1小時"),
                    ],
                  ),
                  contentPadding: EdgeInsets.all(0),
                  minLeadingWidth: 0,
                  horizontalTitleGap: 9,
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

