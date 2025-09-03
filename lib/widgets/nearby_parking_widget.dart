import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkcar_youtube/theme/app_pallete.dart';
import 'package:parkcar_youtube/widgets/container_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkcar_youtube/widgets/stats_widget.dart';

class NearbyParkingWidget extends StatelessWidget {
  const NearbyParkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: "Nearby\nParking Spots",
      actionText: 'View All',
      onactionTap: () {},
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemBuilder: (BuildContext context, int index) {
            return const NearbyParkingItem();
          },
        ), // ListView.separated
      ), // SizedBox
    ); // ContainerWidget
  }
}

class NearbyParkingItem extends StatelessWidget {
  const NearbyParkingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Angga Park", style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppPallete.colorTextPrimary,
              ),
              ),
              const Gap(8),
              const SizedBox(
                width: 170,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    StatsWidget(icon: 'assets/svgs/routing.svg', text: '1,3Km',),
                    StatsWidget(icon: 'assets/svgs/dollar.svg', text: '\$5/hr',),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container image() {
    return Container(
          height: 100,
            width: 170,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(14,)
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: AppPallete.colorPink,
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                    image: AssetImage('assets/images/park_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
                child: Text("OFF 55%",
                  style: GoogleFonts.plusJakartaSans
                    (fontSize: 10,
                      fontWeight: FontWeight.w900
                  ),
                ),
            ),
        );
  }
}