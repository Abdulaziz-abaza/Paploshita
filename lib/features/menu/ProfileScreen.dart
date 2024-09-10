import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/menu/componant.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('الملف الشخصي'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              // Action for back button
            },
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                ProfileFieldTile(
                  fieldLabel: 'الاسم',
                  fieldValue: 'هاله احمد',
                  onEditPressed: () {},
                ),
                ProfileFieldTile(
                  fieldLabel: 'اللقب',
                  fieldValue: ' احمدي',
                  onEditPressed: () {},
                ),
                ProfileFieldTile(
                  fieldLabel: 'الايميل',
                  fieldValue: "ahmed@gmail.com",
                  // onEditPressed: () {},
                ),
                ProfileFieldTile(
                  fieldLabel: 'كلمة المرور',
                  fieldValue: ' **********',
                  onEditPressed: () {},
                ),
                Divider(),
                ProfileFieldTile(
                  fieldLabel: ' العنوان',
                  // fieldValue: 'هاله احمد',
                  onEditPressed: () {},
                ),
                TextApp(text: 'المعلومات الشخصية'),
                Divider(),
                CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '55',
                    trailingText: 'طلباتي'),
                CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '4',
                    trailingText: 'المفضلة'),
                CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {},
                    onTitleTap: () {},
                    titleText: '3',
                    trailingText: 'متاجر اتابعها'),
                CustomListTile(
                    leadingText: '',
                    onLeadingTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => InquiriesScreen(),
                        ),
                      );
                    },
                    onTitleTap: () {},
                    titleText: '2',
                    trailingText: 'استفساراتي'),
                CustomButton(onPressed: () {}, child: Text('jnkjnb'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InquiriesScreen extends StatelessWidget {
  final List<Inquiry> inquiries = [
    Inquiry(
      TextImage: AppImages.images.core.svg.phoneRate.image(),

      userImage: AppImages.images.core.svg.phoneRate.image(), // Use AppImages
      date: "22-4-2020",
      username: "Benja ly robots",
      userType: "باور بانك بقوة 50 ألف امبير",
      question: "ماهي فترة الضمان للمنتج",
      isReplied: true,
    ),
    Inquiry(
      TextImage: AppImages.images.core.svg.phoneRate.image(),
      userImage: AppImages.images.core.svg.phoneRate.image(), // Use AppImages
      date: "22-4-2020",
      username: "Benja ly robots",
      userType: "باور بانك بقوة 50 ألف امبير",
      question: "ماهي فترة الضمان للمنتج",
      isReplied: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('استفساراتي'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              // Action for back button
            },
          ),
        ),
        body: ListView.builder(
          itemCount: inquiries.length,
          itemBuilder: (context, index) {
            return InquiryCard(inquiry: inquiries[index]);
          },
        ),
      ),
    );
  }
}

class InquiryCard extends StatelessWidget {
  final Inquiry inquiry;

  InquiryCard({required this.inquiry});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(inquiry: inquiry),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date and User Info
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(inquiry.date, style: TextStyle(color: Colors.grey)),
                  Row(
                    children: [
                      Text(inquiry.username,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      CircleAvatar(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: inquiry.userImage,
                        ),
                        radius: 12.0,
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.0),

              // Question and UserType
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(inquiry.userType, style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 5),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: AppImages.images.core.svg.lapTop.image(
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(inquiry.question,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 8.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "أرغب بشراء المنتج وعندي سؤال عن ضمان المنتج وبلد الصنع",
                ),
              ),

              SizedBox(height: 8.0),
              Divider(),

              // Response Status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "معاينة",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      inquiry.isReplied
                          ? Icon(Icons.check, color: Colors.green)
                          : Icon(Icons.close, color: Colors.red),
                      SizedBox(width: 8.0),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          inquiry.isReplied ? "تم الرد" : "لم يتم الرد",
                          style: TextStyle(
                            color: inquiry.isReplied ? Colors.red : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Inquiry {
  final Image userImage;
  final Image TextImage;

  final String date;
  final String username;
  final String userType;
  final String question;
  final bool isReplied;

  Inquiry({
    required this.TextImage,
    required this.userImage,
    required this.date,
    required this.username,
    required this.userType,
    required this.question,
    required this.isReplied,
  });
}

// class ChatScreen extends StatefulWidget {
//   final Inquiry inquiry;

//   ChatScreen({required this.inquiry});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   List<String> messages = []; // List to store messages

//   void _sendMessage() {
//     String message = _controller.text;
//     if (message.isNotEmpty) {
//       setState(() {
//         messages.add(message); // Add message to the list
//       });
//       _controller.clear(); // Clear the text field
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text('Chat'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Column(
//         children: [
//           // Display the first inquiry message
//           Card(
//             margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Date and User Info
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(widget.inquiry.date,
//                           style: TextStyle(color: Colors.grey)),
//                       Row(
//                         children: [
//                           Text(widget.inquiry.username,
//                               style: TextStyle(fontWeight: FontWeight.bold)),
//                           SizedBox(width: 5),
//                           CircleAvatar(
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(20.0),
//                               child: widget.inquiry.userImage,
//                             ),
//                             radius: 12.0,
//                             backgroundColor: Colors.transparent,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 8.0),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(widget.inquiry.question,
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold)),
//                   ),
//                   SizedBox(height: 8.0),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Text(
//                       "أرغب بشراء المنتج وعندي سؤال عن ضمان المنتج وبلد الصنع",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Expanded to display sent messages
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Container(
//                       padding: EdgeInsets.all(10.0),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Text(
//                         messages[index],
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Text field and send button
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'اكتب رسالة...',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: _sendMessage, // Call the _sendMessage function
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ChatScreen extends StatefulWidget {
  final Inquiry inquiry;

  ChatScreen({required this.inquiry});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  void _sendMessage() {
    String message = _controller.text;
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message); // Add message to the list
      });
      _controller.clear(); // Clear the text field
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // This allows the chat to move when keyboard appears
      appBar: AppBar(
        title: Text('استفساراتى'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Display the first inquiry message
          Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.inquiry.date,
                          style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Text(widget.inquiry.username,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          CircleAvatar(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: widget.inquiry.userImage,
                            ),
                            radius: 12.0,
                            backgroundColor: Colors.transparent,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(widget.inquiry.question,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 8.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "أرغب بشراء المنتج وعندي سؤال عن ضمان المنتج وبلد الصنع",
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded to display sent messages
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 60,
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          messages[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Text field and send button
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 90.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: _sendMessage,
                    child: Text(
                      'ارسال',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 1,
                      textAlign: TextAlign.right,
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'اكتب رسالة...',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
