part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String paymentUrl;

  PaymentMethodPage(this.paymentUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Finish your payment",
        subtitle: "Please select yout favorite\npayment method",
        picturePath: "assets/Payment.png",
        buttonTitle1: 'Payment Method',
        buttonTitle2: 'Continue',
        buttonTap1: () async {
          await launch(paymentUrl);
        },
        buttonTap2: () {
          Get.to(SuccessOrderPage());
        },
      ),
    );
  }
}
