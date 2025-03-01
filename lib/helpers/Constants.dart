import 'package:flutter/material.dart';
import  'package:intl/intl.dart';

//Color

Color appGreenColor = Color.fromRGBO(0,163,165,1);
Color appCardGreenColor = Color.fromRGBO(18, 213, 214,   1);
Color appCardGreen0Color = Color.fromRGBO(18, 213, 214, 0.4);
Color appCardRedColor = Color.fromRGBO(214, 19, 18, 1);
Color appCardRed0Color = Color.fromRGBO(214, 19, 18, 0.4);
Color appBackgroundColor = Color.fromRGBO(245, 245, 245, 1);
Color appGreyColor = Color.fromRGBO(127, 127, 127, 1);


//Strings
const AppTitle = "今天";
const BodyNum = "身體指數";
const YourCal = "你的熱量";
const EatDrink = "飲食攝入";
const Excercise = "運動消耗";


//Images
Image SettingButton = Image.asset('assets/images/setting.png');
Image UserButton = Image.asset('assets/images/user.png');
Image HomeButton = Image.asset('assets/images/home_off.png');
Image DiaryButton = Image.asset('assets/images/diary_off.png');
Image ProfileButton = Image.asset('assets/images/profile_off.png');
Image MoreButton = Image.asset('assets/images/more_off.png');
Image HomeButtonOn = Image.asset('assets/images/home_on.png');
Image DiaryButtonOn = Image.asset('assets/images/diary_on.png');
Image ProfileButtOn = Image.asset('assets/images/profile_on.png');
Image MoreButtoOn = Image.asset('assets/images/more_on.png');
Image BreakfastPic = Image.asset('assets/images/Breakfast.png');
Image LunchPic = Image.asset('assets/images/Lunch.png');
Image DinnerPic = Image.asset('assets/images/Dinner.png');
Image DessertPic = Image.asset('assets/images/Dessert.png');
Image ExcercisePic = Image.asset('assets/images/Excercise.png');
Image AddBut = Image.asset('assets/images/addButton.png');
Image QuestionMark = Image.asset('assets/images/question_mark.png');
Image TableWarePic = Image.asset('assets/images/Tableware.png');
Image DumbbelPic = Image.asset('assets/images/Dumbbel.png');
Image YourCalMore = Image.asset('assets/images/yourCalmore.png');

//怪獸等級經驗
int Level=1+(EXP~/100);
double LvPercent=(EXP%100)/100;
int bar=0+(EXP%100);
int EXP=2514;
//時間
DateTime now = DateTime.now();
var begin = DateFormat("HH:mm").format(DateTime.now());
var finish = DateFormat(":mm").format(DateTime.now());
var countdown = DateFormat("HH:mm:ss").format(DateTime.now());
var dt = DateTime.now();
int hour = now.hour;
//倒數計時
var period = const Duration(seconds: 1);




