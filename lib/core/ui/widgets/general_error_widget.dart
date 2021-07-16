import 'package:flutter/material.dart';
import 'package:weather_app_task/core/errors/base_error.dart';
import 'package:weather_app_task/core/errors/error_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GeneralErrorWidget extends StatefulWidget {
  final VoidCallback? callback;
  final BaseError error;
  final String? message;

  const GeneralErrorWidget({
    Key? key,
    this.callback,
    this.message,
   required this.error,

  }):super(key: key);

  @override
  _GeneralErrorWidgetState createState() => _GeneralErrorWidgetState();
}

class _GeneralErrorWidgetState extends State<GeneralErrorWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
            child: Text(
              this.widget.message??ErrorHelper.getErrorMessage(widget.error),
            ),
          ),
          TextButton(
            child: Text('retry'),
            onPressed:widget.callback,
          ),
        ],
      ),
    );
  }
}
