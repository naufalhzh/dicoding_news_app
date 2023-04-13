part of '../news_list_page.dart';
 
class ArticleWebView extends StatelessWidget {
  static const routeName = '/article_web';
 
  final String url;
 
  const ArticleWebView({Key? key, required this.url}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}