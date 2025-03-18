import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import '../views/add__crisis.dart';

class SurvivalGuide extends StatefulWidget {
  const SurvivalGuide({super.key});

  @override
  State<SurvivalGuide> createState() => _SurvivalGuideState();
}

class _SurvivalGuideState extends State<SurvivalGuide> {
  //String Survival = '';
  /* TextEditingController type = TextEditingController();
  TextEditingController Survival = TextEditingController();*/
   String typeText='' ;
   String shareText ='';

  void _generateTexts() {
    setState(() {
      typeText = "";
    });

    setState(() {
      shareText = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.robot),
              ),
              const Text(
                'AI Survival Guide',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 15.0,
              )
            ],
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                typeText,
                maxLines: 3,
                style: TextStyle(fontSize: 20),
              ),
              Divider(
                color: Colors.black,
                thickness: 4,
              ),
              Text(
                shareText,
                maxLines: 10,
                style: TextStyle(fontSize: 20),
              ),
              Divider(
                color: Colors.black,
                thickness: 4,
              ),
            ],
          )),
    );
  }
}
