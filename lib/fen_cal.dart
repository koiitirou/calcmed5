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
    routeIds.indexWhere((note) => note.startsWith('/Fen_cal'));

class Fen_cal extends StatefulWidget {
  const Fen_cal({Key? key}) : super(key: key);
  static const routeName = '/Fen_cal';

  @override
  State<Fen_cal> createState() => _Fen_calState();
}

class _Fen_calState extends State<Fen_cal> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

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
      controller4.text = "";
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
        double controllerValue4 = double.parse(controller4.text);
        _output = 100 *
            (controllerValue3 / controllerValue1) /
            (controllerValue4 / controllerValue2);
        _outputString = _output.toStringAsFixed(2);
        _notZero = true;

        if (_output >= 1) {
          _infoText = '腎実質性の疑い ( ≧1.0%)';
        } else if (_output < 1) {
          _infoText = "腎前性の疑い (＜1.0%)";
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
                      '血清ナトリウム値',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mEq/L',
                      _calculate1),
                  FormTmp1(
                      controller2,
                      '血清クレアチニン値',
                      AppLocalizations.of(context)!.valMessage,
                      '0.00',
                      'mg/dL',
                      _calculate1),
                  FormTmp1(
                      controller3,
                      '尿中ナトリウム値',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mEq/L',
                      _calculate1),
                  FormTmp1(
                      controller4,
                      '尿中クレアチニン値',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mg/dL',
                      _calculate1),
                  //CalcButton(_formKey, _calculate1, '計算'),
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer2('ナトリウム排泄率(FENa) %', _outputString, '  %'),
                  ResContainer1('急性腎障害における鑑別', _infoText),
                  calcPadding(
                      '*FENa = ( (尿中ナトリウム値 / 血清ナトリウム値) / (尿中クレアチニン値 / 血清クレアチニン値) ) * 100'),
                  InpPadding('参考文献'),
                  refPadding(
                      '[1] Espinel CH et al. The FENa test. Use in the differential diagnosis of acute renal failure. JAMA.1976 Aug 9;236(6):579-81.',
                      'https://pubmed.ncbi.nlm.nih.gov/947239/'),
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
