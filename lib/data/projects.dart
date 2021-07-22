class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Skillset',
    description: 'Job linking app for freelancers.',
    image: 'images/projects/skillset.jpg',
    url: 'https://www.google.com',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Git',
    ],
  ),
  Project(
    name: 'MSU News',
    description: 'News sharing app.',
    image: 'images/projects/msunews.jpg',
    url:
        'https://www.google.com',
    skills: [
      'Dart',
      'Flutter',
      'Firebase',
      'Adobe XD',
      'Git',
    ],
  ),
];