import 'package:flutter/material.dart';

class ChargingDischarging extends StatelessWidget {
  final bool status;
  final String label;
  final Color primaryColor,
      secondaryColor,
      primaryDeepColor,
      secondaryDeepColor,
      tertiaryColor;

  const ChargingDischarging(
      {super.key,
      required this.status,
      required this.label,
      required this.primaryColor,
      required this.primaryDeepColor,
      required this.secondaryColor,
      required this.secondaryDeepColor,
      required this.tertiaryColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: (MediaQuery.sizeOf(context).width * 0.4 < 500)
            ? 400
            : MediaQuery.sizeOf(context).width * 0.4,
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
                width: 160,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // charging box
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.symmetric(
                              vertical: BorderSide(
                                  color: status ? Colors.green : Colors.white,
                                  width: 4),
                              horizontal: BorderSide(
                                  color: status ? Colors.green : Colors.white,
                                  width: 4)),
                          color: status ? Colors.green[200] : Colors.white,
                        ),
                        child: const Center(
                          child: Text('Charging'),
                        ),
                      ),
                    ),

                    // discharging box
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.symmetric(
                              vertical: BorderSide(
                                  color: status ? Colors.white : Colors.red,
                                  width: 4),
                              horizontal: BorderSide(
                                  color: status ? Colors.white : Colors.red,
                                  width: 4)),
                          color: status ? Colors.white : Colors.red[200],
                        ),
                        child: const Center(
                          child: Text('Discharging'),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}
