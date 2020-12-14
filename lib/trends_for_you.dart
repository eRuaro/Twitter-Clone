import 'trends.dart';

class TrendsForYou {
  static var trends = [
    Trends('Google', '1.67M'),
    Trends('Facebook', '1.1M'),
    Trends('WAIT WHAT', '72.2K'),
    Trends('Microsoft', '999K'),
    Trends('Android', '160K'),
    Trends('Machine Learning', '79K'),
    Trends('Cyberpunk 2077', '600K'),
  ];

  static Trends getTrend(int position) {
    return trends[position];
  }
}
