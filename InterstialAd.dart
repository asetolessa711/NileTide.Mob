import 'package:google_mobile_ads/google_mobile_ads.dart';

class InterstitialAdExample {
  late InterstitialAd interstitialAd;

  void loadAd() {
    InterstitialAd.load(
      adUnitId: 'your-interstitial-ad-id', // Replace with your AdMob interstitial ad ID
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => interstitialAd = ad,
        onAdFailedToLoad: (error) => print('Failed to load interstitial ad: $error'),
      ),
    );
  }

  void showAd() {
    if (interstitialAd != null) {
      interstitialAd.show();
    }
  }
}
