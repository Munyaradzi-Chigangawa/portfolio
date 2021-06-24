import 'package:flutter/material.dart';
import 'package:portfolio/data/projects.dart';
import 'package:portfolio/utils/linkicon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'responsive_widget.dart';

class Footer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Get in touch
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: Colors. deepPurple,
                          ),
                          const SizedBox(width: 7.5),
                          Text(
                            'GET IN TOUCH',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text('Do you have an idea? Well I am here to turn your dream into a real digital solution.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'munyaradzichigangawa6@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        '+263 77 228 8925',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        '9801 Ruvimbo 2, Chinhoyi, Zimbabwe',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Aout me
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: Colors.deepPurple,
                          ),
                          const SizedBox(width: 7.5),
                          Text(
                            'ABOUT ME',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'I am developer with 2+ years experience developing mobile and web applications, using different languages and techniques.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // My projects
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: Colors.deepPurple,
                          ),
                          const SizedBox(width: 7.5),
                          Text(
                            'RECENT PROJECTS',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: PROJECTS
                            .take(4)
                            .map((p) => _buildProject(context, p))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: Colors.grey.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Powered by Munyaradzi Chigangawa ©${DateTime.now().year}',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(.75),
                  ),
                ),
                Row(children:<Widget>[
              ExternalLinkIcon(
                linkIcon: 'icons/linkedin.png',
                linkURL: 'https://zw.linkedin.com/in/munyaradzi-chigangawa-45170818b',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/github.png',
                linkURL: 'https://github.com/Munyaradzi-Chigangawa',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/twitter.png',
                linkURL:
                    'https://www.twitter.com/mchigangawa',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/fb.png',
                linkURL:
                    'https://www.facebook.com/people/Munyaradzi-Chigangawa/100005882974770/',
              ),
            ],),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(width: 7.5),
                    Text(
                      'GET IN TOUCH',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Do you have an idea? Well I am here to turn your dream into a real digital solution.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "munyaradzichigangawa6@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "+263 77 228 8925",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  '9801 Ruvimbo 2 Chinhoyi,',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            // Aout me
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(width: 7.5),
                    Text(
                      'ABOUT ME',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'I am developer with 2+ years experience developing mobile and web applications, using different languages and techniques.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // My projects
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(width: 7.5),
                    Text(
                      'RECENT PROJECTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: PROJECTS
                      .take(4)
                      .map((p) => _buildProject(context, p))
                      .toList(),
                )
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: Colors.grey.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ExternalLinkIcon(
                linkIcon: 'icons/linkedin.png',
                linkURL: 'https://zw.linkedin.com/in/munyaradzi-chigangawa-45170818b',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/github.png',
                linkURL: 'https://github.com/Munyaradzi-Chigangawa',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/twitter.png',
                linkURL:
                    'https://www.twitter.com/mchigangawa',
              ),
              ExternalLinkIcon(
                linkIcon: 'icons/fb.png',
                linkURL:
                    'https://www.facebook.com/people/Munyaradzi-Chigangawa/100005882974770/',
              ),
            ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Powered by Munyaradzi Chigangawa ©${DateTime.now().year}',
              style: TextStyle(
                color: Colors.grey.withOpacity(.75),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) => InkWell(
        onTap: () {
          launch(project.url);
        },
        child: ResponsiveWidget(
          desktopScreen: Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.width * .1,
            child: Image.asset(project.image),
          ),
          mobileScreen: Container(
            color: Colors.grey,
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * .2,
            height: MediaQuery.of(context).size.width * .2,
            child: Image.asset(project.image),
          ),
        ),
      );
}