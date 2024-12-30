import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map> tasks = [
      {
        "title": "Bible Study",
      },
      {
        "title": "Physical Win",
      }, 
      {
        "title": "Creational Win",
      },
    ];

    double page = tasks.length / 3; // 2
    double count = tasks.length / 2; // 3

    int counter = 0;
    int endAt = tasks.length;

    return page > 2? PageView(

      children: [

        for (var i = 0; i < page.floor(); i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                Flexible(
                  flex: 1, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 0; counter < endAt && i < 3 ;counter++, i++) 
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade800)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(tasks[counter]["title"], textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1, 
                  child: Row(
                    children: [
                      for (var i = 0; counter < endAt && i < 3 ;counter++, i++)  
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade800)
                            ),
                            alignment: Alignment.center,
                            margin: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(tasks[counter]["title"], textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),              
                      ],
                  ),
                ),
            ]
          ),
      ],
    ) : 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

          Flexible( flex: 1, child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var i = 0; i < count.floor(); i++) 
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade800)
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(tasks[i]["title"], style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),

          Flexible( flex: 1, child: 
            Row(
              children: [
                for (var i = count.floor(); i < tasks.length; i++)  
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade800)
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(tasks[i]["title"], textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),              
                ],
            ),
          ),
      ],
    );
  }
}
