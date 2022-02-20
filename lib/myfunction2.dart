import 'package:flutter/material.dart';

////////////////////////////////////
//Select 3 button Widget/////////////
class MySelectRow3func1 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String thirdText1;
  final String sub1;
  final String sub2;
  final String sub3;
  final Function func1;

  MySelectRow3func1(
      this.mysc,
      this.leading_text1,
      this.trueText1,
      this.falseText1,
      this.thirdText1,
      this.sub1,
      this.sub2,
      this.sub3,
      this.func1);

  @override
  _MySelectRow3func1State createState() => _MySelectRow3func1State(
      mysc,
      leading_text1,
      trueText1,
      falseText1,
      thirdText1,
      sub1,
      sub2,
      sub3,
      func1);
}

class _MySelectRow3func1State extends State<MySelectRow3func1> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String thirdText1;
  String sub1;
  String sub2;
  String sub3;
  Function func1;

  _MySelectRow3func1State(
      this.mysc,
      this.leading_text1,
      this.trueText1,
      this.falseText1,
      this.thirdText1,
      this.sub1,
      this.sub2,
      this.sub3,
      this.func1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
            bottom: BorderSide(width: 1.2, color: Colors.grey.shade600),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 8, 32, 8),
                child: Text(leading_text1,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 17)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: ToggleButtons(
                direction: Axis.vertical,
                verticalDirection: VerticalDirection.down,
                children: [
                  ConstrainedBox(
                      constraints:
                          BoxConstraints.expand(width: 200.0, height: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(trueText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub1,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints:
                          BoxConstraints.expand(width: 200.0, height: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(falseText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub2,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints:
                          BoxConstraints.expand(width: 200.0, height: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(thirdText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                ],
                isSelected: mysc,
                onPressed: (index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < mysc.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        mysc[buttonIndex] = true;
                      } else {
                        mysc[buttonIndex] = false;
                      }
                    }
                    ;
                    func1();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Custom Widget  Result

class ResContainer2 extends StatelessWidget {
  @override
  final String title1;
  final String value1;
  final String unit1;

  ResContainer2(this.title1, this.value1, this.unit1);
  Widget build(BuildContext context) {
    return Container(
      key: UniqueKey(),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: [
          ListTile(
            textColor: Colors.white,
            title: Text(title1),
            tileColor: Colors.grey,
            shape: const RoundedRectangleBorder(
                side: BorderSide(
              color: Colors.grey,
              width: 1,
            )),
          ),
          ListTile(
            tileColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value1),
                Text(
                  unit1,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            shape: const RoundedRectangleBorder(
                side: BorderSide(
              color: Colors.grey,
              width: 1,
            )),
          )
        ],
      ),
    );
  }
}

/////////////////////////////////////////

////////////////////////////////////
//Select button Widget/////////////
class MySelect1func1 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String sub1;
  final String sub2;
  final Function func1;

  MySelect1func1(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
    this.func1,
  );

  @override
  _MySelect1func1State createState() => _MySelect1func1State(
        mysc,
        leading_text1,
        trueText1,
        falseText1,
        sub1,
        sub2,
        func1,
      );
}

class _MySelect1func1State extends State<MySelect1func1> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String sub1;
  String sub2;
  Function func1;

  _MySelect1func1State(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
    this.func1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
            bottom: BorderSide(width: 1.2, color: Colors.grey.shade600),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 8, 32, 8),
                child: Text(leading_text1,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 17)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: ToggleButtons(
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints.expand(width: 100.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(trueText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub1,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints.expand(width: 100.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(falseText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub2,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                ],
                isSelected: mysc,
                onPressed: (index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < mysc.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        mysc[buttonIndex] = true;
                      } else {
                        mysc[buttonIndex] = false;
                      }
                      func1();
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////
///////////////////////////////////

////////////////////////////////////
//Select 3 button Widget/////////////
class MySelect3func1 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String thirdText1;
  final String sub1;
  final String sub2;
  final String sub3;
  final Function func1;

  MySelect3func1(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.thirdText1,
    this.sub1,
    this.sub2,
    this.sub3,
    this.func1,
  );

  @override
  _MySelect3func1State createState() => _MySelect3func1State(
        mysc,
        leading_text1,
        trueText1,
        falseText1,
        thirdText1,
        sub1,
        sub2,
        sub3,
        func1,
      );
}

class _MySelect3func1State extends State<MySelect3func1> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String thirdText1;
  String sub1;
  String sub2;
  String sub3;
  Function func1;

  _MySelect3func1State(
      this.mysc,
      this.leading_text1,
      this.trueText1,
      this.falseText1,
      this.thirdText1,
      this.sub1,
      this.sub2,
      this.sub3,
      this.func1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
            bottom: BorderSide(width: 1.2, color: Colors.grey.shade600),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 8, 32, 8),
                child: Text(leading_text1,
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 17)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: ToggleButtons(
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints.expand(width: 100.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(trueText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub1,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints.expand(width: 100.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(falseText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub2,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                  ConstrainedBox(
                      constraints: BoxConstraints.expand(width: 100.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(thirdText1),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text(
                              sub3,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      )),
                ],
                isSelected: mysc,
                onPressed: (index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < mysc.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        mysc[buttonIndex] = true;
                      } else {
                        mysc[buttonIndex] = false;
                      }
                    }
                    func1();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////
///////////////////////////////////

//////////////////////////
//Custom Widget  Form/////////
class FormTmp1 extends StatefulWidget {
  final TextEditingController FormCont;
  final String title1;
  final String err1;
  final String hint1;
  final String unit1;
  final Function func1;

  FormTmp1(this.FormCont, this.title1, this.err1, this.hint1, this.unit1,
      this.func1);

  @override
  _FormTmp1State createState() => _FormTmp1State(
        FormCont,
        title1,
        err1,
        hint1,
        unit1,
        func1,
      );
}

class _FormTmp1State extends State<FormTmp1> {
  TextEditingController FormCont;
  String title1;
  String err1;
  String hint1;
  String unit1;
  Function func1;

  _FormTmp1State(
    this.FormCont,
    this.title1,
    this.err1,
    this.hint1,
    this.unit1,
    this.func1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextFormField(
        //initialValue: '50',
        keyboardType: TextInputType.number,
        controller: FormCont,
        /* validator: (value) {
          if (value!.isEmpty) {
            return err1;
          }
        }, */
        textAlign: TextAlign.right,
        onChanged: (index) {
          setState(() {
            func1();
          });
        },
        decoration: InputDecoration(
          labelText: title1,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: hint1,
          suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Text(
              unit1,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}

//Custom Widget  Result

class ResContainer1 extends StatelessWidget {
  @override
  final String title1;
  final String value1;

  ResContainer1(this.title1, this.value1);
  Widget build(BuildContext context) {
    return Container(
      //key: UniqueKey(),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: [
          ListTile(
            textColor: Colors.white,
            title: Text(title1),
            tileColor: Colors.grey,
            shape: const RoundedRectangleBorder(
                side: BorderSide(
              color: Colors.grey,
              width: 1,
            )),
          ),
          ListTile(
            tileColor: Colors.white,
            title: Center(child: Text(value1)),
            shape: const RoundedRectangleBorder(
                side: BorderSide(
              color: Colors.grey,
              width: 1,
            )),
          )
        ],
      ),
    );
  }
}
/////////////////////////////////////////

////////////////////////////////////
//Select button Widget/////////////
class MySelect1func1wide1 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String sub1;
  final String sub2;
  final Function func1;

  MySelect1func1wide1(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
    this.func1,
  );

  @override
  _MySelect1func1wide1State createState() => _MySelect1func1wide1State(
        mysc,
        leading_text1,
        trueText1,
        falseText1,
        sub1,
        sub2,
        func1,
      );
}

class _MySelect1func1wide1State extends State<MySelect1func1wide1> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String sub1;
  String sub2;
  Function func1;

  _MySelect1func1wide1State(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
    this.func1,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade50),
            bottom: BorderSide(width: 1.2, color: Colors.grey.shade600),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 8, 32, 8),
              child: Text(leading_text1,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 17)),
            ),
            Flexible(
              child: ToggleButtons(
                children: [
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(trueText1),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            sub1,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                      //constraints: BoxConstraints.expand(width: 160.0),
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(falseText1),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            sub2,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
                isSelected: mysc,
                onPressed: (index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < mysc.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        mysc[buttonIndex] = true;
                      } else {
                        mysc[buttonIndex] = false;
                      }
                      func1();
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////
///////////////////////////////////
