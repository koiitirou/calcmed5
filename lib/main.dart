import 'package:flutter/material.dart';
import 'my_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  //await InterstitialAd1.instance.load();

  //final initFuture = MobileAds.instance.initialize();
  //final adState = AdState(initFuture);

  //WidgetsFlutterBinding.ensureInitialized();
  //var dir = await getApplicationDocumentsDirectory();
  //Hive.init(dir.path);
  //await Hive.openBox('favorites1');

  ///ios,androidを判断してローカルストレージのパスを入手
  await Hive.initFlutter();

  ///アプリ立ち上げ時にローカルストレージからBoxをOpenする
  await Hive.openBox('favorites2');
  await Hive.openBox('favorites4');
  //Hive.initFlutter();

  ///アプリ立ち上げ時にローカルストレージからBoxをOpenする
  //Hive.openBox('favorites2');
  //Hive.openBox('favorites4');
  runApp(MyApp());
  /* runApp(
    Provider.value(
      value: adState,
      builder: (context, child) => MyApp(),
    ),
  ); */
}
