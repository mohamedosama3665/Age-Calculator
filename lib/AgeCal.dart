import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgeCal extends StatefulWidget {
  @override
  _AgeCalState createState() => _AgeCalState();
}

class _AgeCalState extends State<AgeCal> {
  DateTime birth;
  String birthDay = 'Day', birthMonth = 'Month', birthYear = 'Year';
  String nextYear = 'Year', nextMonth = 'Month', nextDay = 'Day';

  void _datePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1920),
            lastDate: DateTime.now())
        .then((value) {
      if (value == null) {
        return;
      } else {
        setState(() {
          birth = value;
          birthDay = DateFormat.d().format(birth);
          birthMonth = DateFormat.M().format(birth);
          birthYear = DateFormat.y().format(birth);
          nextYear = '0';
          if ((DateFormat.M().format(DateTime.now())).toString() ==
              birthMonth) {
            if (int.parse(DateFormat.d().format(DateTime.now())) <
                int.parse(birthDay)) {
              nextYear = nextMonth = '0';
              nextDay = (int.parse(birthDay) -
                      int.parse(DateFormat.d().format(DateTime.now())))
                  .toString();
            } else if (int.parse(DateFormat.d().format(DateTime.now())) ==
                int.parse(birthDay)) {
              nextYear = '1';
              nextDay = nextMonth = '0';
            } else {
              nextMonth = '10';
              if (int.parse(DateFormat.M().format(DateTime.now())) == 2) {
                if (int.parse(DateFormat.y().format(DateTime.now())) % 4 == 0) {
                  nextDay = (int.parse(birthDay) +
                          (29 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                } else {
                  nextDay = (int.parse(birthDay) +
                          (28 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                }
              } else if (int.parse(DateFormat.M().format(DateTime.now())) % 2 ==
                  0) {
                nextDay = (int.parse(birthDay) +
                        (30 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              } else {
                nextDay = (int.parse(birthDay) +
                        (31 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              }
            }
          } else if (int.parse((DateFormat.M().format(DateTime.now()))) <
              int.parse(birthMonth)) {
            nextMonth = (int.parse(birthMonth) -
                    int.parse((DateFormat.M().format(DateTime.now()))))
                .toString();
            if (int.parse(DateFormat.M().format(DateTime.now())) == 2) {
              if (int.parse(DateFormat.y().format(DateTime.now())) % 4 == 0) {
                if (int.parse(DateFormat.d().format(DateTime.now())) <
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) -
                          int.parse(DateFormat.d().format(DateTime.now())))
                      .toString();
                } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) +
                          (29 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                } else {
                  nextDay = '0';
                }
              } else {
                if (int.parse(DateFormat.d().format(DateTime.now())) <
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) -
                          int.parse(DateFormat.d().format(DateTime.now())))
                      .toString();
                } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) +
                          (28 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                } else {
                  nextDay = '0';
                }
              }
            } else if (int.parse(DateFormat.M().format(DateTime.now())) % 2 ==
                0) {
              if (int.parse(DateFormat.d().format(DateTime.now())) <
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) -
                        int.parse(DateFormat.d().format(DateTime.now())))
                    .toString();
              } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) +
                        (30 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              } else {
                nextDay = '0';
              }
            } else {
              if (int.parse(DateFormat.d().format(DateTime.now())) <
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) -
                        int.parse(DateFormat.d().format(DateTime.now())))
                    .toString();
              } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) +
                        (31 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              } else {
                nextDay = '0';
              }
            }
          } else {
            nextMonth = (12 -
                    int.parse(DateFormat.M().format(DateTime.now())) +
                    int.parse(birthMonth))
                .toString();
            if (int.parse(DateFormat.M().format(DateTime.now())) == 2) {
              if (int.parse(DateFormat.y().format(DateTime.now())) % 4 == 0) {
                if (int.parse(DateFormat.d().format(DateTime.now())) <
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) -
                          int.parse(DateFormat.d().format(DateTime.now())))
                      .toString();
                } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) +
                          (29 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                } else {
                  nextDay = '0';
                }
              } else {
                if (int.parse(DateFormat.d().format(DateTime.now())) <
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) -
                          int.parse(DateFormat.d().format(DateTime.now())))
                      .toString();
                } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                    int.parse(birthDay)) {
                  nextDay = (int.parse(birthDay) +
                          (28 -
                              int.parse(DateFormat.d().format(DateTime.now()))))
                      .toString();
                } else {
                  nextDay = '0';
                }
              }
            } else if (int.parse(DateFormat.M().format(DateTime.now())) % 2 ==
                0) {
              if (int.parse(DateFormat.d().format(DateTime.now())) <
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) -
                        int.parse(DateFormat.d().format(DateTime.now())))
                    .toString();
              } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) +
                        (30 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              } else {
                nextDay = '0';
              }
            } else {
              if (int.parse(DateFormat.d().format(DateTime.now())) <
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) -
                        int.parse(DateFormat.d().format(DateTime.now())))
                    .toString();
              } else if (int.parse(DateFormat.d().format(DateTime.now())) >
                  int.parse(birthDay)) {
                nextDay = (int.parse(birthDay) +
                        (31 - int.parse(DateFormat.d().format(DateTime.now()))))
                    .toString();
              } else {
                nextDay = '0';
              }
            }
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Age Calculator',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffE97714),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Date of Birth',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Days',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            "$birthDay",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Months',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            "$birthMonth",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Years',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            "$birthYear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            FlatButton(
                color: Color(0xffE97714),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: _datePicker,
                child: Text(
                  'Enter BirthDate',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            Text(
              'Next Birth Day in',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Days',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            nextDay,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Months',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            nextMonth,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: Color(0xffE97714),
                  child: Column(
                    children: [
                      Text(
                        'Years',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.045,
                          width: MediaQuery.of(context).size.width * 0.28,
                          margin: EdgeInsets.only(top: 8),
                          padding: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Text(
                            nextYear,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Color(0xffE97714),
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
              height: MediaQuery.of(context).size.width * 0.12,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.015,
                  horizontal: MediaQuery.of(context).size.width * 0.015),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'You have ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    height: MediaQuery.of(context).size.width * 0.12,
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width * 0.02),
                    color: Colors.white,
                    child: (nextYear!='Year')?Text(
                        (int.parse(DateFormat.M().format(DateTime.now())) <
                                int.parse(birthMonth)
                            ? (int.parse(DateFormat.y()
                                            .format(DateTime.now())) -
                                        int.parse(birthYear) -
                                        1)
                                    .toString() +
                                ' Years Old'
                            : (int.parse(DateFormat.y()
                                            .format(DateTime.now())) -
                                        int.parse(birthYear))
                                    .toString() +
                                ' Years Old'),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center):Text(' ')
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
            )
          ],
        ),
      ),
    );
  }
}
