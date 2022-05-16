import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';

import 'adsList.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

//adSetPlace11s
BannerAd myBanner = Banner2;
//BannerAd myBanner2 = Rectangle1;
BannerAdListener listener = listener1;
//adSetPlace11e

List<bool> _sc0 = [
  false,
  true,
];

List<bool> _tc0 = [
  false,
  false,
  true,
];

List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Chp_cal'));

class Chp_cal extends StatefulWidget {
  const Chp_cal({Key? key}) : super(key: key);
  static const routeName = '/Chp_cal';

  @override
  State<Chp_cal> createState() => _Chp_calState();
}

class _Chp_calState extends State<Chp_cal> {
  TextEditingController fIt1 = TextEditingController();
  TextEditingController fIt2 = TextEditingController();
  TextEditingController fIt3 = TextEditingController();
  TextEditingController fIt4 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _tc1 = List.from(_tc0);
  List<bool> _tc2 = List.from(_tc0);
  List<bool> _tc3 = List.from(_tc0);
  List<bool> _tc4 = List.from(_tc0);
  List<bool> _tc5 = List.from(_tc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _fSg1 = '';
  String fOt2Text = '';
  String fOt3Text = '';
  String fOt4Text = '';
  String _fSg2 = '';
  int fOt1 = 0;
  int fOt2 = 0;
  int fOt3 = 0;
  int fOt4 = 0;
  int fOt5 = 0;

  bool _notZero = false;

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      fIt1.text = '';
      fIt2.text = '';
      fIt3.text = '';
      fIt4.text = '';
      _sc1 = List.from(_sc0);
      _tc1 = List.from(_tc0);
      _tc2 = List.from(_tc0);
      _tc3 = List.from(_tc0);
      _tc4 = List.from(_tc0);
      _tc5 = List.from(_tc0);
      fOt1 = 0;
      fOt2 = 0;
      fOt3 = 0;
      fOt4 = 0;
      fOt5 = 0;
    });
  }

  void _calculate1() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      //_formKey = GlobalKey<FormState>();
      _notZero = true;
      fOt1 = (3 - _tc1.indexWhere((xx) => xx)) +
          (3 - _tc2.indexWhere((xx) => xx)) +
          (3 - _tc3.indexWhere((xx) => xx)) +
          (3 - _tc4.indexWhere((xx) => xx)) +
          (3 - _tc5.indexWhere((xx) => xx));

      //double fIt1num = double.parse(fIt1.text);
      //double fIt2num = double.parse(fIt2.text);
      //double fIt3num = double.parse(fIt3.text);
      //double fIt4num = double.parse(fIt4.text);

      //fOt1 = fIt2num / (sqrt(60 / fIt1num));
      //fOt2 = fIt2num / (pow(60 / fIt1num, 1 / 3));
      //fOt3 = fIt2num + 154 * (1 - 60 / fIt1num);
      //fOt4 = fIt2num + 1.75 * (fIt1num - 60);

      _fSg1 = fOt1.toStringAsFixed(0);
      //fOt2Text = fOt2.toStringAsFixed(0);
      //fOt3Text = fOt3.toStringAsFixed(0);
      //fOt4Text = fOt4.toStringAsFixed(0);

      if (fOt1 < 7) {
        _fSg2 = 'A (5～6点) [1]';
      } else if (fOt1 < 10) {
        _fSg2 = 'B (7～9点) [1]';
      } else {
        _fSg2 = 'C (10～15点) [1]';
      }
    });
  }

  //adSetPlace12s
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

//adSetPlace12e
  @override
  Widget build(BuildContext context) {
    //adSetPlace13s
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    final Container adContainer2 = adContainer1(adWidget, myBanner);
    //adSetPlace13e
    return Scaffold(
      //key: _formKey,
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
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: [
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  MySelectRow3func1(_tc1, '総ビリルビン値', '>3mg/dL', '2-3mg/dL',
                      '<2mg/dL', '+3', '+2', '+1', _calculate1),
                  MySelectRow3func1(_tc2, 'アルブミン値', '<2.8g/dL', '2.8-3.5g/dL',
                      '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                  MySelectRow3func1(_tc3, 'PT-INR', '>2.2', '1.7-2.2', '<1.7',
                      '+3', '+2', '+1', _calculate1),
                  MySelectRow3func1(_tc4, '腹水', '中等量以上(≧3L)', '少量(1-3L)', 'なし',
                      '+3', '+2', '+1', _calculate1),
                  MySelectRow3func1(_tc5, '肝性脳症', '時に昏睡(Ⅲ以上)', '軽度(Ⅰ, Ⅱ)', 'なし',
                      '+3', '+2', '+1', _calculate1),
                  //FormTmp(fIt1, '心拍数', AppLocalizations.of(context)!.valMessage, '00', '回/min'),
                  //FormTmp(fIt2, 'QT間隔', AppLocalizations.of(context)!.valMessage, '000', 'msec'),
                  //FormTmp(fIt3, 'PT-INR', AppLocalizations.of(context)!.valMessage, '0.00', ''),
                  //FormTmp(fIt4, '血清ナトリウム値', AppLocalizations.of(context)!.valMessage, '000.0', 'mEq/L'),
                  //CalcButton(_formKey, _calculate1, '計算'),
                  //if (_notZero) ...[
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer1('Child-Pughスコア', '$_fSg1 点'),
                  ResContainer1('Child-Pugh分類', _fSg2),
                  //ResContainer('Framingham式 補正QT間隔', '$fOt3Text msec'),
                  //ResContainer('Hodges式 補正QT間隔', '$fOt4Text msec'),
                  //ResContainer('eGFR, 推算糸球体濾過量', '$_egfString mL/min/1.73㎡'),
                  //ResContainer('GFR区分', _infoText),
                  //],
                  //calcPadding('RR間隔 = 60 / 心拍数'),
                  //calcPadding('*Bazzet式 QTc = QT間隔 / √(RR間隔)'),
                  //calcPadding('*Fridericia式 QTc = QT間隔/ (RR間隔)^1/3'),
                  //calcPadding('*Framingham式 QTc = QT間隔 + 154 x (1 - RR間隔)'),
                  //calcPadding('*Hodges式 QTc = QT間隔 + 1.75 x ( (60 / RR間隔) − 60)'),
                  InpPadding('参考文献'),
                  refPadding(
                      '[1] Child CG, Turcotte JG. Surgery and portal hypertension. Major Probl Clin Surg. 1964;1:1-85.',
                      'https://pubmed.ncbi.nlm.nih.gov/4950264/'),
                ],
              ),
            ),
//adSetPlace14s
            //adContainer2,
            //adSetPlace14e
          ],
        ),
      ),
    );
  }
}
