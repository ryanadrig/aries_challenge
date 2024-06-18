import 'package:flutter/material.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Options Risk Comparison',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OptionsRiskPage(),
    );
  }
}


class OptionsRiskPage extends StatefulWidget {
  const OptionsRiskPage({super.key});

  @override
  State<OptionsRiskPage> createState() => _OptionsRiskPageState();
}

class _OptionsRiskPageState extends State<OptionsRiskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <CartesianSeries>[
                      StackedLineSeries<ChartData, String>(
                          groupName: 'Group A',
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              useSeriesColor: true
                          ),
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y1
                      ),
                      StackedLineSeries<ChartData, String>(
                          groupName: 'Group B',
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              useSeriesColor: true
                          ),
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y2
                      ),
                      StackedLineSeries<ChartData, String>(
                          groupName: 'Group A',
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              useSeriesColor: true
                          ),
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y3
                      ),
                    ]
                )
            )
        )
    );
  }
}


