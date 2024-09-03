import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List list=['Where are you', 'Are you free', 'Can you send me Money','Are you from ', 'ok'];
    List list1=[
      'https://images.pexels.com/photos/93827/pexels-photo-93827.jpeg?auto=compress&cs=tinysrgb&w=400',
      'https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/2450296/pexels-photo-2450296.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/733853/pexels-photo-733853.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg'
    ];
    int randInd;
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            backgroundColor: Colors.teal,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),

            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),

              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                child: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: '1',
                        child: Text('New Group'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('Setting'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('Logout'),
                    ),
                  ]
              ),
              SizedBox(width: 10,),
            ],
          ),
          body: TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(list1[Random().nextInt(list1.length)]),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text(list[Random().nextInt(list.length)]),
                    trailing: (index%2==0) ? Text('6.30 PM') : Text('9.40 AM'),
                  );
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Updates"),

                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return ListTile(

                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(list1[Random().nextInt(list1.length)]),
                            ),
                          ),
                          title: Text('John Wick'),
                          subtitle: Text(index%2==0 ? '35m ago' : '40m ago'),

                        );
                      },
                    ),
                  ),
                  Divider(color: Colors.grey.shade200, thickness: 1,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("Recents"),
                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return ListTile(

                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black26,
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage:NetworkImage(list1[Random().nextInt(list1.length)]),
                            ),
                          ),
                          title: Text('John Wick'),
                          subtitle: Text(index%2==0 ? '35m ago' : '40m ago'),

                        );
                      },
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return ListTile(

                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(list1[Random().nextInt(list1.length)]),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text(index%2==0 ? 'You have missed call' : 'call time is 12.30'),
                    trailing: Icon(index%2==0 ? Icons.phone: Icons.video_call),
                  );
                },
              ),

            ],
          ),
        ),
    );
  }
}

