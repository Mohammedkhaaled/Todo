import 'package:flutter/material.dart';
import 'package:todo/shared/styles/colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Container(
      height:size.height*0.1 ,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: WhiteColor,
        borderRadius: BorderRadius.circular(12),
        
      ),
      child: Row(
        children: [
          SizedBox(
            width: 8,
          ),
          Container(
            height: 50,
            width: 4,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Task Title',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Task body',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(fontSize: 12),
              )
            ],
          )),
          Container(
              decoration: BoxDecoration(
                color: PrimaryColor,
                borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.symmetric(horizontal:24 ,vertical: 8 ),
              child: Icon(Icons.check,color: WhiteColor,size: 30,)),
        ],
      ),
    );
  }
}
