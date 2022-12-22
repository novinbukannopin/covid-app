import 'package:covidapp/shared/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/location_widget.dart';
import '../widgets/statistic_widget.dart';

class KasusScreen extends StatelessWidget {
  const KasusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/kasus.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Lawan \nCOVID-19',
            style: bold.copyWith(color: white, fontSize: 36),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                LocationWidget(),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Update Kasus Corona',
                  style: medium.copyWith(color: black, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'terakhir di update 23 Desember',
                      style: regular.copyWith(color: body, fontSize: 14),
                    ),
                    Text(
                      'Lihat detail',
                      style: regular.copyWith(color: green, fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const StatisticWidget(),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Peta Sebaran',
                  style: medium.copyWith(color: black, fontSize: 20),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/images/peta.png'),
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            )),
          ),
        )
      ],
    );
  }
}
