import 'package:cis350/plant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cis350/plants_by_location_screen.dart';

void main() {
  test('Fetch fourth plant in the plant list', () async {
    // Pull the plant list using the fetchPlants method
    Future<List<Plant>> plantList = fetchPlants();

    // Wait for the plant list asynchronously
    List<Plant> plants = await plantList;

    // Pull the 4th plant from the list
    Plant testPlant = plants[3];

    // Perform Checks
    expect(testPlant, isNotNull);
    expect(testPlant.commonName, 'Basil');
    expect(testPlant.scientificName, 'Ocimum Basilicum');
    expect(testPlant.family, 'Mint');
    expect(testPlant.plantType, 'Herb');
    expect(testPlant.matureSize, 'Small');
    expect(testPlant.sunNeeds, 'Full');
    expect(testPlant.soilNeeds, 'Rich');
    expect(testPlant.waterNeeds, 'High Maintenance');
    expect(testPlant.flowerColor, 'White');
    expect(testPlant.idealTemperature, 'Not Cold Tolerant');
    expect(testPlant.nativeContinent, 'Africa, Asia');
    expect(testPlant.toxicity, 'Nontoxic');
    expect(testPlant.notes,
        'Basil is a member of the mint family. It edible and is commonly used as an ingredient in italian style dishes like pesto and margherita pizza.');
  });

  test('Fetch twelfth plant in the plant list', () async {
    // Pull the plant list using the fetchPlants method
    Future<List<Plant>> plantList = fetchPlants();

    // Wait for the plant list asynchronously
    List<Plant> plants = await plantList;

    // Pull the 12th plant from the list
    Plant testPlant = plants[11];

    // Perform Checks
    expect(testPlant, isNotNull);
    expect(testPlant.commonName, 'Ficus Audrey');
    expect(testPlant.scientificName, 'Ficus Benghalensis');
    expect(testPlant.family, 'Moraceae');
    expect(testPlant.plantType, 'Tree');
    expect(testPlant.matureSize, 'Large');
    expect(testPlant.sunNeeds, 'Partial');
    expect(testPlant.soilNeeds, 'Well Drained, Moist, Acidic');
    expect(testPlant.waterNeeds, 'High Maintenance');
    expect(testPlant.flowerColor, 'Nonflowering');
    expect(testPlant.idealTemperature, 'Not Cold Tolerant');
    expect(testPlant.nativeContinent, 'Asia');
    expect(testPlant.toxicity, 'Pets, People');
    expect(testPlant.notes,
        'Dust can accumulate on the leaves of this plant which can hinder photosynthesis. It is recommended to clean the leaves with a damp washcloth.');
  });
}
