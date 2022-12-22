import 'package:covidapp/shared/constant.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  LocationWidget({super.key});

  final String? city = 'Lamongan';
  final List<String> cities = ['Lamongan', 'Gresik', 'Surabaya'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: green),
              borderRadius: BorderRadius.circular(100)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: green))),
      value: city,
      items: cities
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (String? val) {},
    );
  }
}
