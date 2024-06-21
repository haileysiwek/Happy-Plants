import 'package:cis350/plant.dart';
import 'package:cis350/search_plants_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
// Create a set of test plants with a specific family to be sorted by
  Plant p1 = Plant(
      commonName: 'Rose',
      scientificName: 'Rosa',
      family: 'Rosaceae',
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
      commonName: 'Lily',
      scientificName: 'Lilium',
      family: 'Liliaceae',
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
      commonName: 'Daisy',
      scientificName: 'Bellis perennis',
      family: 'Asteraceae',
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
      commonName: 'Tulip',
      scientificName: 'Tulipa',
      family: 'Liliaceae',
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

  final List<Plant> plants = [p1, p2, p3, p4];

  SearchPlantsScreenState createState() {
    final state = SearchPlantsScreenState();
    state.plantList = plants;
    state.filteredList = plants;
    return state;
  }

  test('Filter list by search text and not family', () async {
    final state = createState();

    final filteredPlants =
        await state.filterPlantsBySearchCriteria('rose', 'family');

    expect(filteredPlants.length, 1);
    expect(filteredPlants[0].commonName, 'Rose');
  });

  test('Filter list by family and not search text', () async {
    final state = createState();

    final filteredPlants =
        await state.filterPlantsBySearchCriteria('', 'Asteraceae');

    expect(filteredPlants.length, 1);
    expect(filteredPlants[0].commonName, 'Daisy');
  });

  test('Filter list by family and search text', () async {
    final state = createState();

    final filteredPlants =
        await state.filterPlantsBySearchCriteria('Tul', 'Liliaceae');

    expect(filteredPlants.length, 1);
    expect(filteredPlants[0].commonName, 'Tulip');
  });
}
