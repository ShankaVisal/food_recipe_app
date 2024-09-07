import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'By using [Your App Name], you agree to the following terms:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              _buildSection(
                title: '1. Content',
                content:
                'Recipes and content are for informational purposes. We do not guarantee accuracy, and users assume responsibility for using the information.',
              ),
              _buildSection(
                title: '2. User Contributions',
                content:
                'Any content you submit (e.g., recipes, comments) can be used by us within the app. You must ensure your submissions do not infringe on others\' rights.',
              ),
              _buildSection(
                title: '3. App Use',
                content:
                'You agree not to disrupt the app or upload harmful content.',
              ),
              _buildSection(
                title: '4. Liability',
                content:
                'We are not responsible for any issues resulting from using the app, including incorrect recipes or allergic reactions.',
              ),
              _buildSection(
                title: '5. Third-Party Links',
                content:
                'We are not responsible for content on third-party websites linked in the app.',
              ),
              _buildSection(
                title: '6. Changes',
                content:
                'We may update these terms, and continued use of the app means acceptance of the new terms.',
              ),
              _buildSection(
                title: '7. Contact',
                content: 'For questions, contact us at [Your Contact Information].',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build sections
  Widget _buildSection({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
