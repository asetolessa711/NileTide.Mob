import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  static FirebaseAnalytics analytics = FirebaseAnalytics();

  static void logEvent(String eventName, Map<String, dynamic> parameters) {
    analytics.logEvent(name: eventName, parameters: parameters);
  }

  static void logSearch(String query) {
    logEvent('search', {'query': query});
  }

  static void logContentView(String contentId, String contentType) {
    logEvent('content_view', {'id': contentId, 'type': contentType});
  }
}
