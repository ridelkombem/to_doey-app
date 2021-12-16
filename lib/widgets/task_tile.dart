import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String taskTitle;
 final void Function(bool?) checkBoxCallback;
 final Function removeTask;

 const TaskTile({Key? key, required this.isChecked,required this.taskTitle,required this.checkBoxCallback,required this.removeTask}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => removeTask(),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlue,
        onChanged: checkBoxCallback,
      )
    );

  }
}

//(bool? checkBoxState) {
// setState(() {
//   isChecked = checkBoxState ?? true;
// });


//we create the stateful widget from the state
// in a stateful widget it is really the state object that is changing,
// also the properties cannot be final since they change the object state
//a stateless widget needs to be destroyed if change is required
//the TaskTileState is the object that changes
// this means that isCChecked = checkBoxState but if checkBoxState=null then isChecked=true

// the newValue which is the checkBoxState will be used to update the isChecked property to either false or true which can change as a stateful widget

//the variables can change their value,which is not marked final and used to update UI in the build method


// class TaskCheckbox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function(bool?) toggleCheckboxState;
//
//   //for the stateless widgets all the properties need to be marked as final,they can't change
//   TaskCheckbox(
//       {required this.checkBoxState, required this.toggleCheckboxState});
//
//   // inorder for the final to be destroyed then we initiate this constructor by a brand new version of TaskCheckbox
//   @override
//   Widget build(BuildContext context) {
//     return


