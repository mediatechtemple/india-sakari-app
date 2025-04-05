import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/VideosViewModel.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the VideosViewModel using Get.find()
    final viewModel = Get.find<VideosViewModel>();

    // Fetch videos when the page is first loaded if they aren't loaded yet
    if (viewModel.videos.isEmpty) {
      viewModel.fetchVideos();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Videos Page"),
      ),
      body: Obx(() {
        if (viewModel.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (viewModel.errorMessage.value.isNotEmpty) {
          return Center(child: Text(viewModel.errorMessage.value));
        }

        return ListView.builder(
          itemCount: viewModel.videos.length,
          itemBuilder: (context, index) {
            final video = viewModel.videos[index];
            return ListTile(
              title: Text(video.title),
              subtitle: Text(video.description),
              leading: Image.network(video.thumbnail),
              onTap: () {
                // Optionally, you can open the video URL here
                // You can use `url_launcher` to open the URL in a browser
                print('video URL: ${video.videoUrl}');
              },
            );
          },
        );
      }),
    );
  }
}
