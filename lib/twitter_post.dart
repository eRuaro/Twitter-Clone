import 'tweets.dart';

class TwitterPost {
  static var tweets = [
    Tweets("Flutter is amazing! However it's kinda confusing lol",
        '@flutterDev', '10h', 'techy'),
    Tweets('I have a strong urge to not study for my exam tomorrow', '@idea',
        '15h', 'brt brt'),
    Tweets('Applications for incoming grade 11 students are now open! ',
        '@DLSU', '1w', 'DLSU Manila'),
  ];

  static Tweets getTweet(int position) {
    return tweets[position];
  }
}
