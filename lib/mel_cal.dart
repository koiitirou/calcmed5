import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'myfunctions.dart';
import 'myfunction2.dart';
import 'dart:math';
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
    routeIds.indexWhere((note) => note.startsWith('/Mel_cal'));

class Mel_cal extends StatefulWidget {
  const Mel_cal({Key? key}) : super(key: key);
  static const routeName = '/Mel_cal';

  @override
  State<Mel_cal> createState() => _Mel_calState();
}

class _Mel_calState extends State<Mel_cal> {
  TextEditingController formInput1 = TextEditingController();
  TextEditingController formInput2 = TextEditingController();
  TextEditingController formInput3 = TextEditingController();
  TextEditingController formInput4 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _melScoreText = '';
  String _melScoreNaText = '';
  String _mortality = '';
  double _melScore = 0.0;
  final double _melScoreNa = 0.0;

  bool _notZero = false;

  void _resetFields() {
    setState(() {
      formInput1.text = '';
      formInput2.text = '';
      formInput3.text = '';
      formInput4.text = '';
      _sc1 = List.from(_sc0);
      _formKey = GlobalKey<FormState>();
      _notZero = false;
      double _melScore = 0.0;
      _mortality = '';
      _melScoreText = '';
      _melScoreNaText = '';
    });
  }

  void _calculateCCR() {
    //_formKey = GlobalKey<FormState>();
    setState(() {
      if (!(formInput1.text.isEmpty ||
          formInput2.text.isEmpty ||
          formInput3.text.isEmpty)) {
        _notZero = true;
        double formInput1num = double.parse(formInput1.text);
        double formInput2num = double.parse(formInput2.text);
        double formInput3num = double.parse(formInput3.text);

        formInput1num = (_sc1.first ? 4.0 : formInput1num);
        formInput1num = ((formInput1num < 1) ? 1 : formInput1num);
        formInput2num = (formInput2num < 1 ? 1 : formInput2num);
        formInput3num = (formInput3num < 1 ? 1 : formInput3num);

        _melScore = (0.957 * log(formInput1num) +
                0.378 * log(formInput2num) +
                1.12 * log(formInput3num) +
                0.643) *
            10;
        String m1 = _melScore.toStringAsFixed(0);

        int m2 = int.parse(m1);
        _melScoreText = m2.toStringAsFixed(0);

        if (m2 < 9) {
          _mortality = '1.9 % (<9???) [1]';
        } else if (m2 <= 19) {
          _mortality = '6.0 % (10???19???) [1]';
        } else if (m2 <= 29) {
          _mortality = '19.6 % (20???29???) [1]';
        } else if (m2 <= 39) {
          _mortality = '52.6 (30???39???) % [1]';
        } else {
          _mortality = '71.3 % (40??????) [1]';
        }
        _melScoreNaText = '';
        if (formInput4.text.isNotEmpty) {
          double formInput4num = double.parse(formInput4.text);
          formInput4num = (formInput4num < 125 ? 125 : formInput4num);
          formInput4num = (formInput4num > 137 ? 137 : formInput4num);
          if (m2 > 11) {
            _melScoreNaText = (m2 +
                    1.32 * (137 - formInput4num) -
                    (0.033 * m2 * (137 - formInput4num)))
                .toStringAsFixed(0);
          } else {
            _melScoreNaText = '';
          }
        }
      } else {
        _mortality = '';
        _melScoreText = '';
        _melScoreNaText = '';
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
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: [
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  MySelect1func1(
                      _sc1, '2?????????????????????', '??????', '??????', '', '', _calculateCCR),
                  FormTmp1(
                      formInput1,
                      '???????????????????????????',
                      AppLocalizations.of(context)!.valMessage,
                      '0.00',
                      'mg/dL',
                      _calculateCCR),
                  FormTmp1(
                      formInput2,
                      '????????????????????????',
                      AppLocalizations.of(context)!.valMessage,
                      '0.00',
                      'mg/dL',
                      _calculateCCR),
                  FormTmp1(
                      formInput3,
                      'PT-INR',
                      AppLocalizations.of(context)!.valMessage,
                      '0.00',
                      '',
                      _calculateCCR),
                  FormTmp1(
                      formInput4,
                      '????????????????????????',
                      AppLocalizations.of(context)!.valMessage,
                      '000.0',
                      'mEq/L',
                      _calculateCCR),
                  //CalcButton(_formKey, _calculateCCR, '??????'),
                  //if (_notZero) ...[
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer2('MELD?????????', _melScoreText, '  ???'),
                  ResContainer1('???????????????????????????????????????MELD???3??????????????????????????????', _mortality),
                  ResContainer2('MELD Na?????????', _melScoreNaText, '  ???'),
                  //ResContainer('eGFR, ????????????????????????', '$_egfString mL/min/1.73???'),
                  //ResContainer('GFR??????', _infoText),
                  //],
                  calcPadding(
                      '*MELD    =  0.957 ?? loge(???????????????????????????) + 0.378 ?? loge(????????????????????????) + 1.120 ?? loge(PT-INR) + 0.643'),
                  calcPadding(
                      '*MELD > 11????????????\n MELD Na = MELD + 1.32 ?? (137 ??? Na) ???  [ 0.033 ?? MELD ?? (137 ??? Na) ]'),
                  calcPadding(
                      '*2????????????????????????????????????????????????????????????????????????4.0mg/dl????????????\n*???????????????????????????/????????????????????????/PT-INR???1.0??????????????????????????????1.0?????????\n*???????????????????????????125mEq/L???????????????125mEq/L?????????137mEq/L?????????????????????137mEq/L?????????'),
                  InpPadding('????????????'),
                  refPadding(
                      '[1]  Wiesner R et al. Model for end-stage liver disease (MELD) and allocation of donor livers Gastroenterology. 2003 Jan;124(1):91-6.',
                      'https://pubmed.ncbi.nlm.nih.gov/12512033/'),
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
