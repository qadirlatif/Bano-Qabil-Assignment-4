import 'dart:math';

void main() {
  //Sir! This Question is copied from internet and this question also have errors
  final cityLocations = {
    "karachi":[4545454,787878787],
    "lahore":[7878787,7987654],
    "islamabad":[54654321,2435424],
    "hyderabad":[4543243513215454,5465321],
    "kashmir":[5756546843,321354654],
    "quetta":[6579654632,321321],

  };
  final startCity = 'New York City';
  final endCity = 'San Francisco';
  final startLat = cityLocations[startCity][0];
  final startLon = cityLocations[startCity][1];
  final endLat = cityLocations[endCity][0];
  final endLon = cityLocations[endCity][1];
  final startLatRad = degreesToRadians(startLat);
  final startLonRad = degreesToRadians(startLon);
  final endLatRad = degreesToRadians(endLat);
  final endLonRad = degreesToRadians(endLon);

  // Calculate the distance between the starting and ending cities
  final earthRadius = 6371; // km
  final centralAngle = acos(sin(startLatRad) * sin(endLatRad) + cos(startLatRad) * cos(endLatRad) * cos(endLonRad - startLonRad));
  final distance = earthRadius * centralAngle;

  // Print the shortest distance between the starting and ending cities
  print('The shortest distance between $startCity and $endCity is ${distance.toStringAsFixed(2)} km.');
}

double degreesToRadians(double degrees) {
  return degrees * pi / 180;
}