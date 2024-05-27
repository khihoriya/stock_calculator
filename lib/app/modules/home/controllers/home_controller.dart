import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeController extends GetxController {
  final BannerAd myBanner = BannerAd(
    adUnitId: "ca-app-pub-3940256099942544/6300978111",
    size: AdSize.banner,
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );
  RxBool isInterstitialLoaded = false.obs;
  InterstitialAd? interstitialAd;
  @override
  void onInit() {
    _loadInterstitialAd();
    super.onInit();
  }

  Future<void> _loadInterstitialAd() async {
    InterstitialAd.load(
        adUnitId: "ca-app-pub-3940256099942544/1033173712",
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
            isInterstitialLoaded.value = true;
            _loadInterstitialAd();
          },
          onAdFailedToLoad: (LoadAdError error) {
            interstitialAd!.dispose();
          },
        ));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

// void increment() => count.value++;
}
