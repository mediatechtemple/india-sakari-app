import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MockTestPage extends StatelessWidget {
  const MockTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Mock Test'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),

            Row(
              children: [
                const Text(
                  '<',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  'Welcome',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF333333),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Text(
              'Akash Soni',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF404040),
              ),
            ),

            const SizedBox(height: 15),

            // Light Blue Rectangle Box containing "Updated Exam | Exam Name"
            Container(
              width: 337,
              height: 110,
              margin: const EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF6FD8EF),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 207.22,
                height: 36.86,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F4),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Updated Exam | Exam Name',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            buildSectionHeader(context, 'Online Test'),
            buildExamRowWithSidebar('Exam name', 'Exam name'),

            const SizedBox(height: 20),
            buildSectionHeader(context, 'Typing Test'),
            buildExamRowWithSidebar('Exam name', 'Exam name'),

            const SizedBox(height: 20),
            buildSectionHeader(context, 'Short Hand'),
            buildExamRowWithSidebar('Exam name', 'Exam name'),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildSectionHeader(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF333333),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View All',
            style: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF333333),
              height: 1.0,
              letterSpacing: 0.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildExamRowWithSidebar(String exam1, String exam2) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildExamCard(exam1, '250+ Questions', '12 min', '234+ examinee'),
          const SizedBox(width: 10),
          buildExamCard(exam2, '300+ Questions', '15 min', '567+ examinee'),
        ],
      ),
    );
  }

  Widget buildExamCard(String examName, String questionCount, String time, String examineeCount) {
    return Container(
      width: 190,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            examName,
            style: GoogleFonts.kanit(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1D1E23),
            ),
          ),
          const SizedBox(height: 10),

          // Updated "Questions" with Border #471EBA
          Container(
            width: 104.17,
            height: 18,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF471EBA), width: 0.2),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Text(
              questionCount,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF471EBA),
              ),
            ),
          ),

          const SizedBox(height: 5),

          // Updated "Time" with Border #471EBA
          Container(
            width: 55.77,
            height: 18,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF471EBA), width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Text(
              time,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF471EBA),
              ),
            ),
          ),

          const SizedBox(height: 5),

          // Updated "Examinee Count" with Required Format
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 79,
              height: 18,
              alignment: Alignment.center,
              child: Text(
                examineeCount,
                style: GoogleFonts.kanit(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  height: 1.0,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ),

          const Spacer(),

          // "free" Text with Corrected Spacing & Alignment
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              width: 30, // Width: 30px
              height: 24, // Height: 24px
              child: FittedBox(
                fit: BoxFit.scaleDown, // Prevents overflow
                child: Text(
                  'Free',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.kanit(
                    fontSize: 16, // Font size: 16px
                    fontWeight: FontWeight.w300, // Weight: 300
                    color: const Color(0xFF26093D), // Color: #26093D
                    height: 1.0, // Line height: 100%
                    letterSpacing: 0.0, // Letter spacing: 0%
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
