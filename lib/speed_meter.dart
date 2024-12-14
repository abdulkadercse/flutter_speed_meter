import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SpeedMeter extends StatefulWidget {
  const SpeedMeter({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<SpeedMeter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Speed Meter"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: SizedBox(
          width: 250,
          height: 250,
          child: SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 4500,
              axes: <RadialAxis>[
                RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 50,
                    color: Colors.green,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 50,
                    endValue: 100,
                    color: Colors.orange,
                    startWidth: 10,
                    endWidth: 10,
                  ),
                  GaugeRange(
                    startValue: 100,
                    endValue: 150,
                    color: Colors.red,
                    startWidth: 10,
                    endWidth: 10,
                  )
                ], pointers: <GaugePointer>[
                  const NeedlePointer(
                    value: 80,
                  )
                ], annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Container(
                      child: const Text(
                        '80.0',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    angle: 90,
                    positionFactor: 0.5,
                  ),
                ])
              ]),
        ),
      ),
    );
  }
}
