import 'package:cart_page/controllers/cart_controller.dart';
import 'package:cart_page/landing_page/home.dart';
import 'package:cart_page/login/services/networking.dart';
import 'package:cart_page/widgets/cart_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upi_payment_qrcode_generator/upi_payment_qrcode_generator.dart';

class GetPass extends StatelessWidget {
  final CartController controller = Get.find(); // Use Get.find instead of Get.put
  late int totalAmount = 250;
  final TextEditingController _transactionIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //controller.EventIndex.addAll([101,102,103,104,105,106,107,108,109,110,111,112]); 
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/common.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.22),
                            child: Text(
                              "PAYMENTS",
                              style: TextStyle(
                                fontFamily: "berky",
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "ALMOST READY TO GO!!!",
                        style: TextStyle(
                          fontFamily: "berky",
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  Text(
                    "Amount to be paid: ₹250",
                    style: TextStyle(
                      fontFamily: "berky",
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ), // Remove the extra semicolon here
                  SizedBox(height: 10),
                  UPIPaymentQRCode(
                    upiDetails: UPIDetails(
                      upiID: "scrtspuneinstofcompu.62804004@hdfcbank",
                      payeeName: "PICT_IEEE_PISB",
                      amount: totalAmount.toDouble(),
                      transactionNote: "IEEE",
                    ),
                    eyeStyle: QrEyeStyle(color: Colors.white, eyeShape: QrEyeShape.square),
                    size: 180,
                    upiQRErrorCorrectLevel: UPIQRErrorCorrectLevel.high,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Scan QR to Pay",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          return null;
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white, // Text color
                          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.blueAccent, width: 3),
                          ),
                        ),
                        child: Text(
                          'If Successful',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "berky",
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _transactionIdController,
                              cursorColor: Colors.red,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(color: Colors.amber, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  borderSide: BorderSide(color: Colors.green, width: 2),
                                ),
                                hintText: 'Enter the transaction ID',
                                hintStyle: TextStyle(color: Colors.grey, fontFamily: "berky", fontSize: 20),
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () async {
                                if (_transactionIdController.text.length != 12) {
                                  // Show error snackbar
                                  Get.snackbar(
                                    'Error',
                                    'Transaction ID should be 12 digits long',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                  );
                                } else {
                                  // Proceed with submitting transaction ID
                                  print('Submitted Transaction ID: $_transactionIdController.text');
                                  print(controller.EventIndex);
                                  print(totalAmount);
                                  database db = database();
                                  bool check = await db.placeOrders(
                                    eventList: [101,102,103,104,105,106,107,108,109,110,111,112],
                                    transactionId: int.parse(_transactionIdController.text),
                                    amount: totalAmount,
                                  );

                                  if (check) {
                                    Get.snackbar(
                                      'Hurrah!!',
                                      'Order Placed Successfully',
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: Colors.green,
                                      colorText: Colors.white,
                                    );
                                    controller.events.clear();
                                    controller.techEvents.clear();
                                    controller.nonTechEvents.clear();
                                    controller.EventIndex.clear();
                                    totalAmount = 0;
                                    Get.offAll(() => HomePage());
                                  } else {
                                    Get.snackbar(
                                      'Unsuccessful',
                                      'Some Error Occurred',
                                      snackPosition: SnackPosition.BOTTOM,
                                      backgroundColor: Colors.red,
                                      colorText: Colors.white,
                                    );
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.blueAccent, width: 3),
                                ),
                              ),
                              child: Text(
                                'SUBMIT',
                                style: TextStyle(fontSize: 17, fontFamily: "berky"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}