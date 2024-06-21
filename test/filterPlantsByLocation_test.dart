import 'package:cis350/plant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cis350/plants_by_location_screen.dart';

void main() {
// Create a set of test plants with a specific family to be sorted by
  Plant p1 = Plant(
      commonName: 'Plant in A',
      scientificName: '',
      family: 'A',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p2 = Plant(
      commonName: 'Plant in A and B',
      scientificName: '',
      family: 'A, B',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p3 = Plant(
      commonName: 'Plant in B and C',
      scientificName: '',
      family: 'B, C',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p4 = Plant(
      commonName: 'Plant in B',
      scientificName: '',
      family: 'B',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p5 = Plant(
      commonName: 'Plant in A and C',
      scientificName: '',
      family: 'A, C',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p6 = Plant(
      commonName: 'Plant in A',
      scientificName: '',
      family: 'A',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p7 = Plant(
      commonName: 'Plant in C',
      scientificName: '',
      family: 'C',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p8 = Plant(
      commonName: 'Plant in B',
      scientificName: '',
      family: 'B',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');
  Plant p9 = Plant(
      commonName: 'Plant in A, B and C',
      scientificName: '',
      family: 'A, B, C',
      plantType: '',
      matureSize: '',
      sunNeeds: '',
      soilNeeds: '',
      waterNeeds: '',
      flowerColor: '',
      idealTemperature: '',
      nativeContinent: '',
      toxicity: '',
      notes: '');

  test('Test sorting plants by family A', () async {
    // Load the plants into a list
    List<Plant> plants = [p1, p2, p3, p4, p5, p6, p7, p8, p9];

    // Filter the list for plants in family A
    List<Plant> filteredPlantList = filterPlantsByLocation(plants, 'A');

    // Check that the returned list only contains plants from group A
    for (Plant p in filteredPlantList) {
      expect(p, isNotNull);
      expect(p.commonName.contains('A'), isTrue);
    }
  });

  test('Test sorting plants by family C', () async {
    // Load the plants into a list
    List<Plant> plants = [p1, p2, p3, p4, p5, p6, p7, p8, p9];

    // Filter the list for plants in family C
    List<Plant> filteredPlantList = filterPlantsByLocation(plants, 'C');

    // Check that the returned list only contains plants from group A
    for (Plant p in filteredPlantList) {
      expect(p, isNotNull);
      expect(p.commonName.contains('C'), isTrue);
    }
  });
}
