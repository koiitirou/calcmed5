//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:io';
import 'package:universal_io/io.dart';

String mylocale1 = Platform.localeName.substring(0, 2);

class Cc1 {
  String id;
  String jp_name;
  String jp_name_sort;
  String jp_category_name;
  String jp_category_sort;
  String route_id;
  String mainDes;
  String subDes;
  String desSort;

  Cc1(
    this.id,
    this.jp_name,
    this.jp_name_sort,
    this.jp_category_name,
    this.jp_category_sort,
    this.route_id,
    this.mainDes,
    this.subDes,
    this.desSort,
  );
}

class Cc1s {
  static List Cc1_items = [
    if (mylocale1 == 'ja')
      Cc1('101', 'γ計算（点滴速度計算）', 'が', '一般', 'い', '/Gam_cal', 'γ計算（ガンマ計算）',
          '薬剤点滴速度計算（シリンジポンプ）', 'g'),
    if (mylocale1 != 'ja')
      Cc1('101', 'Infusion dose calculation', 'g', 'General', 'ge', '/Gam_cal',
          'Infusion dose calculation', 'Desired dose and rate', 'g'),

    ///
    if (mylocale1 == 'ja')
      Cc1('102', '点滴滴下数の計算', 'て', '一般', 'い', '/Div_cal', '点滴滴下数の計算',
          '1分、10秒あたりの滴下数', 'd'),
    if (mylocale1 != 'ja')
      Cc1('102', 'Drip rate calculation', 'd', 'General', 'ge', '/Div_cal',
          'Drip rate calculation', 'drops per minute/10 seconds', 'd'),

    ///
    if (mylocale1 == 'ja')
      Cc1('201', 'BMI (体格指数)', 'た', '一般', 'い', '/Bmi_cal',
          'BMI (Body Mass Index)', '肥満度を表す体格指数', 'b'),
    if (mylocale1 != 'ja')
      Cc1('201', 'Body Mass Index', 'b', 'General', 'ge', '/Bmi_cal', 'BMI',
          'Calculate Body Mass Index', 'b'),

    ///
    if (mylocale1 == 'ja')
      Cc1('202', 'クレアチニンクリアランス、推算糸球体濾過量', 'く', '腎臓', 'じ', '/Ccr_cal',
          'Ccr, eGFR', 'クレアチニンクリアランス、推算糸球体濾過量', 'c'),
    if (mylocale1 != 'ja')
      Cc1('202', 'Ccr, eGFR', 'c', 'Nephrology', 'n', '/Ccr_cal', 'Ccr, eGFR',
          'Calculate Ccr (Cockcroft-Gault Equation)', 'c'),

    ///
    if (mylocale1 == 'ja')
      Cc1('203', 'CHADS2スコア', 'ちゃ', '循環器', 'じゅ', '/Ch2_cal', 'CHADS2スコア',
          '心房細動における脳梗塞発症リスク', 'c'),
    if (mylocale1 != 'ja')
      Cc1('203', 'CHADS2 score', 'c', 'Cardiology', 'c', '/Ch2_cal',
          'CHADS2 score', 'risk of stroke in atrial fibrillation', 'c'),
    ////
    if (mylocale1 == 'ja')
      Cc1('204', 'CHA2DS2-VAScスコア', 'ちゃ', '循環器', 'じゅ', '/Chv_cal',
          'CHA2DS2-VAScスコア', '心房細動における細分化した脳梗塞発症リスク', 'c'),
    if (mylocale1 != 'ja')
      Cc1('204', 'CHA2DS2-VASc score', 'c', 'Cardiology', 'c', '/Chv_cal',
          'CHA2DS2-VASc score', 'risk of stroke in atrial fibrillation', 'c'),
    ////
    if (mylocale1 == 'ja')
      Cc1('205', 'LDLコレステロール計算法(F式)', 'え', '循環器', 'じゅ', '/Ldl_cal',
          'LDLコレステロール計算法Friedewaldの式 (F式)', '悪玉コレステロールの計算式', 'l'),
    if (mylocale1 != 'ja')
      Cc1('205', 'LDL Calculated', 'l', 'Cardiology', 'c', '/Ldl_cal',
          'LDL-cholesterol calculated ', 'Friedewald formula', 'l'),
    ////
    if (mylocale1 == 'ja')
      Cc1('206', 'FeNa (ナトリウム排泄率)', 'な', '腎臓', 'じ', '/Fen_cal',
          'FeNa(ナトリウム排泄率)', '急性腎不全における鑑別の指標', 'f'),
    if (mylocale1 != 'ja')
      Cc1(
          '206',
          'Fractional Excretion of Sodium',
          'f',
          'Nephrology',
          'n',
          '/Fen_cal',
          'FeNa(Fractional Excretion of Sodium)',
          'evaluate acute kidney injury',
          'f'),
    ////
    if (mylocale1 == 'ja')
      Cc1('207', 'HAS-BLEDスコア', 'は', '循環器', 'じゅ', '/Has_cal', 'HAS-BLEDスコア',
          '抗凝固療法適応の心房細動患者における出血リスク', 'h'),
    if (mylocale1 != 'ja')
      Cc1(
          '207',
          'HAS-BLED score',
          'h',
          'Cardiology',
          'h',
          '/Has_cal',
          'HAS-BLED score',
          'Bleeding risk in atrial fibrilattion indicated for anticoagulant',
          'h'),
    ////
    if (mylocale1 == 'ja')
      Cc1('208', 'MELD/MELD Naスコア', 'め', '消化器', 'しょ', '/Mel_cal',
          'MELD/MELD-Naスコア', '肝硬変/肝移植登録者(12歳以上)の肝予備能診断', 'm'),
    if (mylocale1 != 'ja')
      Cc1('208', 'MELD/MELD Na score', 'm', 'Gastroenterology', 'g', '/Mel_cal',
          'MELD/MELD-Na score', 'severity of chronic liver disease', 'm'),
    ////
    if (mylocale1 == 'ja')
      Cc1('209', '補正QT間隔', 'ほ', '循環器', 'じゅ', '/Qtc_cal',
          'QTc Bazzet/Fridericia/Framingham式', '心拍数による補正QT間隔', 'q'),
    if (mylocale1 != 'ja')
      Cc1(
          '209',
          'Corrected QT Interval',
          'q',
          'Cardiology',
          'c',
          '/Qtc_cal',
          'QTc Bazzet/Fridericia/Framingham',
          'Corrected QT interval by heart rate',
          'q'),
    ////
    if (mylocale1 == 'ja')
      Cc1('210', 'Child-Pughスコア', 'ちゃ', '消化器', 'しょ', '/Chp_cal',
          'Child-Pughスコア', '肝硬変及び肝予備能診断', 'c'),
    if (mylocale1 != 'ja')
      Cc1('210', 'Child-Pugh Score', 'c', 'Gastroenterology', 'g', '/Chp_cal',
          'Child-Pugh score', 'Chronic liver disease and cirrhosis', 'c'),
    ////
    if (mylocale1 == 'ja')
      Cc1('211', '検査の陽性的中率と陰性的中率', 'け', '一般', 'い', '/Bay_cal',
          '陽性的中率と陰性的中率(有病率指定)', 'ベイズの定理による診断推論と確率', 'け'),
    if (mylocale1 != 'ja')
      Cc1(
          '211',
          'Bayes\'s theorem',
          'b',
          'General',
          'ge',
          '/Bay_cal',
          'Positive predictive value and Negative predictive value',
          'Bayes\'s theorem',
          'け'),
    ////
    if (mylocale1 == 'ja')
      Cc1('212', 'A-DROPスコア', 'え', '呼吸器', 'こ', '/Adr_cal', 'A-DROPスコア',
          '肺炎の重症度分類（身体所見、年齢による）', 'a'),
    if (mylocale1 != 'ja')
      Cc1('212', 'A-DROP score', 'a', 'Respirology', 'r', '/Adr_cal',
          'A-DROP score', 'Pneumonia severity', 'a'),
    ////
    if (mylocale1 == 'ja')
      Cc1('213', 'CURB65', 'か', '呼吸器', 'こ', '/Cur_cal', 'CURB65',
          '肺炎の重症度分類（身体所見、年齢による）', 'c'),
    if (mylocale1 != 'ja')
      Cc1('213', 'CURB65', 'c', 'Respirology', 'r', '/Cur_cal', 'CURB65',
          'Pneumonia severity', 'c'),
    ////
    if (mylocale1 == 'ja')
      Cc1('214', 'HOMA-IR HOMA-β', 'ほ', '糖尿病', 'と', '/Hom_cal',
          'HOMA-IR HOMA-β', 'インスリンの指標', 'h'),
    if (mylocale1 != 'ja')
      Cc1('214', 'HOMA-IR HOMA-β', 'h', 'Diabetology', 'd', '/Hom_cal',
          'HOMA-IR HOMA-β', 'Insulin sensitivity/resistance index', 'h'),
  ];
}

//Custome Widget Reslts
class InpPadding extends StatefulWidget {
  final String title1;

  InpPadding(this.title1);

  @override
  _InpPaddingState createState() => _InpPaddingState(title1);
}

class _InpPaddingState extends State<InpPadding> {
  String title1;

  _InpPaddingState(this.title1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Text(title1),
    );
  }
}

//Custom Widget  Result
class ResContainer extends StatefulWidget {
  final String title1;
  final String value1;

  ResContainer(this.title1, this.value1);

  @override
  _ResContainerState createState() => _ResContainerState(title1, value1);
}

class _ResContainerState extends State<ResContainer> {
  String title1;
  String value1;

  _ResContainerState(this.title1, this.value1);

  @override
  Widget build(BuildContext context) {
    return Container(
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

////////////////////////
///
//////////////////////////
//Custom Widget  Form/////////
class FormTmp extends StatefulWidget {
  final TextEditingController FormCont;
  final String title1;
  final String err1;
  final String hint1;
  final String unit1;

  FormTmp(this.FormCont, this.title1, this.err1, this.hint1, this.unit1);

  @override
  _FormTmpState createState() =>
      _FormTmpState(FormCont, title1, err1, hint1, unit1);
}

class _FormTmpState extends State<FormTmp> {
  TextEditingController FormCont;
  String title1;
  String err1;
  String hint1;
  String unit1;

  _FormTmpState(this.FormCont, this.title1, this.err1, this.hint1, this.unit1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: TextFormField(
        //initialValue: '50',
        keyboardType: TextInputType.number,
        controller: FormCont,
        validator: (value) {
          if (value!.isEmpty) {
            return err1;
          }
        },
        textAlign: TextAlign.right,
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

///////////////////////////
//Custome Widget calculate
class CalcButton extends StatefulWidget {
  final GlobalKey<FormState> formKey1;
  final Function function1;
  final String title1;

  CalcButton(this.formKey1, this.function1, this.title1);

  @override
  _CalcButtonState createState() =>
      _CalcButtonState(formKey1, function1, title1);
}

class _CalcButtonState extends State<CalcButton> {
  GlobalKey<FormState> formKey1;
  Function function1;
  String title1;

  _CalcButtonState(this.formKey1, this.function1, this.title1);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          if (formKey1.currentState!.validate()) {
            function1();
          }
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            title1,
          ),
        ),
        style: ElevatedButton.styleFrom(),
      ),
    ));
  }
}

///////////////////////////////
//////////////////////////////
enum SingingCharacter { male, female }

//Custome Widget gender
class GenderRadio extends StatefulWidget {
  final SingingCharacter? character1;
  GenderRadio(this.character1);

  @override
  _GenderRadioState createState() => _GenderRadioState(character1);
}

class _GenderRadioState extends State<GenderRadio> {
  SingingCharacter? character1;
  _GenderRadioState(this.character1);

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
              child: Text('性別',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 17)),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ListTile(
                        title: const Text('男性'),
                        leading: Radio<SingingCharacter>(
                            value: SingingCharacter.male,
                            groupValue: character1,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                character1 = value;
                              });
                            })),
                  ),
                  Expanded(
                    child: ListTile(
                        title: const Text('女性'),
                        leading: Radio<SingingCharacter>(
                            value: SingingCharacter.female,
                            groupValue: character1,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                character1 = value;
                              });
                            })),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////
//Custome Widget Reslts/////////////
class MyToggle extends StatefulWidget {
  final String title1;

  MyToggle(this.title1);

  @override
  _MyToggleState createState() => _MyToggleState(title1);
}

class _MyToggleState extends State<MyToggle> {
  String title1;

  _MyToggleState(this.title1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Text(title1),
    );
  }
}
////////End////////////////////////
///////////////////////////////////

////////////////////////////////////
//Select button Widget/////////////
class MySelect1 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String sub1;
  final String sub2;

  MySelect1(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
  );

  @override
  _MySelect1State createState() => _MySelect1State(
        mysc,
        leading_text1,
        trueText1,
        falseText1,
        sub1,
        sub2,
      );
}

class _MySelect1State extends State<MySelect1> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  final String sub1;
  final String sub2;

  _MySelect1State(
    this.mysc,
    this.leading_text1,
    this.trueText1,
    this.falseText1,
    this.sub1,
    this.sub2,
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
///references Padding
class calcPadding extends StatelessWidget {
  @override
  final String ref1;
  calcPadding(this.ref1); // コンストラクタで引数を受け取る
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: Text(
          ref1,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ));
  }
}
/////////////////////////////////////////////
//////////////////////////////////////////

///////////////////////////////////
///////////////////////////////////
///references Padding
class refPadding extends StatefulWidget {
  @override
  final String ref1;
  final String ref2;
  refPadding(this.ref1, this.ref2);
  @override
  State<refPadding> createState() => _refPaddingState();
}

class _refPaddingState extends State<refPadding> {
  // コンストラクタで引数を受け取る
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: InkWell(
          child: Text(
            widget.ref1,
            style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 86, 140, 184),
                decoration: TextDecoration.underline),
          ),
          onTap: () => launchURL(Uri.encodeFull(widget.ref2))),
    );
  }
}
/////////////////////////////////////////////
//////////////////////////////////////////

////////////////////////////////////
//Select 3 button Widget/////////////
class MySelect3 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String thirdText1;
  final String sub1;
  final String sub2;
  final String sub3;

  MySelect3(this.mysc, this.leading_text1, this.trueText1, this.falseText1,
      this.thirdText1, this.sub1, this.sub2, this.sub3);

  @override
  _MySelect3State createState() => _MySelect3State(
      mysc, leading_text1, trueText1, falseText1, thirdText1, sub1, sub2, sub3);
}

class _MySelect3State extends State<MySelect3> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String thirdText1;
  String sub1;
  String sub2;
  String sub3;

  _MySelect3State(this.mysc, this.leading_text1, this.trueText1,
      this.falseText1, this.thirdText1, this.sub1, this.sub2, this.sub3);

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
class MySelectRow3 extends StatefulWidget {
  final List<bool> mysc;
  final String leading_text1;
  final String trueText1;
  final String falseText1;
  final String thirdText1;
  final String sub1;
  final String sub2;
  final String sub3;

  MySelectRow3(this.mysc, this.leading_text1, this.trueText1, this.falseText1,
      this.thirdText1, this.sub1, this.sub2, this.sub3);

  @override
  _MySelectRow3State createState() => _MySelectRow3State(
      mysc, leading_text1, trueText1, falseText1, thirdText1, sub1, sub2, sub3);
}

class _MySelectRow3State extends State<MySelectRow3> {
  List<bool> mysc;
  String leading_text1;
  String trueText1;
  String falseText1;
  String thirdText1;
  String sub1;
  String sub2;
  String sub3;

  _MySelectRow3State(this.mysc, this.leading_text1, this.trueText1,
      this.falseText1, this.thirdText1, this.sub1, this.sub2, this.sub3);

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
