import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Top', style: TextStyle(color: Colors.black54)),
              ),
              Tab(
                child: Text('Account', style: TextStyle(color: Colors.black54)),
              ),
              Tab(
                child: Text('Tags', style: TextStyle(color: Colors.black54)),
              ),
              Tab(
                child: Text(
                  'Places',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search'),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.black54),
                ))
          ],
        ),
        body: const TabBarView(
          children: [
            TopTabViewItemWidget(),
            AccountTabViewItemWidget(),
            const TagsTabViewItemWidget(),
            const PlacesTabViewWidget(),
          ],
        ),
      ),
    );
  }
}

class TopTabViewItemWidget extends StatelessWidget {
  const TopTabViewItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Top'),
    );
  }
}

class AccountTabViewItemWidget extends StatelessWidget {
  const AccountTabViewItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account'),
    );
  }
}

class TagsTabViewItemWidget extends StatelessWidget {
  const TagsTabViewItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tags'),
    );
  }
}

class PlacesTabViewWidget extends StatelessWidget {
  const PlacesTabViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Places'),
    );
  }
}
