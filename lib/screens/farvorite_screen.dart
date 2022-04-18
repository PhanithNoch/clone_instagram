import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: const [
                  Text(
                    'Activity',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text('New', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const fovoriteItemWidget(),
              const fovoriteItemWidget(),
              const fovoriteItemWidget(),
              const fovoriteItemWidget(),
              Row(
                children: const [
                  Text('Suggested for youu',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const fovoriteItemWidget(),
              const fovoriteItemWidget(),
              fovoriteItemWidget(),
              fovoriteItemWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class fovoriteItemWidget extends StatelessWidget {
  const fovoriteItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          const CircleAvatar(
            foregroundImage: NetworkImage(
                'https://i.pinimg.com/736x/71/80/fe/7180fec2184747e8034b2988752ea7da.jpg'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Chelinchelin ',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  'started following you.',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  '3d',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Expanded(child: TextButton(onPressed: () {}, child: Text('Follow')))
        ],
      ),
    );
  }
}
