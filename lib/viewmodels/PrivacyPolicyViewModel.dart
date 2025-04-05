import 'package:get/get.dart';

class PrivacyPolicyController extends GetxController {
  // Observable message that can be updated and observed in the view
  var message = "Welcome to PrivacyPolicy!".obs;

  // You can add other state variables here as needed.
  var privacyPolicyText = "".obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize your privacy policy data or any other logic you want to execute
    fetchPrivacyPolicyData();
  }

  // This method could be used to load privacy policy from an API or local source
  void fetchPrivacyPolicyData() {
    // For now, just setting the static content you provided in the message
    privacyPolicyText.value = '''
    Privacy Policy

    Objective and Scope:
    India Sarkari Naukri (“we”, “us”, “our”, “India Sarkari Naukri”) values the trust placed in us by data subject (“you”, “your”, “user”, “subscriber”) and therefore, we follow the highest standards of privacy guidelines to protect the information shared by you with us.

    This privacy policy describes the usage of information provided or collected by India Sarkari Naukri and/or its subsidiary (ies) and/or affiliate(s) (collectively referred to as the “Company“), which operates various Websites/Mobile applications & other services including but not limited to delivery of information and content via any mobile or internet connected device or otherwise (collectively the “Services“). We follow this privacy policy in accordance with applicable law in the places where we operate. In some cases, we may provide additional data privacy notices specific to certain services or regions. Those terms are to be read in combination with this policy.

    Indiasarkarinaukri.com here in is a property of MediaTechTemple, an Indian Company registered under proprietorship having its corporate office at 57, Swaran Jayanti Nagar, Bharatpur, Rajasthan – 321001. With a view to offer most enriching and holistic internet experience to its users India Sarkari Naukri offers a vast repository of Online Sites and variety of community services.

    This Privacy Policy should be read in conjunction and together with the Terms of Use applicable to the India Sarkari Naukri Service that you are using.

    What does this privacy policy cover?
    The objective of the privacy policy is to inform you regarding the processing of your personal information which is collected during your visit to our website/application. This policy applies to current and former visitors of the website/application, users who register on India Sarkari Naukri in connection with use of our services, or whose information India Sarkari Naukri otherwise receives in connection with its services.

    Collection and Use of Personal Information
    Personal information (PI) – means any information relating to an identified or identifiable living person (‘data subject’ here in referred as you/your’). In particular using a common identifier such as a name, an identification number, location data, an online identifier or one or more factors specific to the physical, physiological, genetic, mental, economic, cultural or social identity of that natural person or any other piece of information as per applicable laws and regulations.
    ''';
  }
}
