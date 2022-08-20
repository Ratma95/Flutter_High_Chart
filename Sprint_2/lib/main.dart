import 'package:flutter/material.dart';
import 'package:high_chart/high_chart.dart';
import 'package:sprint_2/line_chart.dart';
import 'package:sprint_2/bar_chart.dart';
import 'package:sprint_2/pie_chart.dart';
import 'package:sprint_2/scatter_plot.dart';
import 'package:sprint_2/colum_chart.dart';
import 'package:sprint_2/basicarea_chart.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Arguments',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 102, 165, 173),
          foregroundColor: Colors.white,
        ),
      ),
      home: HomeScreen(),
      
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 223, 230),
      appBar: AppBar(
        title: Text('Ejemplos High Chart  - TCS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            
            RaisedButton(
              child: Text("Grafico de linea",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                      ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left:95, right: 95),       
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_linea(),
                  ));
              },
            
            ),
           RaisedButton(
              child: Text("Grafico de barra",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 95, right: 95),      
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_barra(),
                  ));  
              },
            ),
            RaisedButton(
              child: Text("Grafico circular",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 95, right:95),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_pastel(),
                  ));
              },
            ),
            RaisedButton(
              child: Text("Grafico de dispersion",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left:68, right: 68),       
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_dispersion(),
                  ));
              },
            ),
            RaisedButton(
              child: Text("Grafico de columna apilada",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 38, right: 38),     
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_columna(),
                  ));
              },
            ),
            
            RaisedButton(
              child: Text("Grafico de Area",style: TextStyle(fontSize: 23.0,),),
              shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      ),
              padding: const EdgeInsets.only(
                      top: 8, bottom: 8, left: 38, right: 38),     
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder:(context)=> Grafico_area(),
                  ));
              },
            ),
          ],
        ),
      ),
    );
  }
}


