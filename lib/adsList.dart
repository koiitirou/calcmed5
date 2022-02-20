import 'package:google_mobile_ads/google_mobile_ads.dart' as admob;
import 'package:flutter/material.dart';
import 'dart:io' as dartio;
import 'package:flutter/foundation.dart';

/* String bAdId1 = dartio.Platform.isAndroid
    ? 'ca-app-pub-7235402962103532/6259013365'
    : 'ca-app-pub-7235402962103532/6664840495';

String bAdId2 = dartio.Platform.isAndroid
    ? 'ca-app-pub-7235402962103532/7580759936'
    : 'ca-app-pub-7235402962103532/3641514926'; */

//String iAdId1 = 'ca-app-pub-3940256099942544/1033173712'; //test
//String bAdId1 = 'ca-app-pub-7235402962103532/6259013365'; //android honban
//String bAdId1 = 'ca-app-pub-7235402962103532/6664840495'; //ios ID honban

/*String bAdId1 = dartio.Platform.isAndroid
    ? 'ca-app-pub-3940256099942544/6300978111'
    : 'ca-app-pub-3940256099942544/2934735716';

String bAdId2 = dartio.Platform.isAndroid
    ? 'ca-app-pub-3940256099942544/6300978111'
    : 'ca-app-pub-3940256099942544/2934735716';*/ //test

class ad1 {
  String bAdId1;
  String bAdId2;

  ad1(
    this.bAdId1,
    this.bAdId2,
  );
}

class ad2 {
  static List<String> ads = [
    if (kReleaseMode)
      dartio.Platform.isAndroid
          ? 'ca-app-pub-7235402962103532/6259013365'
          : 'ca-app-pub-7235402962103532/6664840495',
    if (!kReleaseMode)
      dartio.Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
    if (kReleaseMode)
      dartio.Platform.isAndroid
          ? 'ca-app-pub-7235402962103532/7580759936'
          : 'ca-app-pub-7235402962103532/3641514926',
    if (!kReleaseMode)
      dartio.Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
  ];
}

/* class InterstitialAd1 {
  /// The internal constructor.
  InterstitialAd1._internal();

  /// Returns the singleton instance of [InterstitialAd1].
  static InterstitialAd1 get instance => _singletonInstance;

  /// The singleton instance of this [InterstitialAd1].
  static final _singletonInstance = InterstitialAd1._internal();

  /// The count of load attempt
  int _countLoadAttempt = 0;

  /// The interstitial ad
  admob.InterstitialAd? _interstitialAd;

  /// Returns true if interstitial ad is already loaded, otherwise false.
  bool get isLoaded => _interstitialAd != null;

  /// Returns true if interstitial ad is not loaded, otherwise false.
  bool get isNotLoaded => _interstitialAd == null;

  Future<void> load() async => await admob.InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: const admob.AdRequest(),
        adLoadCallback: admob.InterstitialAdLoadCallback(
          onAdLoaded: (final admob.InterstitialAd interstitialAd) {
            _interstitialAd = interstitialAd;
            _countLoadAttempt = 0;
          },
          onAdFailedToLoad: (final admob.LoadAdError loadAdError) async {
            _interstitialAd = null;
            _countLoadAttempt++;

            if (_countLoadAttempt <= 5) {
              await load();
            }
          },
        ),
      );

  Future<void> show() async {
    if (isNotLoaded) {
      await load();
    }

    if (isLoaded) {
      _interstitialAd!.fullScreenContentCallback =
          admob.FullScreenContentCallback(
        onAdShowedFullScreenContent: (final interstitialAd) {},
        onAdDismissedFullScreenContent: (final interstitialAd) async {
          await interstitialAd.dispose();
        },
        onAdFailedToShowFullScreenContent:
            (final interstitialAd, final adError) async {
          await interstitialAd.dispose();
        },
      );

      await _interstitialAd!.show();
      _interstitialAd = null;

      /// Load next ad.
      await load();
    }
  }
} */

//
admob.BannerAd Banner1 = admob.BannerAd(
  adUnitId: ad2.ads[0],
  size: admob.AdSize.largeBanner,
  request: admob.AdRequest(),
  listener: admob.BannerAdListener(),
);

admob.BannerAd Banner2 = admob.BannerAd(
  adUnitId: ad2.ads[1],
  size: admob.AdSize.largeBanner,
  request: admob.AdRequest(),
  listener: admob.BannerAdListener(),
);
///////////////////
//////////////////
admob.BannerAd Rectangle1 = admob.BannerAd(
  adUnitId: ad2.ads[0],
  size: admob.AdSize.mediumRectangle,
  request: admob.AdRequest(),
  listener: admob.BannerAdListener(),
);

//////////////////////
/////////////////////
final admob.BannerAdListener listener1 = admob.BannerAdListener(
  // Called when an ad is successfully received.
  //onAdLoaded: (admob.AdError ad) => print('Ad loaded.'),
  // Called when an ad request failed.
  onAdFailedToLoad: (admob.Ad ad, admob.LoadAdError error) {
    // Dispose the ad here to free resources.
    ad.dispose();
    print('Ad failed to load: $error');
  },
  // Called when an ad opens an overlay that covers the screen.
  onAdOpened: (admob.Ad ad) => print('Ad opened.'),
  // Called when an ad removes an overlay that covers the screen.
  onAdClosed: (admob.Ad ad) => print('Ad closed.'),
  // Called when an impression occurs on the ad.
  onAdImpression: (admob.Ad ad) => print('Ad impression.'),
);

///////////////////
const double adPadding1 = 4;

///////////////////
class adContainer1 extends Container {
  @override
  final admob.AdWidget adWidget1;
  final admob.BannerAd myBanner2;
  adContainer1(this.adWidget1, this.myBanner2); // コンストラクタで引数を受け取る
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.expand(
          height: myBanner2.size.height.toDouble() + adPadding1 * 2,
        ),
        child: Padding(
          padding: const EdgeInsets.all(adPadding1),
          child: adWidget1,
          //width: myBanner2.size.width.toDouble(),
          //height: myBanner2.size.height.toDouble(),
        ));
  }
}

class adContainer3 extends Container {
  @override
  final admob.AdWidget adWidget1;
  final admob.BannerAd myBanner2;
  adContainer3(this.adWidget1, this.myBanner2); // コンストラクタで引数を受け取る
  Widget bannerAdWidget() {
    return StatefulBuilder(
      builder: (context, setState) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: adWidget1,
          width: myBanner2.size.width.toDouble(),
          //height: myBanner2.size.height.toDouble(),
          height: 100,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
