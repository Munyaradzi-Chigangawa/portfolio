import 'package:flutter/material.dart';
import 'package:portfolio/config/styles.dart';
import 'responsive_widget.dart';

class WorkingProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('WORK PLAN', style: AppStyles.title),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '01.',
                      'icons/pencil.jpg',
                      'Plan',
                      'Gathering all the necessary information to solve a problem.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'icons/design.jpg',
                      'Design',
                      'Prototyping with the requirements specifications.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'icons/code.png',
                      'Code',
                      'Building Systems with different programming languages and platforms.'),
                )
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'WORK PLAN',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            __buildProcess(context, '01.', 'icons/pencil.jpg', 'Plan',
                'Gathering all the necessary information to solve a problem.'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'icons/design.jpg', 'Design',
                'Prototyping with the requirements specifications.'),
            const SizedBox(height: 10),
            __buildProcess(context, '03.', 'icons/code.png', 'Code',
                'Building Systems with different programming languages and platforms.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: Colors.white),
            const SizedBox(height: 10),
            //AppIcon(iconPath, color: AppColors.black, size: 40),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
