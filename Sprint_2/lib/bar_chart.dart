import 'package:high_chart/high_chart.dart';
import 'package:flutter/material.dart';

class Grafico_barra extends StatelessWidget {
  
  const Grafico_barra({Key? key}) : super(key: key);

  final String _chartData = '''{
      chart: {
        type: 'bar'
    },
    title: {
        text: 'Población mundial histórica por región'
    },
    subtitle: {
        text: 'Source: <a href="https://en.wikipedia.org/wiki/World_population">Wikipedia.org</a>'
    },
    xAxis: {
        categories: ['Africa', 'America', 'Asia', 'Europa', 'Oceania'],
        title: {
            text: null
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Población (millones)',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' millones'
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor:
            Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
        shadow: true
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Año 1800',
        data: [107, 31, 635, 203, 2]
    }, {
        name: 'Año 1900',
        data: [133, 156, 947, 408, 6]
    }, {
        name: 'Año 2000',
        data: [814, 841, 3714, 727, 31]
    }, {
        name: 'AÑo 2016',
        data: [1216, 1001, 4436, 738, 40]
    }]
    }''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Grafico de barras'),
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