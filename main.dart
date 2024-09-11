import 'dart:io';

// String Manipulation
void stringManipulation() {
  // Concatenation
  String str1 = "Hello";
  String str2 = "World";
  String concatenated = "$str1 $str2"; // String interpolation
  print("Concatenated String: $concatenated");

  // Substring Extraction
  String substring = concatenated.substring(0, 5);
  print("Substring: $substring");

  // Case Conversion
  print("Uppercase: ${concatenated.toUpperCase()}");
  print("Lowercase: ${concatenated.toLowerCase()}");

  // Reverse String
  String reversed = concatenated.split('').reversed.join('');
  print("Reversed String: $reversed");

  // String Length
  print("Length of String: ${concatenated.length}");
}

// Collections: Lists, Sets, Maps
void collectionsDemo() {
  // List
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.add('Mango'); // Adding an item
  fruits.remove('Banana'); // Removing an item
  print("List of Fruits: $fruits");

  // Set
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5); // Adding an item
  numbers.remove(3); // Removing an item
  print("Set of Numbers: $numbers");

  // Map
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};
  ages['Charlie'] = 35; // Adding a key-value pair
  ages.remove('Alice'); // Removing a key-value pair
  print("Map of Ages: $ages");

  // Appropriate Use Cases
  print("Lists are used when you need an ordered collection of items.");
  print("Sets are used when you need unique items without duplicates.");
  print("Maps are used for key-value pairs where each key maps to a value.");
}

// File Handling
void fileHandling() async {
  try {
    // Reading from a file
    File inputFile = File('input.txt');
    String content = await inputFile.readAsString();
    print("Content of input.txt: $content");

    // Writing to another file
    File outputFile = File('output.txt');
    await outputFile.writeAsString("This is the new content.");
    print("Data written to output.txt");
  } catch (e) {
    print("Error during file operations: $e");
  }
}

// Date and Time Operations
void dateTimeOperations() {
  // Current DateTime
  DateTime now = DateTime.now();
  print("Current DateTime: $now");

  // Formatting DateTime
  String formattedDate = "${now.year}-${now.month}-${now.day}";
  print("Formatted Date: $formattedDate");

  // Parsing DateTime
  DateTime parsedDate = DateTime.parse("2024-09-10");
  print("Parsed Date: $parsedDate");

  // Adding/Subtracting Days
  DateTime nextWeek = now.add(Duration(days: 7));
  print("Date One Week From Now: $nextWeek");

  // Calculating Difference Between Dates
  DateTime pastDate = DateTime(2024, 1, 1);
  Duration difference = now.difference(pastDate);
  print("Days Since January 1, 2024: ${difference.inDays}");
}

void main() {
  // Calling functions to demonstrate functionality
  print("String Manipulation:");
  stringManipulation();
  
  print("\nCollections Demo:");
  collectionsDemo();
  
  print("\nFile Handling:");
  fileHandling();
  
  print("\nDate and Time Operations:");
  dateTimeOperations();
}
