import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  List<String> names = [
    'Mbaje Rwaka Eric',
    'Samuel Butanda',
    'Kezakimana Chimane Loxella',
    'Fabrice Iradukunda',
    'Iradukunda Aimee Gloria',
    'Nyarugendo Nzatuma Moise',
  ];
  int currentIndex = 0;

  void changeName() {
    currentIndex = (currentIndex + 1) % names.length;
    notifyListeners();
  }

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> navigationItems = [
    'Group Members',
    'Mobile App Frameworks',
    'Learn Flutter',
    'Thanking and Blessing',
  ];

  final List<String> groupMembers = [
    'Mbaje Rwaka Eric',
    'Samuel Butanda',
    'Kezakimana Chimane Loxella',
    'Fabrice Iradukunda',
    'Iradukunda Aimee Gloria',
    'Nyarugendo Nzatuma Moise',
  ];

  final String flutterContent = '''
Learn Flutter is a section dedicated to learning the Flutter framework. Flutter is an open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It provides a rich set of pre-designed widgets and tools that enable developers to create beautiful and performant user interfaces.

Key features of Flutter:
- Hot Reload: Instantly see the changes you make to your code.
- Expressive and Flexible UI: Build visually stunning user interfaces using Flutter's extensive set of customizable widgets.
- Fast Performance: Flutter apps are compiled to native code, resulting in fast and smooth performance.
- Cross-Platform Development: Write code once and deploy it on multiple platforms, including iOS, Android, web, and desktop.

To learn Flutter, you can refer to the official Flutter documentation, online tutorials, and Flutter community resources. Happy Fluttering!
''';

  final String frameworksContent = '''
Mobile App Frameworks (MAFs) are software development frameworks that provide a foundation for building mobile applications. They offer a set of tools, libraries, and components that simplify the development process and enable developers to create feature-rich and cross-platform mobile apps more efficiently.

Types of Mobile App Frameworks:
1. Native Frameworks: These frameworks use platform-specific languages and APIs (such as Java/Kotlin for Android and Swift/Objective-C for iOS) to develop apps that can fully leverage the native capabilities of each platform.
2. Cross-Platform Frameworks: These frameworks allow developers to write code once and deploy it on multiple platforms, reducing development time and effort. They use a single codebase to create apps for different platforms.

Examples of popular Mobile App Frameworks:
- Native Frameworks: Android SDK (Java/Kotlin), iOS SDK (Swift/Objective-C)
- Cross-Platform Frameworks: Flutter, React Native, Xamarin

Qualities and characteristics of good Mobile App Frameworks:
- Ease of Use: The framework should have a user-friendly and intuitive interface, making it easy for developers to learn and use.
- Performance: The framework should provide efficient performance and smooth user experience.
- Cross-Platform Capabilities: Cross-platform frameworks should support multiple platforms and provide a consistent experience across different devices.
- Active Community and Support: A strong community and good developer support ensure that the framework stays up-to-date and addresses any issues or bugs.

When choosing the right mobile app framework, consider your project requirements, development team's skills, time constraints, and target platforms. Conduct research and evaluate the features, pros, and cons of different frameworks to make an informed decision.
''';

  final String thankingContent = '''
We would like to express our deepest gratitude and extend our heartfelt blessings to our esteemed lecture, Lubinga Nandere Hudson. Thank you for sharing your knowledge, expertise, and guidance throughout this course. Your dedication and passion have inspired us to explore the world of mobile app development frameworks and Flutter. We are grateful for your support and mentorship.

May you continue to inspire and empower aspiring developers with your wisdom and teaching. Wishing you success and fulfillment in all your endeavors.

Thank you and God bless you abundantly!

Group 2 - Mobile App Development Frameworks
''';

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Namer App|grp2 in app Dev frameworks'),
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: navigationItems.map((item) {
              return NavigationRailDestination(
                icon: Icon(Icons.category),
                label: Text(item),
              );
            }).toList(),
            selectedIndex: appState.currentIndex,
            onDestinationSelected: (index) {
              appState.changeIndex(index);
            },
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: appState.currentIndex == 0
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Covered Topics:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '1. Mobile application development frameworks',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '2. Flutter basics',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '3. NavigationRail widget',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '4. Thanking and Blessing',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Card(
                          color: Colors.blue,
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              'Group Members:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: groupMembers.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(groupMembers[index]),
                            );
                          },
                        ),
                      ],
                    )
                  : Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            navigationItems[appState.currentIndex],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text.rich(
                                  TextSpan(
                                    text: appState.currentIndex == 1
                                        ? frameworksContent
                                        : appState.currentIndex == 2
                                            ? flutterContent
                                            : thankingContent,
                                    style: TextStyle(fontSize: 18),
                                    children: [
                                      if (appState.currentIndex == 3)
                                        TextSpan(
                                          text: 'Lubinga Nandere Hudson',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
