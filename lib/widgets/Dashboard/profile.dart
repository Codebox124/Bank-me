import 'package:bank_me/screens/dashboard.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<ProfileList> lists = [
   const ProfileList(
      icon: Icon(Icons.history_rounded),
      title: "Transaction History",
    ),
     const ProfileList(
      icon: Icon(Icons.notifications),
      title: "Notifications",
    ),
    const ProfileList(
      icon: Icon(Icons.settings),
      title: "Settings",
    ),
    const ProfileList(
      icon: Icon(Icons.card_giftcard_outlined),
      title: "Rewards",
    ),
    const ProfileList(
      icon: Icon(Icons.bookmark),
      title: "Terms & Condition",
    ),
    const ProfileList(
      icon: Icon(Icons.logout),
      title: "LogOut",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Dashboard()));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                const Text(
                  "My Profile",
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox()
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/profile.png',
                                width: 80,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text("@codebox"),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.edit_note_sharp,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 470,
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return proileSub(list: lists[index]);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget proileSub({
  required ProfileList list,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(),
        child: ListTile(
          title: Text(list.title),
          leading: list.icon,
         
        ),
      ),
    );

class ProfileList {
  final Icon icon;
  final String title;

  const ProfileList({
    required this.title,
    required this.icon,
  });
}
