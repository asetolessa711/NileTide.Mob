import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdWidgetExample extends StatelessWidget {
  final BannerAd bannerAd = BannerAd(
    adUnitId: 'your-ad-unit-id', // Replace with your AdMob banner ad ID
    size: AdSize.banner,
    request: AdRequest(),
    listener: BannerAdListener(),
  )..load();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bannerAd.size.height.toDouble(),
      width: bannerAd.size.width.toDouble(),
      child: AdWidget(ad: bannerAd),
    );
  }
}
