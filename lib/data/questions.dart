import 'package:quiz_app/models/quiz_model.dart';

const questions = [
  QuizModel("What are the main building blocks of flutter UIs", [
    "Widgets",
    "Functions",
    "Components",
    "Blocks",
  ]),
  QuizModel("How are Flutter UIs built?", [
    "By combining widgets in code",
    "By combining widgets in a VS editor",
    "By defining widgets in config files",
    "By using XCode for iOS amd Android Studio for Android",
  ]),
  QuizModel("What's the purpose of a StatefulWidget", [
    "Update UI as data changes",
    "Update data as UI changes",
    "Ignore data changes",
    "Rendering UI that doesn't depend on data",
  ]),
  QuizModel(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizModel('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),
  QuizModel('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),
];
