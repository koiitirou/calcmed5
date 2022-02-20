import 'package:calcmed/myfunction2.dart';
import 'package:flutter/material.dart';
import 'myfunctions.dart';
import 'dart:math';
import 'adsList.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<bool> _sc0 = [
  false,
  true,
];
List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Ccr_cal'));

class Ccr_cal extends StatefulWidget {
  const Ccr_cal({Key? key}) : super(key: key);
  static const routeName = '/Ccr_cal';

  @override
  State<Ccr_cal> createState() => _Ccr_calState();
}

class _Ccr_calState extends State<Ccr_cal> {
  TextEditingController ageController = TextEditingController();
  TextEditingController weiController = TextEditingController();
  TextEditingController creController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _ccrString = '0.0';
  String _egfString = '0.0';
  String _infoText = '';
  double _ccr = 0.0;
  double _egf = 0.0;
  double _sex_ccr = 1.0;
  double _sex_egf = 1.0;

  bool _notZero = false;

  List<bool> _sc1 = List.from(_sc0);

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      ageController.text = '';
      weiController.text = '';
      creController.text = '';
      _ccrString = '';
      _egfString = '';
      _infoText = '';
      _sc1 = List.from(_sc0);
      _notZero = false;
    });
  }

  void _calculateCCR() {
    setState(() {
      if (ageController.text.isEmpty ||
          weiController.text.isEmpty ||
          creController.text.isEmpty) {
        _ccrString = '';
        _egfString = '';
        _infoText = '';
      } else {
        _notZero = true;
        _sex_ccr = (_sc1.first ? 1 : 0.85);
        _sex_egf = (_sc1.first ? 1 : 0.739);
        double age = double.parse(ageController.text);
        double wei = double.parse(weiController.text);
        double cre = double.parse(creController.text);
        _ccr = _sex_ccr * ((140 - age) * (wei / (72 * cre)));
        _ccrString = _ccr.toStringAsFixed(2);
        _egf = _sex_egf * (194 * pow(cre, -1.094) * pow(age, -0.287));
        _egfString = _egf.toStringAsFixed(2);

        if (_egf < 15) {
          _infoText = 'G5 末期腎不全 (<15)';
        } else if (_egf >= 15 && _egf < 30) {
          _infoText = 'G4 高度低下 (15～29)';
        } else if (_egf >= 30 && _egf < 45) {
          _infoText = 'G3b 中等度～高度低下 (30～44)';
        } else if (_egf >= 45 && _egf < 60) {
          _infoText = 'G3a 軽度～中等度低下 (45～59)';
        } else if (_egf >= 60 && _egf < 90) {
          _infoText = 'G2 正常または軽度低下 (60～89)';
        } else if (_egf >= 90) {
          _infoText = 'G1 正常または高値 (≧90)';
        }
      }
    });
  }

  //SingingCharacter? _character = SingingCharacter.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(Cc1s.Cc1_items[thisRouteId].jp_name),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  onPressed: _resetFields, icon: const Icon(Icons.refresh))
            ],
          ),
        ],
        body: Column(
          children: [
            Expanded(
              child: Form(
                  key: _formKey,
                  child: ListView(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    children: [
                      InpPadding(AppLocalizations.of(context)!.inputs),
                      //AppLocalizations.of(context)!.appTitle
                      //GenderRadio(_character),
                      MySelect1func1(
                          _sc1,
                          AppLocalizations.of(context)!.sex,
                          AppLocalizations.of(context)!.male,
                          AppLocalizations.of(context)!.female,
                          '',
                          '',
                          _calculateCCR),

                      FormTmp1(
                          ageController,
                          AppLocalizations.of(context)!.age,
                          '数値を入力して下さい',
                          '00',
                          AppLocalizations.of(context)!.years,
                          _calculateCCR),
                      FormTmp1(
                          weiController,
                          AppLocalizations.of(context)!.weight,
                          '数値を入力して下さい',
                          '00.0',
                          'kg',
                          _calculateCCR),
                      FormTmp1(creController, AppLocalizations.of(context)!.cre,
                          '数値を入力して下さい', '0.00', 'mg/dL', _calculateCCR),

                      InpPadding(AppLocalizations.of(context)!.results),
                      ResContainer2(AppLocalizations.of(context)!.ccr,
                          _ccrString, '  mL/min'),
                      ResContainer2(AppLocalizations.of(context)!.egfr,
                          _egfString, '  mL/min/1.73㎡'),
                      ResContainer1('GFR区分', _infoText),
                      calcPadding(
                          '*CCR推算式 (Cockcroft-Gaultの式)\n  男性：(140 - 年齢) * 体重 / (72 * 血清クレアチニン値)\n  女性：(140 - 年齢) * 体重 / (72 * 血清クレアチニン値) * 0.85'),
                      calcPadding(
                          '*eGFR計算式(成人の場合)\n  男性：194 * (血清クレアチニン値＾-1.094) * (年齢＾-0.287)\n  女性：194 * (血清クレアチニン値＾-1.094) * (年齢＾-0.287) * 0.739'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
