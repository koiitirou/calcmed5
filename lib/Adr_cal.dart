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
    routeIds.indexWhere((note) => note.startsWith('/Adr_cal'));

class Adr_cal extends StatefulWidget {
  const Adr_cal({Key? key}) : super(key: key);
  static const routeName = '/Adr_cal';

  @override
  State<Adr_cal> createState() => _Adr_calState();
}

class _Adr_calState extends State<Adr_cal> {
  final TextEditingController _fIt1 = TextEditingController();
  final TextEditingController _fIt2 = TextEditingController();
  final TextEditingController _fIt3 = TextEditingController();
  final TextEditingController _fIt4 = TextEditingController();
  final TextEditingController _fIt5 = TextEditingController();
  final TextEditingController _fIt6 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _sc2 = List.from(_sc0);
  List<bool> _sc3 = List.from(_sc0);
  List<bool> _sc4 = List.from(_sc0);
  List<bool> _sc5 = List.from(_sc0);

  List<bool> _tc1 = List.from(_tc0);
  List<bool> _tc2 = List.from(_tc0);
  List<bool> _tc3 = List.from(_tc0);
  List<bool> _tc4 = List.from(_tc0);
  List<bool> _tc5 = List.from(_tc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _fSg1 = '';
  String _fSg2 = '';
  String _fSg3 = '';
  String _fSg4 = '';
  String _fSg5 = '';
  String _fSg6 = '';
  double _fOt1 = 0;
  double _fOt2 = 0;
  double _fOt3 = 0;
  double _fOt4 = 0;
  double _fOt5 = 0;
  double _fOt6 = 0;

  final bool _notZero = false;

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      //_notZero = false;
      _fIt1.text = '';
      _fIt2.text = '';
      _fIt3.text = '';
      _fIt4.text = '';
      _fIt5.text = '';
      _fIt6.text = '';
      _sc1 = List.from(_sc0);
      _sc2 = List.from(_sc0);
      _sc3 = List.from(_sc0);
      _sc4 = List.from(_sc0);
      _sc5 = List.from(_sc0);
      _tc1 = List.from(_tc0);
      _tc2 = List.from(_tc0);
      _tc3 = List.from(_tc0);
      _tc4 = List.from(_tc0);
      _tc5 = List.from(_tc0);
      _fOt1 = 0;
      _fOt2 = 0;
      _fOt3 = 0;
      _fOt4 = 0;
      _fOt5 = 0;
      _fOt6 = 0;
      _fSg1 = '';
      _fSg2 = '';
      _fSg3 = '';
      _fSg4 = '';
      _fSg5 = '';
      _fSg6 = '';
    });
  }

  void _calculate1() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      //_formKey = GlobalKey<FormState>();
      //_notZero = true;
      //_fOt3 = _sc1.first ? 60 : 20;
      /* if ((_fIt1.text.isEmpty || _fIt2.text.isEmpty || _fIt2.text.isEmpty)) {
        _fSg1 = '';
        _fSg2 = '';

      } else { */
      //double _fIn1 = double.parse(_fIt1.text) / 100;
      _fOt1 = (_sc1.first ? 1 : 0) +
          (_sc2.first ? 1 : 0) +
          (_sc3.first ? 1 : 0) +
          (_sc4.first ? 1 : 0) +
          (_sc5.first ? 1 : 0);
      _fSg1 = _fOt1.toStringAsFixed(0);

      if (_fOt1 < 1) {
        _fSg2 = '?????? ???(0???)\n????????????';
      } else if (_fOt1 < 3) {
        _fSg2 = '????????????(1-2???)\n??????or??????';
      } else if (_fOt1 < 4) {
        _fSg2 = '????????? (3???)\n????????????';
      } else {
        _fSg2 = '????????? (4-5???)\n?????????????????????';
      }

      // }
      /* if ((_fIt1.text.isEmpty ||
          _fIt2.text.isEmpty ||
          _fIt3.text.isEmpty ||
          _fIt5.text.isEmpty)) {
        _fSg4 = '';
        _fSg5 = '';
        _fSg6 = '';
      } else {
        double _fIt1num = double.parse(_fIt1.text);
        double _fIt2num = double.parse(_fIt2.text);
        double _fIt3num = double.parse(_fIt3.text);
        double _fIt5num = double.parse(_fIt5.text);
        _fOt4 = ((_fIt5num * 60) * _fIt1num) / ((_fIt3num * 1000) / _fIt2num);

        _fSg4 = _fOt4.toStringAsFixed(2);
        _fOt5 = _fOt4 * 24;
        _fSg5 = _fOt5.toStringAsFixed(1);
        _fOt6 = _fOt5 / _fIt2num;
        _fSg6 = _fOt6.toStringAsFixed(1);
      } */
      //_fOt1 = _fIt2num / (sqrt(60 / _fIt1num));
      //_fOt2 = _fIt2num / (pow(60 / _fIt1num, 1 / 3));
      //_fOt3 = _fIt2num + 154 * (1 - 60 / _fIt1num);
      //_fOt4 = _fIt2num + 1.75 * (_fIt1num - 60);
      //_fSg2 = _fOt2.toStringAsFixed(0);
      //_fSg3 = _fOt3.toStringAsFixed(0);
      //_fSg4 = _fOt4.toStringAsFixed(0);

      /* if (_fOt1 < 7) {
        _fSg2 = 'A (5???6???) [1]';
      } else if (_fOt1 < 10) {
        _fSg2 = 'B (7???9???) [1]';
      } else {
        _fSg2 = 'C (10???15???) [1]';
      } */
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
                  children: [
                    InpPadding(AppLocalizations.of(context)!.inputs),
                    MySelect1func1(_sc1, '??????70????????????????????????75?????????', '??????', '?????????', '+1',
                        '0', _calculate1),
                    MySelect1func1(_sc2, 'BUN 21mg/dL???????????????????????????', '??????', '?????????',
                        '+1', '0', _calculate1),
                    MySelect1func1(_sc3, 'SpO2 90%?????? (PaO2 60Torr??????)', '??????',
                        '?????????', '+1', '0', _calculate1),
                    MySelect1func1(
                        _sc4, '??????????????????', '??????', '?????????', '+1', '0', _calculate1),
                    MySelect1func1(_sc5, '?????? (?????????) 90mmhg??????', '??????', '?????????', '+1',
                        '0', _calculate1),
                    //MySelect1func1wide1( _sc1, '', '?????????', '?????????', '60???=1ml', '20???=1ml', _calculate1),
                    //FormTmp1(_fIt1, '??????', AppLocalizations.of(context)!.valMessage, '00.0', '%', _calculate1),
                    //MySelectRow3func1(_tc2, '??????????????????', '<2.8g/dL', '2.8-3.5g/dL', '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                    //CalcButton(_formKey, _calculate1, '??????'),
                    //if (_notZero) ...[
                    InpPadding(AppLocalizations.of(context)!.results),

                    ResContainer2('A-DROP?????????', _fSg1, '  ???'),
                    ResContainer2(
                        AppLocalizations.of(context)!.category, _fSg2, ''),

                    //ResContainer2('?????????????????????(???)???/1???', _fSg5, '  ???(???)'),
                    //ResContainer('GFR??????', _in_foText),
                    //],
                    calcPadding(
                        '???????????????\n????????????0???\n????????????1-2???\n????????????3???\n????????????4-5???\n?????????????????????????????????????????????1?????????????????????????????????'),
                    calcPadding(
                        '????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????'),
                    //InpPadding('????????????'),
                    //refPadding(
                    //    '[1] ??????????????????????????????????????????',
                    //   'https://www.jrs.or.jp/modules/guidelines/index.php?content_id=94'),
                  ],
                ),
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
