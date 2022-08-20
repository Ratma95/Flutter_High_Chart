import 'package:high_chart/high_chart.dart';
import 'package:flutter/material.dart';

class Grafico_columna extends StatelessWidget {
  
  const Grafico_columna({Key? key}) : super(key: key);

  final String _chartData = '''{
     chart: {
        type: 'column'
    },
    title: {
        text: 'Gráfico de columnas apiladas'
    },
    xAxis: {
        categories: ['Manzanas', 'Naranjas', 'Peras', 'Uvas', 'Platanos']
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Consumo total de frutas'
        },
        stackLabels: {
            enabled: true,
            style: {
                fontWeight: 'bold',
                color: ( // theme
                    Highcharts.defaultOptions.title.style &&
                    Highcharts.defaultOptions.title.style.color
                ) || 'gray',
                textOutline: 'none'
            }
        }
    },
    legend: {
        align: 'right',
        x: -30,
        verticalAlign: 'top',
        y: 25,
        floating: true,
        backgroundColor:
            Highcharts.defaultOptions.legend.backgroundColor || 'white',
        borderColor: '#CCC',
        borderWidth: 1,
        shadow: false
    },
    tooltip: {
        headerFormat: '<b>{point.x}</b><br/>',
        pointFormat: '{series.name}: {point.y}<br/>Total: {point.stackTotal}'
    },
    plotOptions: {
        column: {
            stacking: 'normal',
            dataLabels: {
                enabled: true
            }
        }
    },
    series: [{
        name: 'John',
        data: [5, 3, 4, 7, 2]
    }, {
        name: 'Jane',
        data: [2, 2, 3, 2, 1]
    }, {
        name: 'Joe',
        data: [3, 4, 4, 2, 5]
    }]

    }''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Grafico de columna apilada'),
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