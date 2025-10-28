import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

///Header of the [AwesomeDialog]
class AwesomeDialogHeader extends StatelessWidget {
  ///Constructor of the [AwesomeDialogHeader]
  const AwesomeDialogHeader({
    required this.dialogType,
    required this.loop,
    Key? key,
  }) : super(key: key);

  ///Defines the type of [AwesomeDialogHeader]
  final DialogType dialogType;

  ///Defines if the animation loops or not
  final bool loop;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.info:
        return Expanded(child: Icon(Icons.info, color: Colors.green));
        /*return RiveAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/rive/info.riv',
          animName: loop ? 'appear_loop' : 'appear',
        );*/
      case DialogType.infoReverse:
        return Expanded(child: Icon(Icons.info, color: Colors.lightGreen));
        // return RiveAssetAnimation(
        //   assetPath: 'packages/awesome_dialog/assets/rive/info_reverse.riv',
        //   animName: loop ? 'appear_loop' : 'appear',
        // );

      case DialogType.question:
        return Expanded(child: Icon(Icons.question_mark, color: Colors.blue,));
        // return RiveAssetAnimation(
        //   assetPath: 'packages/awesome_dialog/assets/rive/question.riv',
        //   animName: loop ? 'appear_loop' : 'appear',
        // );
      case DialogType.warning:
        return Expanded(child: Icon(Icons.warning, color: Colors.yellow,));
        // return RiveAssetAnimation(
        //   assetPath: 'packages/awesome_dialog/assets/rive/warning.riv',
        //   animName: loop ? 'appear_loop' : 'appear',
        // );
      case DialogType.error:
        return Expanded(child: Icon(Icons.error, color: Colors.red,));
        // return RiveAssetAnimation(
        //   assetPath: 'packages/awesome_dialog/assets/rive/error.riv',
        //   animName: loop ? 'appear_loop' : 'appear',
        // );
      case DialogType.success:
        return Expanded(child: Icon(Icons.check_box, color: Colors.green,));
        // return RiveAssetAnimation(
        //   assetPath: 'packages/awesome_dialog/assets/rive/success.riv',
        //   animName: loop ? 'appear_loop' : 'appear',
        // );
      case DialogType.noHeader:
        return const SizedBox.shrink();
    }
  }
}
