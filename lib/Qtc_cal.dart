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
  false,
];

List<String> routeIds = [
  for (int i1 = 0; i1 < Cc1s.Cc1_items.length; i1++) Cc1s.Cc1_items[i1].route_id
];
final int thisRouteId =
    routeIds.indexWhere((note) => note.startsWith('/Qtc_cal'));

class Qtc_cal extends StatefulWidget {
  const Qtc_cal({Key? key}) : super(key: key);
  static const routeName = '/Qtc_cal';

  @override
  State<Qtc_cal> createState() => _Qtc_calState();
}

class _Qtc_calState extends State<Qtc_cal> {
  TextEditingController fIt1 = TextEditingController();
  TextEditingController fIt2 = TextEditingController();
  TextEditingController fIt3 = TextEditingController();
  TextEditingController fIt4 = TextEditingController();

  List<bool> _sc1 = List.from(_sc0);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String fOt1Text = '';
  String fOt2Text = '';
  String fOt3Text = '';
  String fOt4Text = '';
  String _fSg1 = '';
  double fOt1 = 0.0;
  double fOt2 = 0.0;
  double fOt3 = 0.0;
  double fOt4 = 0.0;

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
      fOt1 = 0.0;
      fOt2 = 0.0;
      fOt3 = 0.0;
      fOt4 = 0.0;
      fOt1Text = '';
      fOt2Text = '';
      fOt3Text = '';
      fOt4Text = '';
    });
  }

  void _calculateCCR() {
    //_formKey = GlobalKey<FormState>();

    setState(() {
      if (fIt1.text.isEmpty || fIt2.text.isEmpty) {
        fOt1Text = '';
        fOt2Text = '';
        fOt3Text = '';
        fOt4Text = '';
      } else {
        _notZero = true;
        double fIt1num = double.parse(fIt1.text);
        double fIt2num = double.parse(fIt2.text);
        //double fIt3num = double.parse(fIt3.text);
        //double fIt4num = double.parse(fIt4.text);

        fOt1 = fIt2num / (sqrt(60 / fIt1num));
        fOt2 = fIt2num / (pow(60 / fIt1num, 1 / 3));
        fOt3 = fIt2num + 154 * (1 - 60 / fIt1num);
        fOt4 = fIt2num + 1.75 * (fIt1num - 60);

        fOt1Text = fOt1.toStringAsFixed(0);
        fOt2Text = fOt2.toStringAsFixed(0);
        fOt3Text = fOt3.toStringAsFixed(0);
        fOt4Text = fOt4.toStringAsFixed(0);
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
              //key: _formKey,
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                children: [
                  InpPadding(AppLocalizations.of(context)!.inputs),
                  //MySelect1(_sc1, '2週間以内の透析', 'あり', 'なし', '', ''),
                  FormTmp1(
                      fIt1,
                      '心拍数',
                      AppLocalizations.of(context)!.valMessage,
                      '00',
                      '回/min',
                      _calculateCCR),
                  FormTmp1(
                      fIt2,
                      'QT間隔',
                      AppLocalizations.of(context)!.valMessage,
                      '000',
                      'msec',
                      _calculateCCR),
                  //FormTmp(fIt3, 'PT-INR', AppLocalizations.of(context)!.valMessage, '0.00', ''),
                  //FormTmp(fIt4, '血清ナトリウム値', AppLocalizations.of(context)!.valMessage, '000.0', 'mEq/L'),
                  //CalcButton(_formKey, _calculateCCR, '計算'),
                  //if (_notZero) ...[
                  InpPadding(AppLocalizations.of(context)!.results),
                  ResContainer2('Bazzett式 補正QT間隔', fOt1Text, '  msec'),
                  ResContainer2('Friderical式 補正QT間隔', fOt2Text, '  msec'),
                  ResContainer2('Framingham式 補正QT間隔', fOt3Text, '  msec'),
                  //ResContainer('Hodges式 補正QT間隔', '$fOt4Text msec'),
                  //ResContainer('eGFR, 推算糸球体濾過量', '$_egfString mL/min/1.73㎡'),
                  //ResContainer('GFR区分', _infoText),
                  //],
                  calcPadding('RR間隔 = 60 / 心拍数'),
                  calcPadding('*Bazzet式 QTc = QT間隔 / √(RR間隔)'),
                  calcPadding('*Fridericia式 QTc = QT間隔/ (RR間隔)^1/3'),
                  calcPadding('*Framingham式 QTc = QT間隔 + 154 x (1 - RR間隔)'),
                  //calcPadding('*Hodges式 QTc = QT間隔 + 1.75 x ( (60 / RR間隔) − 60)'),
                  InpPadding('参考文献'),
                  refPadding(
                      '[1] Bazett, H.C. (1920) : An analysis of the timerelations of electrocardiograms. Heart, 7, 353-370.',
                      ''),
                  refPadding(
                      '[2] Fridericia, L.S. (1920) : Die systolendauer im elektrokardiogramm bei normalen menschen und bei herzkranken. Acta Med. Scand., 53, 469-486',
                      'https://pubmed.ncbi.nlm.nih.gov/14516292/'),
                  //'https://pub.dev/packages/url_launcher'),
                  refPadding(
                      '[3] Sagie, A., Larson, M. G., Goldberg, R. J., Bengtson, J. R. and D. Levy (1992) : An improved method for adjusting the QT interval for heart rate (the Framingham Heart Study). Am. J. Cardiol., 70, 797-801',
                      'https://pubmed.ncbi.nlm.nih.gov/1519533/'),
                  //refPadding('[4] ', ''),
                ],
              ),
            ),
            //adSetPlace14s
            adContainer2,
            //adSetPlace14es
          ],
        ),
      ),
    );
  }
}
