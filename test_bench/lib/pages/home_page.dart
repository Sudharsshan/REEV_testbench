import 'package:flutter/material.dart';

import 'package:test_bench/app_colors.dart';
import 'package:test_bench/custom_widgets/charging_discharging.dart';
import 'package:test_bench/custom_widgets/current_voltage.dart';
import 'package:test_bench/custom_widgets/soc_engine.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // heading label
        Center(
          child: Container(
            width: 300,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amberAccent,
            ),
            child: const Center(
              child: Text('TestBench Parameters'),
            ),
          ),
        ),

        // ROW 1
        Expanded(
          flex: 1,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // charging levels
              CurrentVoltage(
                voltage: 48,
                current: 2,
                label: 'Charging levels',
                primaryColor: AppColors().primaryAccent,
                primaryDeepColor: AppColors().primaryDeep,
                secondaryColor: AppColors().secondaryAccent,
                secondaryDeepColor: AppColors().secondaryDeep,
                tertiaryColor: AppColors().tertiaryAccent,
              ),

              // discharging levels
              CurrentVoltage(
                voltage: 0,
                current: 0,
                label: 'Discharging levels',
                primaryColor: AppColors().primaryAccent,
                primaryDeepColor: AppColors().primaryDeep,
                secondaryColor: AppColors().secondaryAccent,
                secondaryDeepColor: AppColors().secondaryDeep,
                tertiaryColor: AppColors().tertiaryAccent,
              )
            ],
          ),
        ),

        // ROW 2
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // battery SOC
              SocEngine(
                data: 59,
                label: 'Battery SOC',
                units: '%',
                primaryColor: AppColors().primaryAccent,
                primaryDeepColor: AppColors().primaryDeep,
                secondaryColor: AppColors().secondaryAccent,
                secondaryDeepColor: AppColors().secondaryDeep,
                tertiaryColor: AppColors().tertiaryAccent,
              ),

              // engine RPM
              SocEngine(
                data: 1500,
                label: 'Engine RPM',
                units: '',
                primaryColor: AppColors().primaryAccent,
                primaryDeepColor: AppColors().primaryDeep,
                secondaryColor: AppColors().secondaryAccent,
                secondaryDeepColor: AppColors().secondaryDeep,
                tertiaryColor: AppColors().tertiaryAccent,
              )
            ],
          ),
        ),

        // ROW 3
        Expanded(
          flex: 1,
          child: // charging box
              ChargingDischarging(
            status: false,
            label: 'Current Status',
            primaryColor: AppColors().primaryAccent,
            primaryDeepColor: AppColors().primaryDeep,
            secondaryColor: AppColors().secondaryAccent,
            secondaryDeepColor: AppColors().secondaryDeep,
            tertiaryColor: AppColors().tertiaryAccent,
          ),
        )
      ],
    );
  }
}
