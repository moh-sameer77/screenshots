import 'package:flutter/material.dart';
import '../../../../custom_widgets/mailbox_row_widget.dart';
import '../../../mail_details/model/mail_model.dart';

class OutboxListView extends StatelessWidget {
  const OutboxListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MailBoxRowWidget(
          mail: Mail(
            image: "assets/profile_image.png",
            name: 'Ahmad',
            email: "Ahmad@etech-systems.com.com",
            subject: "Project Initiation",
            mailContent:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet consectetur adipiscing elit duis tristique. Enim lobortis scelerisque fermentum dui faucibus in ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Risus feugiat in ante metus dictum. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Adipiscing tristique risus nec feugiat in. Nibh praesent tristique magna sit amet purus gravida. Egestas diam in arcu cursus euismod quis viverra nibh cras. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Rhoncus mattis rhoncus urna neque viverra justo nec. Quisque non tellus orci ac. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Sed tempus urna et pharetra.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet consectetur adipiscing elit duis tristique. Enim lobortis scelerisque fermentum dui faucibus in ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Risus feugiat in ante metus dictum. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Adipiscing tristique risus nec feugiat in. Nibh praesent tristique magna sit amet purus gravida. Egestas diam in arcu cursus euismod quis viverra nibh cras. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Rhoncus mattis rhoncus urna neque viverra justo nec. Quisque non tellus orci ac. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Sed tempus urna et pharetra.",
            attachment: "resume.pdf",
            time: '',
          ),
        ),
        MailBoxRowWidget(
          mail: Mail(
            image: "assets/profile_image.png",
            name: 'Rabee',
            email: "rabee@etech-systems.com.com",
            subject: "Project Costs",
            mailContent:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet consectetur adipiscing elit duis tristique. Enim lobortis scelerisque fermentum dui faucibus in ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Risus feugiat in ante metus dictum. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Adipiscing tristique risus nec feugiat in. Nibh praesent tristique magna sit amet purus gravida. Egestas diam in arcu cursus euismod quis viverra nibh cras. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Rhoncus mattis rhoncus urna neque viverra justo nec. Quisque non tellus orci ac. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Sed tempus urna et pharetra.",
            attachment: "resume.pdf",
            time: '',
          ),
        ),
        MailBoxRowWidget(
          mail: Mail(
            image: "assets/profile_image.png",
            name: 'Farah',
            email: "farah@etech-systems.com.com",
            subject: "Important Notice",
            mailContent:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet consectetur adipiscing elit duis tristique. Enim lobortis scelerisque fermentum dui faucibus in ornare. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Risus feugiat in ante metus dictum. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Adipiscing tristique risus nec feugiat in. Nibh praesent tristique magna sit amet purus gravida. Egestas diam in arcu cursus euismod quis viverra nibh cras. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Rhoncus mattis rhoncus urna neque viverra justo nec. Quisque non tellus orci ac. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Sed tempus urna et pharetra.",
            attachment: "resume.pdf",
            time: '',
          ),
        ),
      ],
    );
  }
}
