
import 'package:flutter/material.dart';
import 'package:management_ui/models/model.dart';

class Body2 extends StatelessWidget {
  const Body2({ Key? key, }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(left: 15), child: Text('Tasks'),),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 9.0,
              children: List.generate(task.length, (index) {
                return Center(
                  child: GridCard(task: task[index]),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({ Key? key, this.task}) : super(key: key);

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
          Icon(task!.icon,),
          Text(task!.title),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(task!.left),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(task!.done),
              ),
            ],
          )

        ],
      ),
    );
  }
}
