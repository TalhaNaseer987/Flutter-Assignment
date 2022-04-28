import 'package:assignment/Story_brain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

StoryBrain storyBrain = new StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //TODO: Step 1 - Add background.png to this Container as a background image.
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),
                    style:
                        TextStyle(fontSize: 25.0, color: Colors.yellowAccent),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Theme(
                  data: Theme.of(context).copyWith(
                      textButtonTheme: TextButtonThemeData(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              primary: Colors.white))),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                      //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    },
                    child: Text(
                      //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                      storyBrain.getChoice1(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),

                // child: FlatButton(
                //   onPressed: () {
                //     setState(() {
                //       storyBrain.nextStory(1);
                //     });
                //     //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                //   },
                //   color: Colors.red,
                //   child: Text(
                //     //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                //     storyBrain.getChoice1(),
                //     style: TextStyle(
                //       fontSize: 20.0,
                //     ),
                //   ),
                // ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                primary: Colors.white))),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                        //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                      },
                      child: Text(
                        //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                        storyBrain.getChoice2(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  // child: FlatButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       storyBrain.nextStory(2);
                  //     });
                  //
                  //     //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  //   },
                  //   color: Colors.blue,
                  //   child: Text(
                  //     //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                  //     storyBrain.getChoice2(),
                  //     style: TextStyle(
                  //       fontSize: 20.0,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
