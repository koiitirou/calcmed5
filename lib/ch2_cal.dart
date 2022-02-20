import 'package:flutter/material.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';

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
    routeIds.indexWhere((note) => note.startsWith('/Ch2_cal'));

class Ch2_cal extends StatefulWidget {
  const Ch2_cal({Key? key}) : super(key: key);
  static const routeName = '/Ch2_cal';

  @override
  State<Ch2_cal> createState() => _Ch2_calState();
}

class _Ch2_calState extends State<Ch2_cal> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _ch2String = '0';
  String _infoText = '';
  double _imc = 0.0;
  bool _notZero = false;
  int _ch2Score = 0;
  String _strokeRate1 = '1.9';
  String _strokeRate2 = '0.5';

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _sc2 = List.from(_sc0);
  List<bool> _sc3 = List.from(_sc0);
  List<bool> _sc4 = List.from(_sc0);
  List<bool> _sc5 = List.from(_sc0);

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      _sc1 = List.from(_sc0);
      _sc2 = List.from(_sc0);
      _sc3 = List.from(_sc0);
      _sc4 = List.from(_sc0);
      _sc5 = List.from(_sc0);
      _ch2Score = 0;
      _strokeRate1 = '1.9';
      _strokeRate2 = '0.5';
      _ch2String = '0';
    });
  }

  void _calculateIMC() {
    // _formKey = GlobalKey<FormState>();
    _notZero = false;
    setState(() {
      _notZero = true;
      _ch2Score = (_sc1.first ? 1 : 0) +
          (_sc2.first ? 1 : 0) +
          (_sc3.first ? 1 : 0) +
          (_sc4.first ? 1 : 0) +
          (_sc5.first ? 2 : 0);
      _ch2String = _ch2Score.toStringAsFixed(0);
      if (_ch2Score == 0) {
        _strokeRate1 = '1.9';
        _strokeRate2 = '0.5';
      } else if (_ch2Score == 1) {
        _strokeRate1 = '2.8';
        _strokeRate2 = '0.9';
      } else if (_ch2Score == 2) {
        _strokeRate1 = '4.0';
        _strokeRate2 = '1.5';
      } else if (_ch2Score == 3) {
        _strokeRate1 = '5.9';
        _strokeRate2 = '2.7';
      } else if (_ch2Score == 4) {
        _strokeRate1 = '8.5';
        _strokeRate2 = '6.1';
      } else if (_ch2Score == 5) {
        _strokeRate1 = '12.5';
        _strokeRate2 = '3.9';
      } else if (_ch2Score == 6) {
        _strokeRate1 = '18.2';
        _strokeRate2 = '7.2';
      }
    });
  }

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
                    children: <Widget>[
                      InpPadding('入力'),
                      MySelect1func1(
                          _sc1,
                          '心不全',
                          AppLocalizations.of(context)!.yes,
                          AppLocalizations.of(context)!.no,
                          '+1',
                          '0',
                          _calculateIMC),
                      MySelect1func1(_sc3, '年齢', '75歳以上', '75歳未満', '+1', '0',
                          _calculateIMC),
                      MySelect1func1(
                          _sc2,
                          '高血圧',
                          AppLocalizations.of(context)!.yes,
                          AppLocalizations.of(context)!.no,
                          '+1',
                          '0',
                          _calculateIMC),
                      MySelect1func1(
                          _sc4,
                          '糖尿病',
                          AppLocalizations.of(context)!.yes,
                          AppLocalizations.of(context)!.no,
                          '+1',
                          '0',
                          _calculateIMC),
                      MySelect1func1(
                          _sc5,
                          '脳梗塞/TIA既往',
                          AppLocalizations.of(context)!.yes,
                          AppLocalizations.of(context)!.no,
                          '+2',
                          '0',
                          _calculateIMC),
                      //CalcButton(_formKey, _calculateIMC, '計算'),
                      //if (_notZero) ...[
                      InpPadding('結果'),
                      ResContainer1('CHADS2スコア', '$_ch2String 点'),
                      ResContainer1('抗凝固未施行例の年間脳梗塞発症率',
                          '$_strokeRate1 %   [1]\n$_strokeRate2 %   [2]'),
                      InpPadding('参考文献'),
                      refPadding(
                          '[1] Gage BF, Waterman AD, Shannon W, et al. Validation of clinical classification schemes for predicting stroke: results from the National Registry of Atrial Fibrillation. JAMA 2001; 285: 2864–2870',
                          'https://pubmed.ncbi.nlm.nih.gov/11401607/'),
                      refPadding(
                          '[2] Suzuki S, Yamashita T, Okumura K, et al. Incidence of ischemic stroke in Japanese patients with atrial fibrillation not receiving anticoagulation therapy--pooled analysis of the Shinken Database, J-RHYTHM Registry, and Fushimi AF Registry. Circ J 2015; 79: 432–438.',
                          'https://pubmed.ncbi.nlm.nih.gov/25501800/'),
                      //]
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
