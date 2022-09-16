import 'package:collection/collection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/Page/BreakfastList.dart';
import 'package:project/Page/DinnerList.dart';
import 'package:project/Page/LunchList.dart';
import 'package:project/Page/SnackList.dart';
import '../helpers/Constants.dart';
import 'BreakfastListPage.dart';
import 'LunchListPage.dart';
import 'DinnerListPage.dart';
import 'SnackListPage.dart';
import 'package:flutter/services.dart';
import 'ExerciseList.dart';
import 'ExerciseListPage.dart';
import 'package:project/Page/Database.dart';


double get totalDietCal =>
    allBreakfastRecords.map((e) => e.cal).sum +
    allLunchRecords.map((e) => e.cal).sum +
    allDinnerRecords.map((e) => e.cal).sum +
    allSnackRecords.map((e) => e.cal).sum;

class HealthPage extends StatefulWidget {
  const HealthPage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _HealthPageState createState() => _HealthPageState(user: _user);
}

class _HealthPageState extends State<HealthPage> {
  _HealthPageState({Key? key, required User user}) : _user = user;

  final User _user;
  OurUser _ourUser = OurUser.empty();

  @override
  void initState() {
    Database().getUser(widget._user.uid, (data) {
      setState(() {
        _ourUser = data;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("今天",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            )),
        backgroundColor: appGreenColor,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: <Widget>[
          Text(BodyNum,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          BodyNumWidget(
            bmi: _ourUser.bmi,
            pbf: _ourUser.pbf,
            bmr: _ourUser.bmr,
            idealWeight: _ourUser.idealWeight,
          ),
          SizedBox(height: 12),
          Container(
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(YourCal,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          YourCalWidget(
          tdee: _ourUser.tdee,
          ),
          SizedBox(height: 12),
          Text(EatDrink,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          EatDrinkWidget(
            notifyParent: refresh,
          ),
          SizedBox(height: 12),
          Text(Excercise,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          ExerciseWidget(
            notifyParent: refresh,
          ),
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

class ExerciseWidget extends StatefulWidget {
  const ExerciseWidget({Key? key, required this.notifyParent})
      : super(key: key);

  final Function() notifyParent;

  @override
  State<ExerciseWidget> createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: 360, maxHeight: 332, minWidth: 50, minHeight: 50),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              ExerciseCardWidget(
                text: '今日運動',
                mealPic: ExcercisePic,
                notifyParent: widget.notifyParent,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ExerciseCardWidget extends StatefulWidget {
  final String text;
  final Image mealPic;
  final Function() notifyParent;

  ExerciseCardWidget(
      {required this.text, required this.mealPic, required this.notifyParent});

  @override
  State<ExerciseCardWidget> createState() => _ExerciseCardWidgetState();
}

class _ExerciseCardWidgetState extends State<ExerciseCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.transparent, spreadRadius: 3),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 12),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  child: Text(this.widget.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black)),
                ),
                SizedBox(width: 43),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Image.asset('assets/images/addButton.png'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseList(),
                      ),
                    ).then((value) {
                      widget.notifyParent();
                    });
                  },
                ),
                SizedBox(width: 13),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                this.widget.mealPic,
                Positioned(
                  bottom: 10,
                  child: Text('約消耗${totalExerciseCal}千卡',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EatDrinkWidget extends StatefulWidget {
  const EatDrinkWidget({Key? key, required this.notifyParent})
      : super(key: key);

  final Function() notifyParent;

  @override
  State<EatDrinkWidget> createState() => _EatDrinkWidgetState();
}

class _EatDrinkWidgetState extends State<EatDrinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: 360, maxHeight: 332, minWidth: 50, minHeight: 50),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              MealCardWidget(
                text: '早餐',
                mealPic: BreakfastPic,
                cal: totalBreakfastCal,
                destination: BreakfastList(),
                notifyParent: widget.notifyParent,
              ),
              MealCardWidget(
                text: '午餐',
                mealPic: LunchPic,
                cal: totalLunchCal,
                destination: LunchList(),
                notifyParent: widget.notifyParent,
              ),
              MealCardWidget(
                text: '晚餐',
                mealPic: DinnerPic,
                cal: totalDinnerCal,
                destination: DinnerList(),
                notifyParent: widget.notifyParent,
              ),
              MealCardWidget(
                text: '點心',
                mealPic: DessertPic,
                cal: totalSnackCal,
                destination: SnackList(),
                notifyParent: widget.notifyParent,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MealCardWidget extends StatefulWidget {
  final String text;
  final double cal;
  final Image mealPic;
  final StatefulWidget destination;
  final Function() notifyParent;

  MealCardWidget(
      {required this.text,
      required this.mealPic,
      required this.cal,
      required this.destination,
      required this.notifyParent});

  @override
  State<MealCardWidget> createState() => _MealCardWidgetState();
}

class _MealCardWidgetState extends State<MealCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.transparent, spreadRadius: 3),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 12),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45,
                  child: Text(this.widget.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black)),
                ),
                SizedBox(width: 75),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Image.asset('assets/images/addButton.png'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => this.widget.destination,
                      ),
                    ).then((value) {
                      widget.notifyParent();
                    });
                  },
                ),
                SizedBox(width: 13),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                this.widget.mealPic,
                Positioned(
                  bottom: 10,
                  child: Text('約吃了${this.widget.cal}千卡',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class YourCalWidget extends StatefulWidget {
  const YourCalWidget({
    Key? key,
    required double tdee,
  }) :  _tdee = tdee,
        super(key: key);

        final double _tdee;

  @override
  State<YourCalWidget> createState() => _YourCalWidgetState();
}

class _YourCalWidgetState extends State<YourCalWidget> {

  @override
  Widget build(BuildContext context) {
    var _totalExerciseCal = totalExerciseCal;
    var _totalDietCal = totalDietCal;
    double _tdee;
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                appCardGreen0Color,
                appCardGreenColor,
              ]),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TDEE 狀態(正常)',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 157,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.transparent, spreadRadius: 3),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "建議攝入",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(127, 127, 127, 1),
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "123",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(24, 24, 24, 0.75),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Image.asset("assets/images/Divider.png"),
                                      SizedBox(height: 8),
                                      Text(
                                        "今日已攝入",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                127, 127, 127, 1)),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        _totalDietCal.toString(),
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(24, 24, 24, 0.75),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
              SizedBox(width: 18),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 13),
                            Text(
                              '今日數據',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(width: 13),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.white,
                                        insetPadding: EdgeInsets.all(16),
                                        titlePadding: EdgeInsets.only(top: 24),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 14),
                                        buttonPadding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        title: Text('數據說明',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            )),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              'TDEE = BMR + TEA +TEF',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              '總熱量消耗 = 基礎代謝 + 活動消耗 + 飲食消耗',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          SizedBox(
                                            width: 296,
                                            height: 52,
                                            child: ElevatedButton(
                                              child: Text(
                                                '確定',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
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
                                      );
                                    });
                              },
                              child: Image.asset(
                                  'assets/images/question_mark.png'),
                            ),
                            SizedBox(width: 13),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 157,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.transparent, spreadRadius: 3),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 32.5, right: 1.5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Image.asset(
                                            'assets/images/Tableware.png'),
                                        Text('食物攝取',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    127, 127, 127, 1),
                                                fontSize: 12)),
                                        SizedBox(height: 3),
                                        Text( _totalDietCal.toString() + '千卡',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.,
                                      children: [
                                        Image.asset(
                                            'assets/images/Dumbbel.png'),
                                        Text('運動消耗',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    127, 127, 127, 1),
                                                fontSize: 12)),
                                        SizedBox(height: 3),
                                        Text(
                                            _totalExerciseCal.toString() + '千卡',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyNumWidget extends StatefulWidget {
  const BodyNumWidget({
    Key? key,
    required double bmi,
    required double pbf,
    required double bmr,
    required double idealWeight,
  })  : _bmi = bmi,
        _pbf = pbf,
        _bmr = bmr,
        _idealWeight = idealWeight,
        super(key: key);

  final double _bmi;
  final double _pbf;
  final double _bmr;
  final double _idealWeight;

  @override
  State<BodyNumWidget> createState() => _BodyNumWidgetState();
}

class _BodyNumWidgetState extends State<BodyNumWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(color: Colors.transparent, spreadRadius: 3),
            ],
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text('BMI',
                      style: TextStyle(fontSize: 14, color: appGreyColor)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(widget._bmi.toStringAsFixed(1),
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
        flex: 1,
      ),
      SizedBox(width: 12),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(color: Colors.transparent, spreadRadius: 3),
            ],
          ),
          height: 90,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text('體脂率',
                      style: TextStyle(fontSize: 14, color: appGreyColor)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(widget._pbf.toStringAsFixed(1) + "%",
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
        flex: 1,
      ),
      SizedBox(width: 12),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(color: Colors.transparent, spreadRadius: 3),
            ],
          ),
          height: 90,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text('基礎代謝',
                      style: TextStyle(fontSize: 14, color: appGreyColor)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(widget._bmr.toStringAsFixed(1) + "kcal",
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
        flex: 1,
      ),
      SizedBox(width: 12),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(color: Colors.transparent, spreadRadius: 3),
            ],
          ),
          height: 90,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text('理想體重',
                      style: TextStyle(fontSize: 14, color: appGreyColor)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(widget._idealWeight.toStringAsFixed(1) + "kg",
                      style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
        flex: 1,
      ),
    ]);
  }
}
