import 'story.dart';

class StoryBrain {
  int _currentIndex = 0;
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        optionA: 'I\'ll hop in. Thanks for the help!',
        optionB: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        optionA: 'At least he\'s honest. I\'ll climb in.',
        optionB: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        optionA: 'I love Elton John! Hand him the cassette tape.',
        optionB: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        optionA: 'Restart',
        optionB: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        optionA: 'Restart',
        optionB: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        optionA: 'Restart',
        optionB: '')
  ];

  String getStory() {
    return _storyData[_currentIndex].storyTitle;
  }

  String getOptionA() {
    return _storyData[_currentIndex].optionA;
  }

  String getOptionB() {
    return _storyData[_currentIndex].optionB;
  }

  void restart() {
    _currentIndex = 0;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _currentIndex == 0) {
      _currentIndex = 2;
    } else if (choiceNumber == 2 && _currentIndex == 0) {
      _currentIndex = 1;
    } else if (choiceNumber == 1 && _currentIndex == 2) {
      _currentIndex = 5;
    } else if (choiceNumber == 2 && _currentIndex == 2) {
      _currentIndex = 4;
    } else if (choiceNumber == 1 && _currentIndex == 1) {
      _currentIndex = 2;
    } else if (choiceNumber == 2 && _currentIndex == 1) {
      _currentIndex = 3;
    } else if (_currentIndex == 3 || _currentIndex == 4 || _currentIndex == 5) {
      restart();
    }
  }

  bool buttonShouldBeVisible() {
    if (_currentIndex == 0 || _currentIndex == 1 || _currentIndex == 2) {
      return true;
    } else {
      return false;
    }
  }
}
