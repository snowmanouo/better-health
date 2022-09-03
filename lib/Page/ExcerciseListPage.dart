import 'package:flutter/material.dart';
import '../helpers/Constants.dart';

class ExcerciseList extends StatefulWidget{

  @override
  _ExcerciseListState createState() => _ExcerciseListState();


}


class _ExcerciseListState extends State<ExcerciseList> {
  final controller = TextEditingController();
  List<Book> books = allBooks;
  void searchBook(String query){
    final suggestions = allBooks.where((book){
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();

      return bookTitle.contains(input);
    }).toList();

    setState(() => books = suggestions);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('今日運動',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: appGreenColor,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        children: [
              Row(
                children: [
                  Text('運動清單',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 173),
                  Row(
                    children: [
                      Text('自定義',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      SizedBox(width: 9),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Image.asset('assets/images/addButton.png'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(238, 238, 238, 1.0),
                    boxShadow: [
                      BoxShadow(color: Colors.transparent, spreadRadius: 3),
                    ],
                  ),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: '搜尋',
                      hintStyle: TextStyle(fontSize: 16),
                      border: InputBorder.none,
                    ),
                    onChanged: searchBook,
                  ),
                ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return ListTile(
                        leading: Image.network(
                          book.urlImage,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(book.title),
                        contentPadding: EdgeInsets.zero,
                      );
                    },
                  ),

        ],
      ),
    );
  }
}


class Book {
  final String title;
  final String urlImage;

  const Book({
    required this.title,
    required this.urlImage,
  });
}

const allBooks = [
  Book(title: 'A', urlImage: "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg"),
  Book(title: 'B', urlImage: "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg"),
  Book(title: 'C', urlImage: "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg"),
];
