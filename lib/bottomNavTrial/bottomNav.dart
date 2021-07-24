import 'package:flutter/material.dart';
import 'package:just_for_fun_flutter/downloadButtonDemo/main_list.dart';

class HomeBottomNavigationBarTrialPage extends StatefulWidget {
  const HomeBottomNavigationBarTrialPage({
    Key? key,
  }) : super(key: key);

  @override
  _HomeBottomNavigationBarTrialPageState createState() =>
      _HomeBottomNavigationBarTrialPageState();
}

class _HomeBottomNavigationBarTrialPageState
    extends State<HomeBottomNavigationBarTrialPage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download button demo'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cases),
            label: 'Work',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Pay',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        onTap: (value) {
          setState(() {
            _page = value;
          });
        },
      ),
      body: MainList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class HomeBottomAppBarTrialPage extends StatefulWidget {
  const HomeBottomAppBarTrialPage({
    Key? key,
  }) : super(key: key);

  @override
  _HomeBottomAppBarTrialPageState createState() =>
      _HomeBottomAppBarTrialPageState();
}

class _HomeBottomAppBarTrialPageState extends State<HomeBottomAppBarTrialPage> {
  int _page = 0;

  void changePage(int index) {
    print(index);
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download button demo'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomNavBarItem(),
            Expanded(
              child: InkWell(
                onTap: () => changePage(1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.cases),
                    Text('Work'),
                  ],
                ),
              ),
            ),
            Spacer(),
            Expanded(
              child: InkWell(
                onTap: () => changePage(2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.cases),
                    Text('Work'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => changePage(3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.cases),
                    Text('Work'),
                  ],
                ),
              ),
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.cases),
            //   label: 'Duty',
            //   backgroundColor: Colors.lightBlue,
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.credit_card),
            //   label: 'Lavajam',
            //   backgroundColor: Colors.lightBlue,
            // ),
            // Spacer(),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.notifications),
            //   label: 'Notifications',
            //   backgroundColor: Colors.lightBlue,
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'Profile',
            //   backgroundColor: Colors.lightBlue,
            // ),
          ],
        ),
        // onTap: (value) {
        //   setState(() {
        //     _page = value;
        //   });
        // },
      ),
      body: MainList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Expanded buildBottomNavBarItem() {
    return Expanded(
      child: InkWell(
        onTap: () => changePage(0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cases),
            Text('Work'),
          ],
        ),
      ),
    );
  }
}
