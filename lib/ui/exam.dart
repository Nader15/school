import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Exam"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                // width: MediaQuery.of(context).size.width / 1.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Exam Name :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Subject :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Class(Sec.) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Total Marks :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nader2"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("English For Today"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("One1(A1)"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("30"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Instructions : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: Text(
                          "text instructions text instructions text instructions.",
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      "Questions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Text("1. test questions1"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        cursorColor: Colors.purple,
                        decoration: InputDecoration(
                            enabledBorder: customBorder,
                            focusedBorder: customBorder,
                            hintText: "fill your answer"),
                      ),
                    ),
                    Center(
                      child: RaisedButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        elevation: 10,
                        color: Colors.purple,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Fill",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 50,color: Colors.grey,),
                    Text("2. test questions2"),
                    SizedBox(height: 30,),
                    Container(
                      width: MediaQuery.of(context).size.width / 6,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              custom_checkBox(),
                              Text("a"),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              custom_checkBox(),
                              Text("b"),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              custom_checkBox(),
                              Text("c"),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              custom_checkBox(),
                              Text("d"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 50,color: Colors.grey,),
                    Text("3. test questions3"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            custom_checkBox2(),
                            SizedBox(width: 10,),
                            Text("true"),
                          ],
                        ),
                        Row(
                          children: [
                            custom_checkBox2(),
                            SizedBox(width: 10,),
                            Text("false"),
                            SizedBox(height: 30,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: RaisedButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 10,
                  color: Colors.purple,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Submit Exam",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isSelected = false;

  GestureDetector custom_checkBox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: _isSelected ? Colors.purple : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: _isSelected
                ? null
                : Border.all(color: Colors.grey, width: 1.0)),
        width: 20,
        height: 20,
        child:
        _isSelected ? Icon(Icons.check, size: 15, color: Colors.white) : null,
      ),
    );
  }
  GestureDetector custom_checkBox2() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: _isSelected ? Colors.purple : Colors.transparent,
            shape: BoxShape.circle,
            border: _isSelected
                ? null
                : Border.all(color: Colors.grey, width: 1.0)),
        width: 20,
        height: 20,
        child:
        _isSelected ? Icon(Icons.check, size: 15, color: Colors.white) : null,
      ),
    );
  }

  InputBorder customBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.purple));
}
