import 'package:flutter/material.dart';
import 'package:flutter_task/constant/imageconst.dart';
import 'package:flutter_task/main.dart';

void main() {
  runApp(const RailwayExamsApp());
}

class RailwayExamsApp extends StatelessWidget {
  const RailwayExamsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const RailwayExamsPage(),
    );
  }
}

class RailwayExamsPage extends StatelessWidget {
  const RailwayExamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(ImageConst.logo,scale: 1,),
        backgroundColor: Colors.black,
        title: const Text("Railway Exams"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Subscription Plans Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SubscriptionCard(

                title: "Abhyaas-Railways Group D",
                subtitle: "Started on 5Jan 2022\nMorning classes\nMS Mustafaa,Deepak Kumar,Samar Pratap Singh",
                imagePath: "assets/images/teamphoto.jpg",

              ),
              SubscriptionCard(

                title: "Lakshya-RRB NTPC CBT",
                subtitle: "Started on 5Jan 2022\nMorning classes\nVimlesh Yadav,MS \NDeepak Kumar Singh",
                imagePath: "assets/images/teamphoto.jpg",
                // Add your image path here
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
            child: const Text("View subscription plans"),
          ),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed: () {},
            child: const Text(
              "SEE HOW SUBSCRIPTION WORKS",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 16.0),

          // Exceptional Educators Section
          const SectionHeader(title: "Meet our\nexceptional educators"),
          const SizedBox(height: 8.0),
          EducatorCard(
            name: "Saurabh Malik",
            subject: "Quantitative Aptitude",
            followers: "72k followers",
            imagePath: "assets/images/men.jpg",
          ),

          const SizedBox(height: 16.0),

          // Courses Section
          const SectionHeader(title: "Courses on all subjects\nUpcoming"),
          const SizedBox(height: 8.0),

          CourseCard(
            title: "Target: Course on GK for Railway Group D",
            educator: "Saurabh Malik",
            imagePath: "assets/images/men.jpg",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Self Study"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {

  final String title;
  final String subtitle;
  final String imagePath;


  const SubscriptionCard({

    required this.title,
    required this.subtitle,
    required this.imagePath,


    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.only(right: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath, height: 60, width: double.infinity, fit: BoxFit.cover),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4.0),
              Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("SEE ALL", style: TextStyle(color: Colors.white),),
        ),
      ],
    );

  }
}


class EducatorCard extends StatelessWidget {
  final String name;
  final String subject;
  final String followers;
  final String imagePath;

  const EducatorCard({
    required this.name,
    required this.subject,
    required this.followers,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(width: 16.0),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(subject, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            Text(followers, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ],

    );

  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String educator;

  final String imagePath;

  const CourseCard({
    required this.title,
    required this.educator,

    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(imagePath, height: 50, width: 50, fit: BoxFit.cover),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(educator),

      ),
    );

  }
}
