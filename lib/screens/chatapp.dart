import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff075E55),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                Tab(
                  text: 'chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'calls',
                ),
              ],
            ),
            title: const Text('WhatsApp'),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [];
                },
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Container(
                child: const Text('camera'),
              ),
              const Mylist(),
              status(),
              const Mycalls(),
            ],
          )),
    );
  }
}

class MyTile extends StatelessWidget {
  MyTile(this.idx);
  int idx;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff5FE197),
      ),
      title: Text('user ${idx}'),
      subtitle: const Text('hallo my friend'),
      trailing: Column(
        children: [
          const SizedBox(height:10,),
          const Text('6.12 pm',style: TextStyle(color: Color(0xff0CD15B))),
          const SizedBox(height:10,),
          Stack(
            children: const [
              Icon(Icons.circle, color: Color(0xff0CD15B), size: 20),
              Positioned(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                  left: 7,
                  top: 2.5)
            ],
          ),
        ],
      ),
      onTap: null,
      enabled: true,
    );
  }
}

class Mylist extends StatelessWidget {
  const Mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Center(
            child: Container(
              width: 300,
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          itemCount: 20,
          itemBuilder: (context, idx) => MyTile(idx + 1),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: null,child: const Icon(Icons.chat),backgroundColor: Colors.green.shade300,),
    );
  }
}

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Stack(
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Color(0xff5FE297),
                      ),
                    ),
                    const Positioned(
                      left: 46,
                      top: 47,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff25d366),
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'My Status',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Tap to add status update',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade200,
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
              bottom: 10,
            ),
            child: Text(
              'Recent Updates',
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Center(
                child: Divider(
                  color: Colors.grey,
                  height: 1,
                  endIndent: 50,
                  indent: 50,
                ),
              ),
              itemCount: 20,
              itemBuilder: (context, idx) => Mystatus(idx + 1),
            ),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const FloatingActionButton.small(onPressed: null,child: Icon(Icons.edit,color: Color(0xff426F66)),backgroundColor: Color(0xffEDF5F8),),
          FloatingActionButton(onPressed: null,child: Icon(Icons.camera_alt),backgroundColor: Colors.green.shade300,),
        ],
      ),
    );
  }
}

class Mystatus extends StatelessWidget {
  Mystatus(this.idx);
  int idx;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: StatusView(
        radius: 32,
        spacing: 15,
        strokeWidth: 3,
        indexOfSeenStatus: 3,
        numberOfStatus: 5,
        seenColor: Colors.grey,
        unSeenColor: Colors.green.shade300,
        centerImageUrl: "https://picsum.photos/200/300",
      ),
      title: Text('user ${idx}'),
      subtitle: const Text('12 Minutes age'),
      onTap: null,
      enabled: true,
    );
  }
}

class calls extends StatelessWidget {
  calls(this.idx);
  int idx;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff5FE197),
      ),
      title: Text('user ${idx}'),
      subtitle: Row(
        children: const [
          Icon(Icons.call_made, size: 15,color: Color(0xff0CD15B)),
          Text(' 5 June. 525 pm'),
        ],
      ),
      trailing: Icon(Icons.videocam,color: Colors.green.shade300),
      onTap: null,
      enabled: true,
    );
  }
}

class Mycalls extends StatelessWidget {
  const Mycalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => Center(
            child: Container(
              width: 300,
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          itemCount: 20,
          itemBuilder: (context, idx) => calls(idx + 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add_ic_call),backgroundColor: Colors.green.shade300,),
    );
  }
}
