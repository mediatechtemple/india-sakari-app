import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF0D47A1), // Dark Blue color
        elevation: 4.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Objective and Scope Section
              Text(
                'Objective and Scope',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
                   Text(
                    'India Sarkari Naukri (“we”, “us”, “our”, “India Sarkari Naukri”) values the trust placed in us by data subject (“you”, “your”, “user”, “subscriber”) and therefore, we follow the highest standards of privacy guidelines to protect the information shared by you with us.\n\n'
                        'This privacy policy describes the usage of information provided or collected by India Sarkari Naukri and/or its subsidiary (ies) and/or affiliate(s) (collectively referred to as the “Company“), which operates various Websites/Mobile applications & other services including but not limited to delivery of information and content via any mobile or internet connected device or otherwise (collectively the “Services“). We follow this privacy policy in accordance with applicable law in the places where we operate. In some cases, we may provide additional data privacy notices specific to certain services or regions. Those terms are to be read in combination with this policy.\n\n'
                        'Indiasarkarinaukri.com here in is a property of MediaTechTemple, an Indian Company registered under proprietorship having its corporate office at 57, Swaran Jayanti Nagar, Bharatpur, Rajasthan – 321001. With a view to offer most enriching and holistic internet experience to its users India Sarkari Naukri offers a vast repository of Online Sites and variety of community services.\n\n'
                        'This Privacy Policy should be read in conjunction and together with the Terms of Use applicable to the India Sarkari Naukri Service that you are using.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87,
                    ),
                  ),

              SizedBox(height: 20),

              // What does this privacy policy cover? Heading and content
              Text(
                'What does this privacy policy cover?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'The objective of the privacy policy is to inform you regarding the processing of your personal information which is collected during your visit to our website/application. This policy applies to current and former visitors of the website/application, users who register on India Sarkari Naukri in connection with use of our services, or whose information India Sarkari Naukri otherwise receives in connection with its services (such as but not limited to contact information of individuals associated with India Sarkari Naukri including partner colleges/ institutes).',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Collection and Use of Personal Information Heading and content
              Text(
                'Collection and Use of Personal Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Personal information (PI) – means any information relating to an identified or identifiable living person (‘data subject’ here in referred as you/your’). In particular using a common identifier such as a name, an identification number, location data, an online identifier or one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person or any other piece of information as per applicable laws and regulations.\n\n'
                    'The Company respects the privacy of the users of the Services and is committed to reasonably protect it in all respects. The information about the user as collected by the Company is:',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Collection and Use of Personal Information Heading and content
              Text(
                'Information you provide to us voluntarily',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We may collect additional information at other times, when you provide feedback(s), modify your content or email preferences, respond to surveys, or communicate with us by posting a comment on our website/application or asking us a question through or e-mail. This information may include personal information such as, but not limited to, your name, e-mail id, mobile number, comment, message etc.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Information you provide to us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We may collect additional information at other times, when you provide feedback(s), modify your content or email preferences, respond to surveys, or communicate with us by posting a comment on our website/application or asking us a question through or e-mail. This information may include personal information such as, but not limited to, your name, e-mail id, mobile number, comment, message etc.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Information Collected when you use our website Section
              Text(
                'Information Collected when you use our website',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We may hold personal information about you including, but not limited to the following:\n\n'
                    '- Name/User name\n'
                    '- Date of Birth\n'
                    '- E-mail id\n'
                    '- Contact Number\n'
                    '- Fax\n'
                    '- Age\n'
                    '- Student ID number\n'
                    '- Gender\n'
                    '- Occupation\n'
                    '- Interests\n'
                    '- User Address (street address, city, state/province, zip/postal code, country)\n'
                    '- Photographs\n'
                    '- IP Address\n\n'
                    'We may also collect payment related data for subscription services; however, we do not store any card data in our environment.\n\n'
                    'To add certain content, like pictures, you may allow us to access your camera or photo album.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Information Collected when you use our Mobile Application Section
              Text(
                'Information Collected when you use our Mobile Application',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'When you download our mobile application (related to our various services) we collect the below information, but not limited to:\n\n'
                    '- User Name\n'
                    '- E-mail id\n'
                    '- Mobile number\n'
                    '- Date of birth\n'
                    '- Citizens / resident\n'
                    '- Photograph\n'
                    '- Gender\n'
                    '- Interests\n'
                    '- Device ID',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Third party services',

                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Third parties provide certain services available on India Sarkari Naukri’s behalf. India Sarkari Naukri may provide information, including Personal Information that ‘India Sarkari Naukri collects on the Website/Application to third-party service providers to help us deliver programs, products, information, and services. Service providers are also an important means by which India Sarkari Naukri maintains its Website/Application and mailing lists. India Sarkari Naukri will take reasonable steps to ensure that these third-party service providers are obligated to protect Personal Information on India Sarkari Naukri behalf'

                    'India Sarkari Naukri does not intend to transfer Personal Information without your consent to third parties who are not bound to act on India Sarkari Naukri behalf unless such transfer is required for legal purposes or for providing relevant services. Similarly, it is against ‘India Sarkari Naukri’s policy to sell Personal Information collected online without consent'

                    'When you are in a relationship with India Sarkari Naukri, your personal information may be transferred to European Economic Area (EEA) or outside EEA, for the purposes mentioned in this policy or to their local service providers for support in the pursuance of such purposes. Transfers to EEA or outside EEA are covered by standard data protection laws'

                    'We present information to our advertisers to help them understand our audience and confirm the value of advertising on our website/application. It is usually in the form of aggregated statistics on traffic to various pages within our site/application. When you register with India Sarkari Naukri, we contact you from time to time about updation of your content to provide the users such features that we believe may benefit you'

                    'Please keep in mind that when you provide information to us on a third-party site or platform for example, via our sites like social media login the information we collect is through those third-party sites linked with our sites is covered by this privacy policy, and the information the third-party site or platform collects is subject to the third-party site or platform’s privacy practices. Privacy choices you have made on the third-party site or platform will not apply to our use of the information we have collected directly through our sites. Please also keep in observance that our sites and sites may contain links to other sites not owned or controlled by us and we are not responsible for the privacy practices of those sites. We encourage you to read the privacy policies of other sites that may collect your personal information. All capitalized terms that have not been specifically defined herein shall have the same meaning as provided under the Terms of Use'

                    'Indiasarkarinaukri.com does not provide any personal information to the advertiser when you interact with or view a targeted ad. However, by interacting with an ad you are consenting to the possibility that the advertiser will make the assumption that you meet the targeting criteria used to display the ad.',

                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Collection and Use of Personal Information Heading and content
              Text(
                'Children',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'To use the Site/Application you agree that you must be the minimum age (described in this paragraph below) or older.The minimum age for these purposes shall be 16, however if local laws require that you must be older in order for India Sarkari Naukri to lawfully provide the services in the Site/ Application to you then that older age shall apply as the applicable minimum age. In all jurisdictions outside the European Union, if you are under the age of 18 or the age of majority in your jurisdiction, you must use India Sarkari Naukri under the supervision of your parent, legal guardian or responsible adult.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Collection and Use of Personal Information Heading and content
              Text(
                'Information Sharing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                  'India Sarkari Naukri does not rent, sell, or share personal information about you with other people or non-affiliated companies except to provide products or services you’ve requested, when we have your permission, or under the following circumstances'

              'We provide the information to trusted partners who work on behalf of or with ‘INDIA SARKARI NAUKARI’ under confidentiality agreements. These companies may use your personal information to help India Sarkari Naukri communicate with you about offers from India Sarkari Naukri and our marketing partners. However, these companies do not have any independent right to share this information'
                  'We respond to subpoenas, court orders, or legal process, or to establish or exercise our legal rights or defend against legal claims'
              'We believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of ‘India Sarkari Naukri terms of use, or as otherwise required by law'
              'We transfer information about you if ‘India Sarkari Naukri is acquired by or merged with another company. In this event, ‘India Sarkari Naukri will notify you before information about you is transferred and becomes subject to a different privacy policy'
              'We may share personal information (such as name, number, and email address) with carefully selected education colleges/ educational institutions, call centres based on your expression of interest regarding courses, specializations and institutions so that they may consider further marketing campaigns or recruitment measures. Some of these educational institutions may have access to your personal information to verify the status of your website/application or enrolment. We will inform the education institutions that they are not allowed to use your personal information for any reason other than mentioned above. Users should note however that, how these educational institutions use this data is not governed by our privacy policy. Therefore, we cannot be held responsible for how the data is utilized once it is shared with them. Educational institutions have separate policy practices for which India Sarkari Naukri has no responsibility or liability. For further information on how such institutions use your information, please visit the applicable privacy policy of that institution'
        'India Sarkari Naukri works with vendors, partners, advertisers, and other service providers in different industries and categories of business. For more information regarding providers of products or services, please refer the section Third party services of this policy',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              // Collection and Use of Personal Information Heading and content
              Text(
                'Disclaimer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color(0xFF2196F3), // Dark Blue color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'India Sarkari Naukri shall not be liable for any loss or damage sustained by reason of any disclosure (inadvertent or otherwise) of any information concerning the user’s account and / or information relating to or regarding online transactions using credit cards / debit cards and / or their verification process and particulars nor for any error, omission or inaccuracy with respect to any information so disclosed and used whether or not in pursuance of a legal process or otherwise.Any other personal information shared by you which is not asked by India Sarkari Naukri during registration, either mandatorily or optionally; accounts to wilful and intentional furnishing; and India Sarkari Naukri will not be liable for breach of such information.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),


              // Optional Footer Section
              Text(
                'For more information or any queries, please contact us at support@indiasarkarinaukri.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0D47A1), // Dark Blue color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
