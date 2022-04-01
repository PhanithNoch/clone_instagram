import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black54, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.black54,
              ))
        ],
      ),
      body: ListView(
        children: const [
          ItemListViewWidget(),
          ItemListViewWidget(),
          ItemListViewWidget(),
          ItemListViewWidget(),
        ],
      ),

      /// bottomNavigationbar
    );
  }
}

class ItemListViewWidget extends StatelessWidget {
  const ItemListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ProfileHeaderWidget(),
          Image.network(
            'https://www.unicef.org/pakistan/sites/unicef.org.pakistan/files/styles/hero_desktop/public/AZ_WASH_Punjab_132.JPG?itok=YWcKNrG1',
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.comment_sharp)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
            ],
          ),

          /// bottomAction
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 10,
                  foregroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzPGw_ZrHUFYCiweYgwUJj2BvJDOhPsVBDiw&usqp=CAU'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'liked by',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'mario',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                ),
                Text(
                  '\tand',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  ' another',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: const [
                Text(
                  'nith mario',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'ซีนแรกพร้อมครับบบบ!!!',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.face,
                  size: 20,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: TextFormField(
                  style: TextStyle(fontSize: 10),
                  decoration: const InputDecoration(
                    hintText: 'Add a comment',
                    hintStyle: TextStyle(fontSize: 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                children: const [
                  CircleAvatar(
                    radius: 14,
                    foregroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1615022702095-ff2c036f3360?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80'),
                  ),
                ],
              ),

              /// text section
              Padding(
                padding: EdgeInsets.only(left: 8, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nith Mario',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Cambodia',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
