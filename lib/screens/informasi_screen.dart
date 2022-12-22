import 'package:covidapp/shared/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class InformasiScreen extends StatelessWidget {
  const InformasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/informasi.png',
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 100),
          child: Text(
            'Kenali\nCOVID-19',
            style: bold.copyWith(color: white, fontSize: 36),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.62,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Apa itu virus Corona',
                  style: medium.copyWith(color: black, fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ItemWidget(
                    title: 'Mengenal', image: 'mengenal.png', color: red),
                const ItemWidget(
                    title: 'Mencegah', image: 'mencegah.png', color: red),
                const ItemWidget(
                    title: 'Mengobati', image: 'mengobati.png', color: red),
                const ItemWidget(
                    title: 'Mengantisipasi',
                    image: 'mengantisipasi.png',
                    color: red),
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
