import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  image: NetworkImage(
                      "https://media-cdn.tripadvisor.com/media/photo-s/14/1d/6d/"
                      "4c/vestmanna-bird-cliffs.jpg")),
              Positioned(
                bottom: -60,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/profile"
                      ".png"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Center(child: Text("sudais bin sohail",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"
            ),)),
            subtitle:
                Center(child: Text("Native Android and Flutter Developer",
                    style: TextStyle(
                    fontFamily: "Poppins"
                ))),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.email,color: Colors.white,),
              label: Text("Contact me",style: TextStyle(color: Colors.white,
              fontFamily: "Poppins")
                ,)),
          ListTile(
            title: Text("About me"),
            subtitle: Text("I am a highly motivated software engineer with a "
                "Bachelor of Software Engineering degree from the University "
                "of Management and Technology . With strong problem-solving"
                " skills and attention to detail, I excel at managing complex "
                "projects and meeting deadlines. ",
                style: TextStyle(
                    fontFamily: "Poppins"
                )),
          )
        ],
      ),
    );
  }
}
