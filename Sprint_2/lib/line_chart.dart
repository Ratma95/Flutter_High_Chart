import 'package:high_chart/high_chart.dart';
import 'package:flutter/material.dart';

class Grafico_linea extends StatelessWidget {
  
  const Grafico_linea({Key? key}) : super(key: key);

  final String _chartData = '''{
      title: {
        text: 'Crecimiento del empleo por sector, 2010-2016'
    },

    subtitle: {
        text: 'Fuente: thesolarfoundation.com'
    },

    yAxis: {
        title: {
            text: 'Número de empleados'
        }
    },

    xAxis: {
        accessibility: {
            rangeDescription: 'Rango: 2010 a 2017'
        }
    },

    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 2010
        }
    },

    series: [{
        name: 'Instalación',
        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }, {
        name: 'Fabricación',
        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    }, {
        name: 'Distribución de ventas',
        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
    }, {
        name: 'Desarrollo del proyecto',
        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
        name: 'Otros',
        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
      }
    }''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Grafico de linea'),
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