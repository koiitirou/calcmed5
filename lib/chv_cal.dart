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

List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Chv_cal'));

class Chv_cal extends StatefulWidget {
  const Chv_cal({Key? key}) : super(key: key);
  static const routeName = '/Chv_cal';

  @override
  State<Chv_cal> createState() => _Chv_calState();
}

class _Chv_calState extends State<Chv_cal> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _ch2String = '0';
  final String _infoText = '';
  final double _imc = 0.0;
  bool _notZero = false;
  int _ch2Score = 0;
  String _strokeRate1 = '1.9';
  String _strokeRate2 = '0.5';

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _sc3 = [
    false,
    false,
    true,
  ];
  List<bool> _sc2 = List.from(_sc0);
  List<bool> _sc4 = List.from(_sc0);
  List<bool> _sc5 = List.from(_sc0);
  List<bool> _sc6 = List.from(_sc0);
  List<bool> _sc7 = [
    false,
    true,
  ];

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      _sc1 = List.from(_sc0);
      _sc2 = List.from(_sc0);
      _sc3 = [
        false,
        false,
        true,
      ];
      _sc4 = List.from(_sc0);
      _sc5 = List.from(_sc0);
      _sc6 = List.from(_sc0);
      _sc7 = [
        false,
        true,
      ];
    });
  }

  void _calculateIMC() {
    //_formKey = GlobalKey<FormState>();
    _notZero = false;
    setState(() {
      _notZero = true;
      _ch2Score = (_sc1.first ? 1 : 0) +
          (_sc2.first ? 1 : 0) +
          (_sc3.first ? 2 : 0) +
          (_sc3[1] ? 1 : 0) +
          (_sc4.first ? 1 : 0) +
          (_sc5.first ? 2 : 0) +
          (_sc6.first ? 1 : 0) +
          (_sc7.first ? 1 : 0);
      _ch2String = _ch2Score.toStringAsFixed(0);
      if (_ch2Score == 0) {
        _strokeRate1 = '0.2';
        _strokeRate2 = '0.3';
      } else if (_ch2Score == 1) {
        _strokeRate1 = '0.6';
        _strokeRate2 = '0.9';
      } else if (_ch2Score == 2) {
        _strokeRate1 = '2.2';
        _strokeRate2 = '2.9';
      } else if (_ch2Score == 3) {
        _strokeRate1 = '3.2';
        _strokeRate2 = '4.6';
      } else if (_ch2Score == 4) {
        _strokeRate1 = '4.8';
        _strokeRate2 = '6.7';
      } else if (_ch2Score == 5) {
        _strokeRate1 = '7.2';
        _strokeRate2 = '10.0';
      } else if (_ch2Score == 6) {
        _strokeRate1 = '9.7';
        _strokeRate2 = '13.6';
      } else if (_ch2Score == 7) {
        _strokeRate1 = '11.2';
        _strokeRate2 = '15.7';
      } else if (_ch2Score == 8) {
        _strokeRate1 = '10.8';
        _strokeRate2 = '15.2';
      } else if (_ch2Score == 9) {
        _strokeRate1 = '12.2';
        _strokeRate2 = '17.4';
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
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    children: <Widget>[
                      InpPadding(AppLocalizations.of(context)!.inputs),
                      MySelect1func1(
                          _sc1, '心不全', 'あり', 'なし', '+1', '0', _calculateIMC),
                      MySelect3func1(_sc3, '年齢', '≧75', '65～74', '<65', '+2',
                          '+1', '0', _calculateIMC),
                      MySelect1func1(
                          _sc2, '高血圧', 'あり', 'なし', '+1', '0', _calculateIMC),
                      MySelect1func1(
                          _sc4, '糖尿病', 'あり', 'なし', '+1', '0', _calculateIMC),
                      MySelect1func1(_sc5, '脳梗塞/TIAの既往', 'あり', 'なし', '+2', '0',
                          _calculateIMC),
                      MySelect1func1(_sc6, '血管疾患の既往 (心筋梗塞、末梢動脈疾患、大動脈プラーク)',
                          'あり', 'なし', '+1', '0', _calculateIMC),
                      MySelect1func1(
                          _sc7, '性別', '女性', '男性', '+1', '0', _calculateIMC),
                      //CalcButton(_formKey, _calculateIMC, '計算'),
                      //if (_notZero) ...[
                      InpPadding(AppLocalizations.of(context)!.results),
                      ResContainer1('CHA2DS2-VAScスコア', '$_ch2String 点'),
                      ResContainer1('脳梗塞の年間発症率', '$_strokeRate1 %   [1]'),
                      ResContainer1(
                          '脳卒中/TIA/全身塞栓症の年間発症率', '$_strokeRate2 %   [1]'),
                      InpPadding('参考文献'),
                      refPadding(
                          '[1] Friberg L et al. Evaluation of risk stratification schemes for ischaemic stroke and bleeding in 182 678 patients with atrial fibrillation: the Swedish Atrial Fibrillation cohort study Eur Heart J. 2012 Jun;33(12):1500-10.',
                          'https://pubmed.ncbi.nlm.nih.gov/22246443/'),
                      //]
                    ]),
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
