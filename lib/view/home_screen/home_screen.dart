

import 'package:flutter/material.dart';
import 'package:quiz_app1/view/dummy_db.dart';
import 'package:quiz_app1/view/home_screen/global_widget/contaimer_screen.dart';
import 'package:quiz_app1/view/question_screen/question_screen.dart';
// import 'package:quiz_app_task/dummy_db.dart';
// import 'package:quiz_app_task/view/global%20widgets/container_screen.dart';
// import 'package:quiz_app_task/view/question_screen/question_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 40, 72),
       appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 1, 40, 72),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: CircleAvatar(
              radius: 30,
              backgroundImage:NetworkImage("data:image/jpeg;base64,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") ,
            ),
          ),
          SizedBox(
            width: 5,
          ),
      
      
        
        ]
       ),
        
      
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's Play",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.9),
                      itemCount: Dummydb.items.length,
                      itemBuilder: (context, index) => ContainerScreen(
                        
                        containerTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionScreen(
                                  itemname: Dummydb.items[index]["items"],
                                ),
                              ));
                        },
                        image: Dummydb.items[index]["images"],
                        items: Dummydb.items[index]["items"],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}