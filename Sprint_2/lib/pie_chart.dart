import 'package:high_chart/high_chart.dart';
import 'package:flutter/material.dart';

class Grafico_pastel extends StatelessWidget {
  
  const Grafico_pastel({Key? key}) : super(key: key);

  final String _chartData = '''{
      chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Cuotas de mercado de acciones en enero, 2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'Chrome',
            y: 61.41,
            sliced: true,
            selected: true
        }, {
            name: 'Internet Explorer',
            y: 11.84
        }, {
            name: 'Firefox',
            y: 10.85
        }, {
            name: 'Edge',
            y: 4.67
        }, {
            name: 'Safari',
            y: 4.18
        }, {
            name: 'Sogou Explorer',
            y: 1.64
        }, {
            name: 'Opera',
            y: 1.6
        }, {
            name: 'QQ',
            y: 1.2
        }, {
            name: 'Otros',
            y: 2.61
        }]
    }]
    }''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Grafico circular'),
      ),
      body: HighCharts(
        loader: const SizedBox(
          child: LinearProgressIndicator(),
          width: 300,
        ),
        size: const Size(800, 800),
        data: _chartData,
        scripts: const [
          "https://code.highcharts.com/highcharts.js",
        ],
      ),
    );
  }

}