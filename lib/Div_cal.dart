import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';

import 'adsList.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    routeIds.indexWhere((note) => note.startsWith('/Div_cal'));

class Div_cal extends StatefulWidget {
  const Div_cal({Key? key}) : super(key: key);
  static const routeName = '/Div_cal';

  @override
  State<Div_cal> createState() => _Div_calState();
}

class _Div_calState extends State<Div_cal> {
  final TextEditingController _fIt1 = TextEditingController();
  final TextEditingController _fIt2 = TextEditingController();
  final TextEditingController _fIt3 = TextEditingController();
  final TextEditingController _fIt4 = TextEditingController();
  final TextEditingController _fIt5 = TextEditingController();
  final TextEditingController _fIt6 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);
  List<bool> _tc1 = List.from(_tc0);
  List<bool> _tc2 = List.from(_tc0);
  List<bool> _tc3 = List.from(_tc0);
  List<bool> _tc4 = List.from(_tc0);
  List<bool> _tc5 = List.from(_tc0);

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
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      _fOt3 = _sc1.first ? 60 : 20;
      if ((_fIt1.text.isEmpty || _fIt2.text.isEmpty)) {
        _fSg1 = '';
        _fSg2 = '';
      } else {
        double _fIt1num = double.parse(_fIt1.text);
        double _fIt2num = double.parse(_fIt2.text);
        _fOt1 = ((_fIt1num / _fIt2num) / 60) * _fOt3;
        _fSg1 = _fOt1.toStringAsFixed(0);
        _fOt2 = _fOt1 / 6;
        _fSg2 = _fOt2.toStringAsFixed(0);
        _fOt3 = (_fIt1num / _fIt2num);
        _fSg3 = _fOt3.toStringAsFixed(1);
        _fOt4 = _fIt1num * (24 / _fIt2num);
        _fSg4 = _fOt4.toStringAsFixed(1);
        _fOt5 = (24 / _fIt2num);
        _fSg5 = _fOt5.toStringAsFixed(1);
      }
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
            //title: Text(AppLocalizations.of(context)!.appTitle),
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
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: [
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  MySelect1func1wide1(
                      _sc1,
                      '',
                      AppLocalizations.of(context)!.children,
                      AppLocalizations.of(context)!.adult,
                      '60' + AppLocalizations.of(context)!.drop1 + '=1ml',
                      '20' + AppLocalizations.of(context)!.drop1 + '=1ml',
                      _calculate1),
                  //MySelectRow3func1(_tc2, '??????????????????', '<2.8g/dL', '2.8-3.5g/dL',
                  //  '>3.5g/dL', '+3', '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc3, 'PT-INR', '>2.2', '1.7-2.2', '<1.7', '+3',
                  //  '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc4, '??????', '???????????????(???3L)', '??????(1-3L)', '??????',
                  //  '+3', '+2', '+1', _calculate1),
                  //MySelectRow3func1(_tc5, '????????????', '????????????(?????????)', '??????(???, ???)', '??????',
                  //  '+3', '+2', '+1', _calculate1),
                  FormTmp1(
                      _fIt1,
                      AppLocalizations.of(context)!.volumeBag,
                      AppLocalizations.of(context)!.valMessage,
                      '000',
                      'ml',
                      _calculate1),
                  FormTmp1(
                      _fIt2,
                      AppLocalizations.of(context)!.timeBag,
                      AppLocalizations.of(context)!.valMessage,
                      '00',
                      AppLocalizations.of(context)!.hr,
                      _calculate1),
                  //CalcButton(_formKey, _calculate1, '??????'),
                  //if (_notZero) ...[
                  //InpPadding(AppLocalizations.of(context)!.results),

                  ResContainer2(AppLocalizations.of(context)!.dropM, _fSg1,
                      ' ' + AppLocalizations.of(context)!.drop),
                  ResContainer2(AppLocalizations.of(context)!.dropT, _fSg2,
                      ' ' + AppLocalizations.of(context)!.drop),
                  ResContainer2(AppLocalizations.of(context)!.infusionRate1,
                      _fSg3, '  ml/hr'),
                  ResContainer2(AppLocalizations.of(context)!.requiredAmount,
                      _fSg4, '  ml'),
                  ResContainer2(AppLocalizations.of(context)!.requiredBag,
                      _fSg5, ' ' + AppLocalizations.of(context)!.bag),
                  //ResContainer('Hodges??? ??????QT??????', '$_fSg4 msec'),
                  //ResContainer('eGFR, ????????????????????????', '$_egfString mL/min/1.73???'),
                  //ResContainer('GFR??????', _in_foText),
                  //],
                  //calcPadding('RR?????? = 60 / ?????????'),
                  //calcPadding('*Bazzet??? QTc = QT?????? / ???(RR??????)'),
                  //calcPadding('*Fridericia??? QTc = QT??????/ (RR??????)^1/3'),
                  //calcPadding('*Framingham??? QTc = QT?????? + 154 x (1 - RR??????)'),
                  //calcPadding('*Hodges??? QTc = QT?????? + 1.75 x ( (60 / RR??????) ??? 60)'),
                  //InpPadding('????????????'),
                  //refPadding(
                  //    '[1] Child CG, Turcotte JG. Surgery and portal hypertension. Major Probl Clin Surg. 1964;1:1-85.',
                  //   'https://pubmed.ncbi.nlm.nih.gov/4950264/'),
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
