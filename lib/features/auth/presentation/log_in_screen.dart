
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:country_picker/country_picker.dart';
import 'package:whats_up/common/widgets/custom_button_widgets.dart';

import '../../../common/utils/colors.dart';
class LogInScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final phoneController = TextEditingController();
  Country? country;


  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('WhatsApp will need to verify your phone number.'),
              Gap(10),
              TextButton(
                onPressed: pickCountry,
                child: const Text('Pick Country'),
              ),
              Gap(5),
              Row(
                children: [
                  if (country != null) Text('+${country!.phoneCode}'),
                  const Gap(10),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        hintText: 'phone number',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.6),
              SizedBox(
                width: 90,
                child: CustomButtonWidget(
                  onPressed: (){},
                  text: 'NEXT',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


