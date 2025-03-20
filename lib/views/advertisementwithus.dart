import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:indiasarkarinaukri/views/UIHelper.dart';

class AdvertiseWithUsPage extends StatefulWidget {
  const AdvertiseWithUsPage({super.key});

  @override
  State<AdvertiseWithUsPage> createState() => _AdvertiseWithUsPageState();
}

class _AdvertiseWithUsPageState extends State<AdvertiseWithUsPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController advertisementTypeController = TextEditingController();
  final TextEditingController messageController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: const Text('Advertise With Us')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
         Column(

            children: [
              Row(children: [
                UIHelper.textview("Advertise with Us", FontWeight.normal, 18, GoogleFonts.montserrat(), Color(0xFF20B7E5)),

              ],),
              const Text(
                "Hello dear friends, I hope you are doing well. Our website, IndiaSarkariNaukri.com, is the No.1 platform providing information about government jobs in India, along with education news, career guidance, and job-related information. Our platform reaches millions of job seekers. By partnering with us, you can reach a vast and targeted audience for your products or services, making it a highly beneficial opportunity for you.\n",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),

              // ✅ Benefits Section (Bold & Blue)
              const Text(
                "Benefits of advertising with us:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),

              // ✅ Subheading - Expertise and Credibility (Light Blue)
              const Text(
                "✔ Expertise and Credibility:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
              ),
              const Text(
                "Our website specializes in providing government job information, establishing strong credibility among our audience.\n",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),

              // ✅ Subheading - High Targeted Traffic (Light Blue)
              const Text(
                "✔ High Targeted Traffic:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
              ),
              const Text(
                "We have millions of active users who visit regularly for government job updates.\n",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),

              // ✅ Subheading - Improved SEO (Light Blue)
              const Text(
                "✔ Improved SEO:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
              ),
              const Text(
                "Backlinks from our website can enhance your site's SEO ranking, increase Domain Authority (DA), Page Authority (PA), and drive more traffic.\n",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),

              // ✅ Contact Section
              const Text(
                "How to Contact Us:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const Text(
                "To get in touch, please send an email to **indiasarkarinaukril@gmail.com** or (Other email here). Kindly include the following information in your email.\n",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),

              const SizedBox(height: 20),

              // ✅ User Details Section
              const Text(
                "Your Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              UIHelper.editText(nameController, 'Enter your name',null),
              UIHelper.editText(companyController, 'Enter a Company Controller',null),
              UIHelper.editText(categoryController, 'Enter a Category',null),
              UIHelper.editText(phoneController, 'Enter a valid Phone No',null),
              UIHelper.editText(websiteController, 'Enter a Website Url',null),
              UIHelper.textview("Type of Advertisement", FontWeight.normal, 18, GoogleFonts.poppins(), Colors.black),
              UIHelper.editText(messageController, 'Enter your message',null),


              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(labelText: 'Message'),
                maxLines: 4,
                validator: (value) =>
                value!.isEmpty ? 'Enter your message' : null,
              ),
              const SizedBox(height: 20),

            ],
          ),
      )
    );
  }
}
