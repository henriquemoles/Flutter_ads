import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7016099422885936/1670581060';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7016099422885936/1670581060';
    }
    return null;
  }

  static String? get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7016099422885936/4272693674';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7016099422885936/4272693674';
    }
    return null;
  }

  static String? get intersticialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7016099422885936/5811090339';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7016099422885936/5811090339';
    }
    return null;
  }

  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded.'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load: $error');
    },
    onAdOpened: (ad) => debugPrint('Ad opened'),
    onAdClosed: (ad) => (ad) => debugPrint('Ad opened'),
  );
}
