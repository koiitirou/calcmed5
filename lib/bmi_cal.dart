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
    routeIds.indexWhere((note) => note.startsWith('/Bmi_cal'));

class Bmi_cal extends StatefulWidget {
  const Bmi_cal({Key? key}) : super(key: key);
  static const routeName = '/Bmi_cal';

  @override
  State<Bmi_cal> createState() => _Bmi_calState();
}

class _Bmi_calState extends State<Bmi_cal> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _imcString = '';
  String _infoText = '';

  double _imc = 0.0;
  bool _notZero = false;

  void _resetFields() {
    setState(() {
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      weightController.text = "";
      heightController.text = "";
      _imcString = '';
      _infoText = '';
    });
  }

  void _calculateIMC() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      if (weightController.text.isEmpty || heightController.text.isEmpty) {
        _imcString = '';
        _infoText = '';
      } else {
        double weight = double.parse(weightController.text);
        double height = double.parse(heightController.text) / 100;
        _imc = weight / (height * height);
        _imcString = _imc.toStringAsFixed(2);
        _notZero = true;

        if (_imc < 18.5) {
          _infoText = '低体重';
        } else if (_imc >= 18.5 && _imc < 25) {
          _infoText = "普通体重";
        } else if (_imc >= 25 && _imc < 30) {
          _infoText = "肥満(1度)";
        } else if (_imc >= 30 && _imc < 35) {
          _infoText = "肥満(2度)";
        } else if (_imc >= 35 && _imc < 40) {
          _infoText = "肥満(3度)";
        } else if (_imc >= 40) {
          _infoText = "肥満(4度)";
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
      /* appBar: AppBar(
        title: Text(Cc1s.Cc1_items[thisRouteId].jp_name),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: _resetFields, icon: const Icon(Icons.refresh))
        ],
      ), */
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
                      InpPadding(AppLocalizations.of(context)!.inputs),
                      FormTmp1(
                          weightController,
                          AppLocalizations.of(context)!.weight,
                          AppLocalizations.of(context)!.valMessage,
                          '00.0',
                          'kg',
                          _calculateIMC),
                      FormTmp1(
                          heightController,
                          AppLocalizations.of(context)!.height,
                          AppLocalizations.of(context)!.valMessage,
                          '000.0',
                          'cm',
                          _calculateIMC),
                      //CalcButton(_formKey, _calculateIMC, '計算'),
                      InpPadding(AppLocalizations.of(context)!.results),
                      ResContainer2(
                          'BMI(Body Mass Index)', _imcString, '  kg/㎡'),
                      ResContainer1(
                          AppLocalizations.of(context)!.category, '$_infoText'),
                    ]),
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
