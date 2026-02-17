void conditional_statements() {
  const age = 20;
  if (age == 21) {
    print("age is 21");
  } else if (age == 22) {
    print("Age is 22");
  } else {
    print("Age is 20");
  }
}
void listing() {
  // 1. Declaration
  List<int> scores = [85, 92, 78];
  print("Initial List: $scores");

  // 2. Adding single item
  scores.add(95);
  print("After adding 95: $scores");

  // Adding multiple items
  scores.addAll([60, 70]);
  print("After adding [60, 70]: $scores");
  print("Length of scores: ${scores.length}");

  // 3. Modifying item at index 0
  scores[0] = 90;
  print("Modifying item at index 0 is :- ${scores[0]}");
  print("List after modification: $scores");

  // 4. Searching
  print("Does list contain 92? :- ${scores.contains(92)}");
  print("Index of 78 is :- ${scores.indexOf(78)}");

  // 5. Removing specific value
  scores.remove(60);
  print("After removing value 60: $scores");

  // Removing by index
  scores.removeAt(1);
  print("After removing item at index 1: $scores");

  // 6. Loop printing
  print("\nCurrent Scores:");
  for (var score in scores) {
    print("Scored: $score");
  }
}
void Sets() {
  // 1. Creating a Set
  Set<String> ingredients = {'Tomato', 'Onion', 'Garlic'};

  // 2. Trying to add a duplicate
  ingredients.add('Tomato');
  print(ingredients); // Output: {Tomato, Onion, Garlic} (Only one Tomato!)

  // 3. Set Math
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  print(setA.intersection(setB)); // Output: {3, 4}
  print(setA.union(setB)); // Output: {1, 2, 3, 4, 5, 6}

  // 4. Converting List to Set (To remove duplicates instantly)
  List<int> numbers = [1, 2, 2, 3, 4, 4, 4];
  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers); // Output: {1, 2, 3, 4}
}

void maps() {
  // 1. Defining a Map with String keys and dynamic values
  Map<String, dynamic> user = {
    'name': 'Ali',
    'age': 25,
    'isVerified': true,
  };

  // 2. Adding a new key-value pair
  user['email'] = 'ali@example.com';

  // 3. Updating an existing key
  user['age'] = 26; 

  // 4. Checking for a key before accessing
  if (user.containsKey('name')) {
    print('User name is: ${user['name']}');
  }

  print('Full User Data: $user');
}
void nullsafety(){
  // 1. COMMAND: Nullable Type Declaration (?)
  // ACTION: This allows the variable 'userStatus' to be empty (null).
  String? userStatus; 
  print('Step 1: The initial value of userStatus is: $userStatus');

  // 2. COMMAND: If-Null Operator (??)
  // ACTION: If 'userStatus' is null, it uses "Offline" instead.
  String currentDisplay = userStatus ?? "Offline";
  print('Step 2: Displaying status (fallback to Offline): $currentDisplay');

  // 3. COMMAND: Null-Aware Assignment (??=)
  // ACTION: Since 'userStatus' IS null, this assigns "Active" to it.
  userStatus ??= "Active";
  print('Step 3: After using ??= operator, userStatus is now: $userStatus');

  // 4. COMMAND: Null-Aware Access (?.)
  // ACTION: Tries to get the length. Since 'note' is null, it returns null instead of crashing.
  String? note;
  var noteLength = note?.length;
  print('Step 4: Safe access of null variable length: $noteLength');

  // 5. COMMAND: Null Assertion Operator (!)
  // ACTION: We "force" Dart to treat this as not null. 
  String? confirmedEmail = "test@test.com";
  String upperEmail = confirmedEmail!.toUpperCase();
  print('Step 5: Forced assertion and conversion: $upperEmail');
}