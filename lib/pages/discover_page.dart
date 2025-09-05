
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:parkcar_youtube/theme/app_pallete.dart';
import 'package:parkcar_youtube/widgets/hero_widgets.dart';
import 'package:parkcar_youtube/widgets/inprogress_widget.dart';
import 'package:parkcar_youtube/widgets/nearby_parking_widget.dart';


class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xFFFBFBFB),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidgets(),
            Gap(20),
            InProgressWidget(),
            Gap(20),
            NearbyParkingWidget(),

          ],
        ),
      )
    );
  }
}

BottomNavigationBar bottomNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType .fixed,
    backgroundColor: AppPallete.white,
    selectedItemColor: AppPallete.colorPrimary,
    unselectedItemColor: AppPallete.colorGray,
    showUnselectedLabels: true,
    selectedFontSize: 12,
    items: [
      bottomNavigationBarItem(
      label: 'Discover',
      icon: 'assets/svgs/discover.svg',
      ),
      bottomNavigationBarItem(
      label: 'Discover',
      icon: 'assets/svgs/discover.svg',
      ),
      bottomNavigationBarItem(
      label: 'Discover',
      icon: 'assets/svgs/discover.svg',
      ),
      bottomNavigationBarItem(
      label: 'Discover',
      icon: 'assets/svgs/discover.svg',
      ),
    ],
  );
}

BottomNavigationBarItem bottomNavigationBarItem({
  required String label,
  required String icon,}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset("assets/svgs/discover.svg",
      colorFilter: const ColorFilter.mode(
          AppPallete.colorGray,
          BlendMode.srcIn),
    ),
    activeIcon: SvgPicture.asset(
      "assets/svgs/discover.svg",
      colorFilter: const ColorFilter.mode(
          AppPallete.colorPrimary,
          BlendMode.srcIn),
    ),
    label: "Home",
    );
}
