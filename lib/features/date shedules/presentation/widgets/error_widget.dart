import 'package:coinedone/core/utils/colors.dart';
import 'package:flutter/material.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      height: 209,
      width: 311,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This overlaps with\nanother schedule and \ncan’t be saved',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: errorTextColor),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Please modify and try again!',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: mainColor),
          ),
          Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 56,
            width: 279,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Okay',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
