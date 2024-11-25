import 'package:flutter/material.dart';

class SocEngine extends StatelessWidget {
  final String label;
  final double data;
  final String units;
  final Color primaryColor,
      secondaryColor,
      primaryDeepColor,
      secondaryDeepColor,
      tertiaryColor;

  const SocEngine(
      {super.key,
      required this.data,
      required this.label,
      required this.units,
      required this.primaryColor,
      required this.primaryDeepColor,
      required this.secondaryColor,
      required this.secondaryDeepColor,
      required this.tertiaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        width: MediaQuery.sizeOf(context).width / 2 - 60,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.symmetric(
                vertical: BorderSide(color: primaryDeepColor, width: 5),
                horizontal: BorderSide(color: primaryDeepColor, width: 5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // label
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.symmetric(
                    vertical: BorderSide(color: primaryDeepColor, width: 3),
                    horizontal: BorderSide(color: primaryDeepColor, width: 3),
                  ),
                  color: tertiaryColor,
                ),
                child: Center(
                  child: Text(label),
                ),
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            // other elements
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.symmetric(
                      vertical: BorderSide(color: secondaryDeepColor, width: 4),
                      horizontal:
                          BorderSide(color: secondaryDeepColor, width: 4)),
                  color: secondaryColor,
                ),
                child: Center(
                  child: Text('$data $units'),
                ),
              ),
            )
          ],
        ));
  }
}
