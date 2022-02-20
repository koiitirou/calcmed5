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
    routeIds.indexWhere((note) => note.startsWith('/Has_cal'));

class Has_cal extends StatefulWidget {
  const Has_cal({Key? key}) : super(key: key);
  static const routeName = '/Has_cal';

  @override
  State<Has_cal> createState() => _Has_calState();
}

class _Has_calState extends State<Has_cal> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _ch2String = '0';
  String _infoText = '1.13% (0点) [1]';
  double _imc = 0.0;
  bool _notZero = false;

  String _strokeRate1 = '1.9';
  String _strokeRate2 = '0.5';
  List _sc0s = [
    for (int i1 = 0; i1 < 9; i1++)
      [
        false,
        true,
      ]
  ];
  List<String> rate1 = [
    '1.13',
    '1.02',
    '1.88',
    '3.74',
    '8.7',
    '12.50',
    '12.50',
    '12.50',
    '12.50',
    '12.50'
  ];
  List<String> rate2 = [
    ' (0点)',
    ' (1点)',
    ' (2点)',
    ' (3点)',
    ' (4点)',
    ' (≧5点)',
    '(≧5点)',
    '(≧5点)',
    '(≧5点)',
    '(≧5点)'
  ];
  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      _sc0s = [
        for (int i1 = 0; i1 < 9; i1++)
          [
            false,
            true,
          ]
      ];
      String _infoText = '1.13% (0点) [1]';
      _ch2String = '0';
    });
  }

  void _calculateIMC() {
    //_formKey = GlobalKey<FormState>();
    _notZero = false;
    int _ch2Score = 0;
    setState(() {
      for (int i = 0; i < _sc0s.length; i++) {
        _ch2Score += (_sc0s[i].first ? 1 : 0);
      }
      _notZero = true;
      _ch2String = _ch2Score.toStringAsFixed(0);
      _infoText = rate1[_ch2Score] + ' % ' + rate2[_ch2Score] + '  [1]';
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
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: <Widget>[
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  MySelect1func1(_sc0s[0], '高血圧 (sBP >160mmHg)', 'あり', 'なし',
                      '+1', '0', _calculateIMC),
                  MySelect1func1(
                      _sc0s[1], '肝機能異常', 'あり', 'なし', '+1', '0', _calculateIMC),
                  MySelect1func1(
                      _sc0s[2], '腎機能異常', 'あり', 'なし', '+1', '0', _calculateIMC),
                  MySelect1func1(
                      _sc0s[3], '脳卒中の既往', 'あり', 'なし', '+1', '0', _calculateIMC),
                  MySelect1func1(_sc0s[4], '出血歴/出血素因', 'あり', 'なし', '+1', '0',
                      _calculateIMC),
                  MySelect1func1(_sc0s[5], '不安定/高値INR・TTR', 'はい', 'いいえ', '+1',
                      '0', _calculateIMC),
                  MySelect1func1(_sc0s[6], '年齢>65歳', 'はい', 'いいえ', '+1', '0',
                      _calculateIMC),
                  MySelect1func1(_sc0s[7], '抗血小板薬/NSAIDS使用', 'あり', 'なし', '+1',
                      '0', _calculateIMC),
                  MySelect1func1(_sc0s[8], 'アルコール依存', 'あり', 'なし', '+1', '0',
                      _calculateIMC),
                  //CalcButton(_formKey, _calculateIMC, '計算'),
                  //if (_notZero) ...[
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer1('HAS-BLEDスコア', '$_ch2String 点'),
                  ResContainer1('補正年間大出血発症率', '$_infoText'),
                  InpPadding('参考文献'),
                  refPadding(
                      '[1]  Pisters R et al. A novel user-friendly score (HAS-BLED) to assess 1-year risk of major bleeding in patients with atrial fibrillation: the Euro Heart Survey. Chest 2010; 138: 1093– 1100.',
                      'https://pubmed.ncbi.nlm.nih.gov/20299623/'),
                  //]
                ],
              ),
            ),
            //adSetPlace14s
            adContainer2,
            //adSetPlace14e
          ],
        ),
      ),
    );
  }
}
