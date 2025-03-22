import 'package:flutter/material.dart';
import '../api_service.dart';

class AdvertiseWithUsPage extends StatefulWidget {
  const AdvertiseWithUsPage({super.key});

  @override
  State<AdvertiseWithUsPage> createState() => _AdvertiseWithUsPageState();
}

class _AdvertiseWithUsPageState extends State<AdvertiseWithUsPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController advertisementTypeController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  final ApiService apiService = ApiService();

  Future<void> submitForm() async {
    if (_formKey.currentState!.validate()) {
      final response = await apiService.submitAdvertiseForm(
        nameController.text,
        emailController.text,
        messageController.text, // ✅ Only passing required arguments
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response["error"] ?? "Submission Successful"),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advertise With Us')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // ✅ Introduction Paragraph
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

                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) => value!.isEmpty ? 'Enter your name' : null,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) => value!.contains('@') ? null : 'Enter a valid email',
                ),
                TextFormField(
                  controller: companyController,
                  decoration: const InputDecoration(labelText: 'Company Name'),
                  validator: (value) => value!.isEmpty ? 'Enter company name' : null,
                ),
                TextFormField(
                  controller: categoryController,
                  decoration: const InputDecoration(labelText: 'Category'),
                  validator: (value) => value!.isEmpty ? 'Enter category' : null,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) => value!.isEmpty ? 'Enter phone number' : null,
                ),
                TextFormField(
                  controller: websiteController,
                  decoration: const InputDecoration(labelText: 'Website URL'),
                  validator: (value) => value!.isEmpty ? 'Enter website URL' : null,
                ),
                TextFormField(
                  controller: advertisementTypeController,
                  decoration: const InputDecoration(labelText: 'Type of Advertisement'),
                  validator: (value) => value!.isEmpty ? 'Enter ad type' : null,
                ),

                const SizedBox(height: 20),

                // ✅ Message Section
                const Text(
                  "Your Message",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(labelText: 'Message'),
                  maxLines: 4,
                  validator: (value) => value!.isEmpty ? 'Enter your message' : null,
                ),

                const SizedBox(height: 20),

                Center(
                  child: ElevatedButton(
                    onPressed: submitForm,
                    child: const Text('Submit'),
                  ),
                ),

                const SizedBox(height: 20),

                // ✅ Our Response Section (Light Blue)
                const Text(
                  "Our Response:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(height: 5),

                const Text(
                  "After receiving your email, our team will contact you within 24 hours. We will discuss the advertising options based on your requirements.",
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
