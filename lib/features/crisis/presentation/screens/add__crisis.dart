import 'package:flutter/material.dart';

class AddCrisis extends StatefulWidget {
  const AddCrisis({super.key});

  @override
  State<AddCrisis> createState() => _AddCrisisState();
}

class _AddCrisisState extends State<AddCrisis> {
  final crisiskey = GlobalKey<FormState>();
  String description = '';
  String location = '';
  String type = '';
  bool resolved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 231, 1),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
              ))
        ],
        title: Center(
          child: Text(
            'Add Crisis',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
            key: crisiskey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                              hintText: 'Description',
                              filled: true,
                              fillColor: Color.fromARGB(255, 231, 228, 228),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)))),
                          onChanged: (value) {
                            setState(() {
                              description = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a description';
                            }
                            return null;
                          },
                        ),
                        Positioned(
                            right: 8,
                            bottom: 8,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.auto_awesome),
                              color: Colors.blue,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Generate Post with ai',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
                /* SizedBox(
                  height: 8.0,
                ),*/
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Type',
                      filled: true,
                      fillColor: Color.fromARGB(255, 231, 228, 228),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  onChanged: (value) {
                    setState(() {
                      type = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a Type';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Location',
                      filled: true,
                      fillColor: Color.fromARGB(255, 231, 228, 228),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  onChanged: (value) {
                    setState(() {
                      location = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                //SizedBox(height: 20),
                Center(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Resolved',
                        style: TextStyle(fontSize: 16),
                      ),
                      Checkbox(
                        checkColor: Colors.blue,
                        value: resolved,
                        onChanged: (value) {
                          setState(() {
                            resolved = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 400,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.blue,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
