import 'dart:ui';
import 'package:flutter/material.dart';
import 'additional_information_item.dart';
import 'hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Rain',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            // 2. Weather Forcast
            const Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),

            const SizedBox(
              height: 16,
            ),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                HourlyForecastItem(
                  time: '00:00',
                  icon: Icons.cloud,
                  temprature: '301.22',
                ),
                HourlyForecastItem(
                  time: '03:00',
                  icon: Icons.sunny,
                  temprature: '274.65',
                ),
                HourlyForecastItem(
                  time: '06:00',
                  icon: Icons.snowing,
                  temprature: '105.22',
                ),
                HourlyForecastItem(
                  time: '09:00',
                  icon: Icons.cloud,
                  temprature: '301.22',
                ),
                HourlyForecastItem(
                  time: '12:00',
                  icon: Icons.cloudy_snowing,
                  temprature: '205.22',
                ),
              ]),
            ),
            const SizedBox(
              height: 24,
            ),

            // 3. Additional Information
            const Text(
              'Aditional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),

            const SizedBox(
              height: 16,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInformationItem(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '94',
                ),
                AdditionalInformationItem(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '7.56',
                ),
                AdditionalInformationItem(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '1007',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
