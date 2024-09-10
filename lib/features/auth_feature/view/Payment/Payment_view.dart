import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/Payment/recipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

@RoutePage()
class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  static const path = '/PaymentView';

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  int selectedPaymentMethodIndex = 0;

  void userWantsToPay(BuildContext context) {
    // تأكد أن formKey.currentState ليست null
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Confirm Payment'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Card Number: $cardNumber'),
                  Text('Expiry Date: $expiryDate'),
                  Text('Card Holder Name: $cardHolderName'),
                  Text('CVV: $cvvCode'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  // Your action here
                },
                child: const Text('Ok'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          'طرق الدفع',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Row لعرض طرق الدفع
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                paymentMethodButton('فيزا', 0),
                paymentMethodButton('ماستر كارد', 1),
                paymentMethodButton('باي بال', 2),
              ],
            ),
            const SizedBox(height: 20),

            // عرض المحتوى بناءً على طريقة الدفع المختارة
            if (selectedPaymentMethodIndex == 0) ...[
              // محتوى فيزا
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {},
              ),
              paymentForm(),
            ] else if (selectedPaymentMethodIndex == 1) ...[
              // محتوى ماستر كارد
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {},
              ),
              // paymentForm(),
            ] else if (selectedPaymentMethodIndex == 2) ...[
              paypalForm(),
            ],
          ],
        ),
      ),
    );
  }

  Widget paymentMethodButton(String method, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPaymentMethodIndex = index;
        });
      },
      child: Text(
        method,
        style: TextStyle(
          color: selectedPaymentMethodIndex == index
              ? Colors.orange
              : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // نموذج الدفع باستخدام البطاقة
  Widget paymentForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              // : ' البطاقة',
              hintText: 'اسم حامل البطاقة',

              onChanged: (value) {
                setState(() {
                  cardNumber = value;
                });
              },
            ),
            const SizedBox(height: 16),
            CustomTextField(
              // : ' البطاقة',
              hintText: 'رقم  البطاقة',
              inputType: TextInputType.number,

              onChanged: (value) {
                setState(() {
                  cardNumber = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: CustomTextField(
                  // : 'MM/YY',
                  hintText: 'MM/YY',
                  inputType: TextInputType.number,

                  onChanged: (value) {
                    setState(() {
                      expiryDate = value;
                    });
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: CustomTextField(
                    inputType: TextInputType.number,
                    // : 'CVV',
                    hintText: 'CVV',
                    onChanged: (value) {
                      setState(() {
                        cvvCode = value;
                      });
                    }),
              ),
              SizedBox(width: 16),
              CustomButton(
                  width: 100,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyReceipt(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: const Text(
                      '+ اضافة',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ]),
          ],
        ),
      ),
    );
  }

  // نموذج الدفع باستخدام باي بال
  Widget paypalForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'PayPal Email',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              // يتم إدخال البريد الإلكتروني لـ PayPal هنا
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => userWantsToPay(context),
            child: const Text('Pay with PayPal'),
          ),
        ],
      ),
    );
  }
}
