import 'package:flutter/material.dart';
import 'package:todo/shared/styles/colors.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: WhiteColor,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(16) ,topRight:Radius.circular(16) ),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add new task',style: Theme.of(context).textTheme.headline2?.copyWith(color: blackcolor,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          Form(child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'title'
                ),
              ),
              TextFormField(
                maxLines: 4,
                minLines: 4,
                decoration: InputDecoration(
                    labelText: 'description'
                ),
              ),
            ],
          )),
          SizedBox(
            height: 12,
          ),
          Text('Select Time',style: Theme.of(context).textTheme.headline3,),
          SizedBox(
            height: 8,
          ),
          Text('12/10/2022',style: Theme.of(context).textTheme.headline3,textAlign: TextAlign.center,),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: (){}, child: Text('Add task')),

        ],
      ),
    );
  }
}
