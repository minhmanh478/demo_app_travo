import 'package:demo_app_travo/core/constants/dismension_constants.dart';
import 'package:demo_app_travo/core/helpers/assets_helper.dart';
import 'package:demo_app_travo/core/helpers/image_helper.dart';
import 'package:demo_app_travo/representation/screens/hotel_booking_screen.dart';
import 'package:demo_app_travo/representation/widgets/app_bar_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _builtItemCategory(
      Widget icon, Color color, Function() onTap, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: kMediumPading,
            ),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(
                kItemPadding,
              ),
            ),
            child: icon,
          ),
          const SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Jame!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: kMediumPading,
                ),
                Text(
                  'Where are you going next?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.white,
            ),
            const SizedBox(
              width: kTopPadding,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    kItemPadding,
                  ),
                  color: Colors.white),
              padding: const EdgeInsets.all(kMinPadding),
              child: ImageHelper.loadFromAsset(AssetsHelper.person),
            )
          ],
        ),
      ),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'seach your dtination',
              prefixIcon: Padding(
                padding: EdgeInsets.all(
                  kTopPadding,
                ),
                child: Icon(
                  Icons.import_contacts_rounded,
                  color: Colors.black,
                  size: kDefaultPadding,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(kItemPadding),
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: kItemPadding,
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              Expanded(
                child: _builtItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetsHelper.icoHotel,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    const Color(0xFFFE9C5E), () {
                  Navigator.of(context).pushNamed(HotelBookingScreen.routeName);
                }, 'Hotels'),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: _builtItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetsHelper.icoFlights,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    const Color(0xFFF77777),
                    () {},
                    'Flights'),
              ),
              const SizedBox(
                width: kDefaultIconSize,
              ),
              Expanded(
                child: _builtItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetsHelper.icoHotelPlane,
                      width: kDefaultIconSize,
                      height: kDefaultIconSize,
                    ),
                    const Color(0xFF3EC8BC),
                    () {},
                    'All'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
