import 'myfunction2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'myfunctions.dart';
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
    routeIds.indexWhere((note) => note.startsWith('/Ldl_cal'));

class Ldl_cal extends StatefulWidget {
  const Ldl_cal({Key? key}) : super(key: key);
  static const routeName = '/Ldl_cal';

  @override
  State<Ldl_cal> createState() => _Ldl_calState();
}

class _Ldl_calState extends State<Ldl_cal> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _outputString = '0.0';
  String _infoText = '';

  double _output = 0.0;
  bool _notZero = false;

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      _outputString = '';
      _infoText = '';
      controller1.text = "";
      controller2.text = "";
      controller3.text = "";
    });
  }

  void _calculate1() {
    setState(() {
      if (controller1.text.isEmpty ||
          controller2.text.isEmpty ||
          controller3.text.isEmpty) {
        _outputString = '';
        _infoText = '';
      } else {
        double controllerValue1 = double.parse(controller1.text);
        double controllerValue2 = double.parse(controller2.text);
        double controllerValue3 = double.parse(controller3.text);
        _output = controllerValue1 - controllerValue2 - (controllerValue3 / 5);
        _outputString = _output.toStringAsFixed(1);
        _notZero = true;

        if (_output >= 140) {
          _infoText = '???LDL??????????????????????????? (???140)';
        } else if (_output < 140 && _output >= 120) {
          _infoText = "????????????LDL??????????????????????????? (120???139)";
        } else if (_output < 120) {
          _infoText = "?????? (???120)";
        }
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
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: <Widget>[
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  FormTmp1(
                      controller1,
                      '???????????????????????? (TC)',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mg/dL',
                      _calculate1),
                  FormTmp1(
                      controller2,
                      'HDL????????????????????? (HDL)',
                      AppLocalizations.of(context)!.valMessage,
                      '00.0',
                      'mg/dL',
                      _calculate1),
                  FormTmp1(
                      controller3,
                      '???????????? (TG)',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mg/dL',
                      _calculate1),
                  calcPadding('*LDL????????? (Friedewald???):  LDL = TC???HDL???TG/5'),
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer2(
                      'LDL?????????????????????(Friedewald?????????)', _outputString, '  mg/dL'),
                  ResContainer1(
                      AppLocalizations.of(context)!.category, _infoText),
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
