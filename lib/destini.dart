import 'package:destini_app/custom_widget/custom_button.dart';
import 'package:destini_app/logic/story_brain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

StoryBrain storyBrain = StoryBrain();

class DestiniPage extends StatefulWidget {
  const DestiniPage({super.key});

  @override
  State<DestiniPage> createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 5,
                        child: Center(
                          child: Text(
                            storyBrain.getStory(),
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                            height: 60,
                            child: CustomButton(
                              label: storyBrain.getOptionA(),
                              color: const Color(0xff394867),
                              voidCallback: () {
                                setState(() {
                                  storyBrain.nextStory(1);
                                });
                              },
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                          height: 60,
                          child: Visibility(
                            visible: storyBrain.buttonShouldBeVisible(),
                            child: CustomButton(
                              label: storyBrain.getOptionB(),
                              color: const Color(0xff394867),
                              voidCallback: () {
                                setState(() {
                                  storyBrain.nextStory(2);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
