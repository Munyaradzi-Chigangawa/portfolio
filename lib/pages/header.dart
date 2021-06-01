import 'package:flutter/material.dart';
//import 'package:portfolio/config/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'responsive_widget.dart';

class Header extends StatelessWidget {
  final String _name = "Munyaradzi Chigangawa";
  final String _job = "Developer";
  final String _description =
      "I am developer with 2+ years experience developing mobile and web applications, using different languages and techniques.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I’m $_name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                _job,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  _description,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          onPrimary: Colors.white,
                        ),
                onPressed: _launchDownloadCV,
                child: Text('Download CV'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m $_name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  _job,
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    _description,
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Colors.grey[100],
                          fontSize: 15,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          onPrimary: Colors.white,
                        ),
                  onPressed: _launchDownloadCV,
                  child: Text('Download CV'),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  _launchDownloadCV() async {
  const url = 'https://drive.google.com/file/d/15SHZHUIyG3WR5S69zBpCCIcX3auchETl/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  }
