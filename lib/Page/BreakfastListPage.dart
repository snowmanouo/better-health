import 'package:flutter/material.dart';
import '../helpers/Constants.dart';
import 'BreakfastList.dart';

class BreakfastList extends StatefulWidget {
  @override
  _BreakfastListState createState() => _BreakfastListState();
}

class _BreakfastListState extends State<BreakfastList> {
  final controller = TextEditingController();
  List<Breakfast> breakfastLists = defaultBreakfastList;

  void searchBreakfastList(String query) {
    final suggestions = defaultBreakfastList.where((breakfastList) {
      final breakfastTitle = breakfastList.name.toLowerCase();
      final input = query.toLowerCase();

      return breakfastTitle.contains(input);
    }).toList();

    setState(() => breakfastLists = suggestions);
  }

  @override
  Widget build(BuildContext context) {
    String newFoodName = "";
    double newFoodCal = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('早餐',
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
          Text('當前飲食',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: allBreakfastRecords.length,
            itemBuilder: (context, index) {
              final currentBreakfast = allBreakfastRecords[index];
              return Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(
                  color: Color.fromRGBO(226, 226, 226, 1),
                  width: 1,
                ))),
                child: ListTile(
                  leading: Icon(Icons.circle, size: 8, color: appCardGreenColor),
                  title: Row(
                    children: [
                      Text(currentBreakfast.name),
                      Spacer(),
                      Text(currentBreakfast.cal.toString() + "千卡"),
                      SizedBox(width: 11),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        //解決按鈕點擊後產生的邊界
                        iconSize: 22,
                        onPressed: () {
                          setState(() {
                            allBreakfastRecords.removeAt(index);
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
              Text('加總攝取',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              // SizedBox(width: 193),
              Text(totalBreakfastCal.toString()+' 千卡',//'132 千卡',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 22),
          Row(
            children: [
              Text('飲食清單',
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
                                        hintText: 'ex:豬頭皮',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        newFoodName = value;
                                      },
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
                                        hintText: 'ex:300',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        newFoodCal = double.parse(value);
                                      },
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
                                          setState(() {
                                            var newFood = Breakfast(name: newFoodName, cal: newFoodCal);
                                            defaultBreakfastList.add(newFood);
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
              onChanged: searchBreakfastList,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: breakfastLists.length,
            itemBuilder: (context, index) {
              final breakfast = breakfastLists[index];
              var grams = 0;
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
                              title: Text(breakfast.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("請輸入吃了多少(g)"),
                                  SizedBox(height: 8),
                                  TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 9.5, horizontal: 12),
                                      fillColor:
                                      Color.fromRGBO(238, 238, 238, 1.0),
                                      hintText: 'ex:100',
                                      hintStyle: TextStyle(fontSize: 14),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      grams = int.parse(value);
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
                                          final calories = breakfast.cal * grams / 100;
                                          final newBreakfast = Breakfast(name: breakfast.name, cal: calories);
                                          setState(() {
                                            allBreakfastRecords.add(newBreakfast);
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
                      Text(breakfast.name),
                      Text(breakfast.cal.toString() + "千卡/100g"),
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

