//No. 1 (a)
//Flutter is an open-source framework for building high-performance, 
//cross-platform applications from a single codebase.


//Types of Applications You Can Develop with Flutter:

//1. Mobile Apps (iOS & Android): Social Media Apps: Apps like Instagram,
//2.Web Applications:
   // Flutter also supports building web applications, 

//3. Desktop Applications (Windows, macOS, Linux):
   //- Productivity Tools: Flutter can be used to create desktop apps like text editors, note-taking apps, and task management apps.
  
// (b)
// built in null safety: it helps developers to avoid errors
// high performance:
// it uses hot reload which helps develpers to view their codes
// it also uses hot restart which allows the developer to run the whole code.
//it allows a developer to use a sigle code base for for applications and web applications.


// (c)
// Dart programming language is a laguage used to develop cross platform applications.
// it is used because it uses single  codebase for multible platforms
// it is also easy to learn
// it enables high performance.


// (d)
//Hot reload is a feature in Flutter that allows developers to instantly view changes
// made to the code without restarting the entire application. 
 // it helps the developer to save time

// (e)
// hot reload
// hot restart
// use of single codebase for multiple platforms

// (f)
// 1. Stateless Widgets
//A stateless widget is a widget which when built cannot change r re-render based 
//on user interaction or other changes. 

//2. Stateful Widgets
//A stateful widget, on the other hand, can maintain internal state that can change over time 
//and re-render as needed. This allows the UI to respond to user interactions or other dynamic changes.


// (g)
int add(int a, int b) {
  return a + b;
}

// (h)
void main() {
  // Input number to check
  int number = 10; 
  
  // Check if number is even or odd
  if (number % 2 == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }
}

// (i)
void map() {
  // Create a map to store names
  Map<int, String> namesMap = {};

  // Add three names to the map
  namesMap[1] = 'Emily';
  namesMap[2] = 'Allen';
  namesMap[3] = 'kloe';

  // Print the contents of the map
  print('Names in the map:');
  namesMap.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}




