import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/shared/spaced_column.dart';
import 'package:weather_app/shared/spaced_row.dart';

import 'hourly_prediction_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
              onPressed: () {
                //print("Refresh Button Pressed");
              },
              icon: const Icon(Icons.refresh))
        ],
        centerTitle: true,
      ),
      body: SpacedColumn(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: SpacedColumn(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("300.67 F",
                          style: Theme.of(context).textTheme.titleLarge),
                      const Icon(
                        Icons.cloud_done_rounded,
                        size: 50,
                      ),
                      Text(
                        "Rain",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Text("Weather Forecast"),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  SpacedRow(
              children: [
                HourlyPredictionCard(),
                HourlyPredictionCard(),
                HourlyPredictionCard(),
                HourlyPredictionCard(),
                HourlyPredictionCard(),
              ],
            ),
          ),
          const Text("Additional Information"),
          const SpacedRow(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: SpacedColumn(
                  padding: EdgeInsets.only(right: 15.0, left: 15.0),
                  children: [
                    Icon(Icons.water_drop_sharp),
                    Text("Humidity"),
                    Text("90")
                  ],
                ),
              ),
              Card(
                child: SpacedColumn(
                  padding: EdgeInsets.only(right: 15.0, left: 15.0),
                  children: [
                    Icon(Icons.wind_power_rounded),
                    Text("Wind speed"),
                    Text("7.67")
                  ],
                ),
              ),
              Card(
                child: SpacedColumn(
                  padding: EdgeInsets.only(right: 15.0, left: 15.0),
                  children: [
                    Icon(Icons.umbrella_sharp),
                    Text("Pressure"),
                    Text("1000")
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
