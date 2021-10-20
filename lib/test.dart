import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "Be yourself, everyone else is already taken.",
    "I'm selfish, impatient and a little insecure."
        "I make mistakes, I am out of control and at times hard to handle."
        "But if you can't handle me at my worst,"
        "then you sure as hell don't deserve me at my best.",
    "Two things are infinite: the universe and human stupidity;"
        "and I'm not sure about the universe.",
    "So many books, so little time.",
    "A room without books is like a body without a soul.",
    "Be who you are and say what you feel,"
        "because those who mind don't matter, and those who matter don't mind.",
    "You only live once, but if you do it right, once is enough.",
    "Be the change that you wish to see in the world.",
    "In three words I can sum up everything I've learned about life: it goes on.",
    "f you tell the truth, you don't have to remember anything.",
    "A friend is someone who knows all about you and still loves you.",
    "Always forgive your enemies; nothing annoys them so much.",
    "Without music, life would be a mistake.",
    "Here's to the crazy ones. The misfits."
        "The rebels. The troublemakers. The round pegs in the square holes."
        "The ones who see things differently. They're not fond of rules."
        "And they have no respect for the status quo. You can quote them,"
        "disagree with them,"
        "glorify or vilify them. About the only thing you can't do is ignore them."
        "Because they change things. They push the human race forward."
        "And while some may see them as the crazy ones, we see genius."
        "Because the people who are crazy enough to think they can change the world,"
        "are the ones who do.",
    "Insanity is doing the same thing, over and over again,"
        "but expecting different results.",
    "I am so clever that sometimes I don't understand a single word of what I am saying.",
    "Live as if you were to die tomorrow. Learn as if you were to live forever."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.5),
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16.2,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(thickness: 3.0),
            // ignore: deprecated_member_use
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              // ignore: deprecated_member_use
              child: FlatButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny),
                label: Text("Inspire Me!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
                color: Colors.blueAccent.shade200,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    // increment our index counter by 1
    setState(() {
      _index++;
    });
  }
}
