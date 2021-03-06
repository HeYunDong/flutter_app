import 'package:flutter/material.dart';

//BasicDemo

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bear.jpg'),
          alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          //colorFilter: ColorFilter.mode(color, blendMode)
        ),
      ),
      //color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            //color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(color: Colors.indigoAccent[100], width: 3.0),
                //borderRadius: BorderRadius.circular(16.0),
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(64.0))
                //borderRadius: BorderRadius.all(Radius.circular(45.0)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(6.0, 7.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 25.0,
                      spreadRadius: -9.0),
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors:[
                      Colors.indigo,
                      Colors.red,
                    ])
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》——$_author \n' +
          '君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 16.0),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'jieyu',
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [TextSpan(text: '.net')]),
    );
  }
}
