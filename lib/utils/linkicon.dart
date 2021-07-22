import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//It Launches external URL with an Icon to display.
class ExternalLinkIcon extends StatelessWidget {
  final String linkIcon;
  final String linkURL;

  ExternalLinkIcon({
    @required this.linkIcon,
    @required this.linkURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(linkIcon),
        ),
      ),
      child: GestureDetector(
        onTap: () => launchURL(linkURL),
      ),
    );
  }

//Actual Function to launch external links.
launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
