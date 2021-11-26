import 'package:flutter/material.dart';
import 'package:management_ui/constants/colors.dart';
import 'package:management_ui/models/model.dart';

class Body2 extends StatelessWidget {
  //const Body2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, bottom: 5),
            child: Text('Tasks', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: task[0].theme),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(task[0].icon, color: kYellowDark, size: 27,),
                      SizedBox(height: 40,),
                      Text(task[0].title, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 16),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[0].left, style: TextStyle(color: task[0].theme, fontWeight: FontWeight.w600),),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[0].done, style: TextStyle(color: kYellowDark, fontWeight: FontWeight.w600),),
                          )
                        ],
                      )

                    ],
                  ),
              ),
              SizedBox(width: 20,),
              Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: task[1].theme),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(task[1].icon, color: kRedDark, size: 27,),
                      SizedBox(height: 40,),
                      Text(task[1].title, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 16),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: kRedDark,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[1].left, style: TextStyle(color: task[1].theme, fontWeight: FontWeight.w600),),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[1].done, style: TextStyle(color: kRed, fontWeight: FontWeight.w600),),
                          )
                        ],
                      )

                    ],
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({Key? key, this.task}) : super(key: key);

  final Task? task;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15),
      elevation: 1,
      color: task!.theme,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            task!.icon,
          ),
          Text(task!.title),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Text(task!.left),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Text(task!.done),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget containerCards (Color iconColor, Color textColor, int index, ){
  return 
              Container(
                margin: EdgeInsets.only(left: 15),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: task[0].theme),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(task[0].icon, color: kYellowDark, size: 27,),
                      SizedBox(height: 40,),
                      Text(task[0].title, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 16),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: kYellowDark,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[0].left, style: TextStyle(color: task[0].theme, fontWeight: FontWeight.w600),),
                          ),
                          SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            alignment: Alignment.center,
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text(task[0].done, style: TextStyle(color: kYellowDark, fontWeight: FontWeight.w600),),
                          )
                        ],
                      )

                    
                    ],),
              );
}