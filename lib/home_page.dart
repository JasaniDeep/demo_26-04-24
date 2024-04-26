import 'package:demo_25_04_24/hone_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          bottomSheet();
        },
        child: Container(
          width: double.infinity,
          // alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffE06522),
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          margin:
              const EdgeInsets.only(top: 16, bottom: 16, left: 24, right: 24),
          child: const Text(
            "Post",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22.0, color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: Get.height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  bottomLeft: Radius.circular(90)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFE600),
                  Color(0xffEF2800),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 42),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Create Post",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 12,
                    right: 12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            height: 48,
                            width: 48,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/3a3c/1f3d/f143008c9d36429985070dbc37091673?Expires=1714953600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LUYBcsSKzQQ7KdfnVqZ76EMYGcL0GtTG6RqS-u53q8bYyHgPOhRqv8MUVJDQ~JacvFJQ7tpwrQi1fhshqtZAx6WnLshuTlyhDqYi8vtHSn9Kfe6NbYbZfOhI12ZlEv42z925J3PB4fXYdDCyBRDGkJbbue7TH-xDs3~~qJ4SPZ1BerLV8WtUlMUxjln1LDcFdWZIX9emPOh7pEHiv7cYyoC570vKZtsOsJRo1NqJwgfydwX5~Xx23Q~7YJaUhLTw3DuCtILxq~HNxb~Xa8AGuUWOJ9nkDhckYvZg0VOg72eyykUUAxO6pjRpbu686BaYy33-9NAERma~X3BetWBbag__",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Jivin (Class V)",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 6),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 18,
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Whole School",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 18,
                                      color: Colors.white.withOpacity(0.6),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      commonTExtField(
                          hintText: "Write something here...", maxLines: 5),
                      const SizedBox(
                        height: 16,
                      ),
                      commonTExtField(hintText: "Create or Add Labels"),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          commonIconView(image: "assets/image/image_icon.png"),
                          const SizedBox(
                            width: 16,
                          ),
                          commonIconView(image: "assets/image/camera_icon.png"),
                          const SizedBox(
                            width: 16,
                          ),
                          commonIconView(image: "assets/image/file_icon.png"),
                          const SizedBox(
                            width: 16,
                          ),
                          commonIconView(image: "assets/image/user_icon.png"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  commonIconView({String? image}) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color(0xff242527)),
      child: Image.asset(image!),
    );
  }

  commonTExtField({String? hintText, int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      style: const TextStyle(fontSize: 14.0, color: Colors.white),
      decoration: InputDecoration(
        hintText: "${hintText}",
        // fillColor: Colors.grey,
        fillColor: const Color(0xff242527),
        filled: true,
        // focusColor: Colors.amber,
        enabledBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 14,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  bottomSheet() async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff181818),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12))),
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Obx(
            () => Container(
              height: Get.height * 0.45,
              padding: const EdgeInsets.only(top: 16),
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: ,
                children: [
                  const Text(
                    'Where do you like to post?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: homeController.postList.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var res = homeController.postList[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 12, top: 12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(res["image"],
                                      width: 42, height: 42),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${res["title"]}",
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Checkbox(
                                      value: res["isCheck"],
                                      activeColor: Colors.green,
                                      onChanged: (newValue) {
                                        res["isCheck"] = newValue;
                                        homeController.update();
                                        setState(() {});
                                        // postList.re
                                      }),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: double.infinity,
                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xffE06522),
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      margin: const EdgeInsets.only(
                          top: 16, bottom: 16, left: 24, right: 24),
                      child: const Text(
                        "Post",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
