import 'package:demo_app_travo/core/constants/color_constants.dart';
import 'package:demo_app_travo/core/constants/dismension_constants.dart';
import 'package:demo_app_travo/core/helpers/assets_helper.dart';
import 'package:demo_app_travo/core/helpers/image_helper.dart';
import 'package:flutter/material.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget(
      {super.key,
      required this.child,
      this.title,
      this.implemenLoading = false,
      this.titleString,
      this.implemenTraling = false});

  final Widget child;
  final Widget? title;
  final String? titleString;
  final bool implemenLoading;
  final bool implemenTraling;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 186,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorPallette.whiteTextColor,
              title: title ??
                  Row(
                    children: [
                      if (implemenLoading)
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(kItemPadding),
                          child: const Icon(
                            Icons.arrow_back,
                            size: kDefaultFontSize,
                            color: Colors.black, // hoặc Colors.white tùy nền
                          ),
                        ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                titleString ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      if (implemenTraling)
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(kItemPadding),
                          child: const Icon(
                            Icons.arrow_back,
                            size: kDefaultFontSize,
                            color: Colors.black, // hoặc Colors.white tùy nền
                          ),
                        ),
                    ],
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: Gradients.defauldGradienBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: ImageHelper.loadFromAsset(AssetsHelper.oval_1)),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: ImageHelper.loadFromAsset(AssetsHelper.oval_2)),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 156),
            padding: const EdgeInsets.symmetric(horizontal: kMediumPading),
            child: child,
          )
        ],
      ),
    );
  }
}
