import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        title: SizedBox(
          width: 100,
          child: Image.asset('assets/condogenius.png'),
        ),
        toolbarHeight: 90,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        actions: [
          const CircleAvatar(
            radius: 21,
            backgroundColor: Color.fromARGB(255, 182, 182, 182),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/avatar_h.png'),
            ),
          ),
          const SizedBox(width: 10),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu,
                  color: Color.fromARGB(255, 90, 90, 90)),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'Avisos',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    decorationColor: Colors.yellow,
                    decorationThickness: 5,
                    color: Colors.transparent, // Step 2 SEE HERE
                    shadows: [
                      Shadow(offset: Offset(0, -10), color: Colors.black)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    const Flexible(
                      child: TextField(
                        minLines: 4,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 151, 151, 151),
                                width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 151, 151, 151),
                                width: 2.0),
                          ),
                          filled: false,
                          hintText: 'Escreva um aviso..',
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    IconButton(
                      iconSize: 25.0,
                      icon: const Icon(Icons.edit_note),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 21,
                          backgroundColor: Color.fromARGB(255, 182, 182, 182),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/avatar_h.png'),
                          ),
                        ),
                        Text(
                          'Julia Screffer',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text('-'),
                        Text('24 de abri')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
