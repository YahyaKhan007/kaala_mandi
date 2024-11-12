import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/view_models/otp_vm/otp_vm.dart';
import 'package:kaala_mandi/views/otp/widgets/pinput.dart';

import '../../res/app_colors.dart';
import 'widgets/appbar.dart';

class OTPView extends StatefulWidget {
  final String number;
  const OTPView({super.key, required this.number});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  late OTpViewModel viewModel;
  @override
  void initState() {
    // TODO: implement initState
    viewModel = Get.put(OTpViewModel());
    super.initState();
  }

  final focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  final fillColor = Color.fromRGBO(243, 246, 249, 0);
  final borderColor = Color.fromRGBO(23, 171, 144, 0.4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      appBar: PreferredSize(
        child: OtpAppBar(),
        preferredSize: Size.fromHeight(
          60,
        ),
      ),
      body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            Text(
                              "Enter the OTP code",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.02,
                            ),
                            Image.asset('assets/icons/eyes.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.02,
                      ),

                      // showing entered phone number
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Check ",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "+92 ${widget.number}",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.1,
                      ),

                      Center(
                          child: PinputExample(
                        viewModel: viewModel,
                      ))

                      // OtpPinField(
                      //   otpPinFieldDecoration:
                      //       OtpPinFieldDecoration.roundedPinBoxDecoration,
                      //   onSubmit: (value) {
                      //     viewModel.onSubmittedField(int.parse(value));
                      //   },
                      //   onChange: (value) {},
                      //   autoFillEnable: true,
                      //   autoFocus: true,
                      //   highlightBorder: true,
                      //   otpPinFieldStyle: OtpPinFieldStyle(
                      //     activeFieldBorderColor: Colors.black,
                      //     activeFieldBorderGradient: LinearGradient(
                      //         colors: [Colors.black, Colors.redAccent]),
                      //     filledFieldBorderGradient: LinearGradient(
                      //         colors: [Colors.green, Colors.tealAccent]),
                      //     defaultFieldBorderGradient: LinearGradient(
                      //         colors: [Colors.orange, Colors.brown]),
                      //   ),
                      // )
                    ],
                  ),
                ),
              )),
    );
  }
}
