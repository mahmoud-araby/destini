import 'package:destini_challenge_starting/story.dart';

class StoryBrain {
  int _Current_story = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.',
        choice1_next_story: 2,
        choice2_next_story: 1),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.',
        choice1_next_story: 2,
        choice2_next_story: 3),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.',
        choice1_next_story: 5,
        choice2_next_story: 4),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: '',
        choice1_next_story: 6,
        choice2_next_story: 6),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: '',
        choice1_next_story: 6,
        choice2_next_story: 6),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '',
        choice1_next_story: 6,
        choice2_next_story: 6),
  ];

  get_storyTitle() {
    return _storyData[_Current_story].storyTitle;
  }

  get_choice1() {
    return _storyData[_Current_story].choice1;
  }

  get_choice2() {
    return _storyData[_Current_story].choice2;
  }

  GoToNextStory(int choice) {
    if (choice == 1) {
      if (_storyData[_Current_story].choice1_next_story == 6) {
        _Current_story = 0;
      } else {
        _Current_story = _storyData[_Current_story].choice1_next_story;
      }
    } else if (choice == 2) {
      if (_storyData[_Current_story].choice2_next_story == 6) {
        _Current_story = 0;
      } else {
        _Current_story = _storyData[_Current_story].choice2_next_story;
      }
    }
  }

  bool buttonShouldBeVisible() {
    bool ret = true;
    if (_storyData[_Current_story].choice1_next_story == 6 &&
        _storyData[_Current_story].choice2_next_story == 6) {
      ret = false;
    } else {
      ret = true;
    }
    return ret;
  }
}
