import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpCustomWidget extends StatelessWidget {
  const OtpCustomWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,//<---- Insert Gradient Here
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white
            ),
            child: TextFormField(
              onChanged: (value){
                if(value.length==1){
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin1) {},
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
