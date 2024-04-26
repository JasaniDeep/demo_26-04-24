import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList postList = [
    {
      "title": "My Feed",
      "image": "assets/image/my_feed_image.png",
      "isCheck": false
    },
    {
      "title": "School Feed",
      "image": "assets/image/school_feed_image.png",
      "isCheck": false
    },
    {
      "title": "Global Arts",
      "image": "assets/image/globle_arts_image.png",
      "isCheck": false
    },
    {
      "title": "Studio Art",
      "image": "assets/image/studio_arts_image.png",
      "isCheck": false
    },
  ].obs;
}
