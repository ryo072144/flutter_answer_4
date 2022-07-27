import 'package:flutter/material.dart';
import 'package:flutter_exercise_4/constants.dart';

//問１： FullImageを作成。
class FullImage extends StatefulWidget {
  const FullImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;  

  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {

  bool _isTapped =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Full Image', style: titleStyle,), centerTitle: true, ),
      body: Align(
        alignment: Alignment.topCenter,

        //問４： GestureDetectorはタップやスライドなどの操作を検知します。
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isTapped = !_isTapped;
            });
          },
            //問２: 画像の横幅をスクリーンの横幅と一致させれば良い。
            child: Image.network(widget.imageUrl, width: _isTapped?150:MediaQuery.of(context).size.width,)
        ),
      ),
    );
  }
}
