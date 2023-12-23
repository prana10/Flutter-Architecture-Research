import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/path.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    final data = ref.watch(homeProvider);

    return Scaffold(
      body: _buildBody(data, size),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          data.getQuotes();
        },
        label: const Row(
          children: [
            Icon(Icons.refresh),
            SizedBox(width: 8),
            Text(
              "Refresh Quotes",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(HomeViewModel data, Size size) {
    switch (data.apiStatus) {
      case ApiStatus.loading:
        return const HomeContentShimmer();
      case ApiStatus.completed:
        return SafeArea(
          child: _content(data.listQuotesModel, size),
        );

      case ApiStatus.error:
        return const Center(
          child: Text("Error"),
        );
      default:
        return const HomeContentShimmer();
    }
  }

  Widget _content(ListQuotesModel dataQuotes, Size size) {
    if (dataQuotes.quotes.length == 1) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: size.width * 0.1,
              child: Text(
                dataQuotes.quotes[0].author[0],
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade200,
              ),
              child: Text(
                dataQuotes.quotes[0].author,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                dataQuotes.quotes[0].quote,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: dataQuotes.quotes.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(
              dataQuotes.quotes[index].author[0],
            ),
          ),
          title: Text(
            dataQuotes.quotes[index].quote,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          subtitle: Text(
            "Author: ${dataQuotes.quotes[index].author}",
          ),
        );
      },
    );
  }
}
