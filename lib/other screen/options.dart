import 'package:flutter/material.dart';

Future createPlayListAlert({required ctx}) async {
  return showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Color.fromARGB(221, 0, 0, 0),
          title: Column(
            children: [
              Text(
                'New PlayList',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Enter the name of the PlayList',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.5,
                color: Colors.white,
              )
            ],
          ),
          content: TextField(
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 16),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: 'New PLayList',
                filled: true,
                fillColor: Color.fromARGB(217, 217, 217, 217),
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(153, 0, 0, 0),
                    fontSize: 16)),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'cancel',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                            fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'create',
                        style: TextStyle(color: Colors.green, fontSize: 18),
                      ))
                ],
              ),
            )
          ],
        );
      });
}
