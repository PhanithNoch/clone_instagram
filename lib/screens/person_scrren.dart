import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Manel_rzl'),
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 52,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 50,
                          foregroundImage: NetworkImage(
                            'https://i.pinimg.com/280x280_RS/50/65/03/506503e39b5285f7831cb02d8e8f9e1d.jpg',
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: const [
                              Text(
                                '44',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text('Posts'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Text(
                                '44',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text('Followers'),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Text(
                                '44',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hii !\'m Manaaal '),
                          SizedBox(
                            height: 5,
                          ),
                          Text('1999* | Morocco'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Creator of @__sciarpa'),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Soon to of everywhere'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                          child: const Text('Edit Profile'),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                          child: const Text('Promotion'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
