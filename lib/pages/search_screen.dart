import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  final List<String> _allSuggestions = [
    ' Joe Biden ',
    'Donald Trump',
    'Barack Obama',
    'George Bush',
    'Hillary Clinton',
  ];

  List<String> _filteredSuggestions = [];

  void _updateSuggestions(String query) {
    setState(() {
      _filteredSuggestions = _allSuggestions
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _selectSuggestion(String value) {
    _controller.text = value;
    setState(() {
      _filteredSuggestions = [];
    });
  }

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator(color: Colors.blue))
          : Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: TextField(
                      controller: _controller,
                      onChanged: _updateSuggestions,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: const Color.fromARGB(255, 245, 243, 243),
                        filled: true,
                        prefixIcon: Icon(Icons.search, size: 26),
                        suffixIcon: _controller.text.isNotEmpty
                            ? IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {
                                  _controller.clear();
                                  _updateSuggestions('');
                                },
                              )
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_filteredSuggestions.isNotEmpty)
                    Expanded(
                      child: ListView.builder(
                        itemCount: _filteredSuggestions.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(Icons.search),
                            title: RichText(
                              text: TextSpan(
                                text: '',
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: _filteredSuggestions[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            trailing: Icon(Icons.north_east, size: 18),
                            onTap: () =>
                                _selectSuggestion(_filteredSuggestions[index]),
                          );
                        },
                      ),
                    ),
                  Row(
                    children: [
                      Text(
                        "Recent Searches",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.delete_outline_outlined, size: 28),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 236, 233, 233),
                        child: Text(
                          "Biden",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        color: const Color.fromARGB(255, 236, 233, 233),
                        child: Text(
                          "Anderson Cooper",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        color: const Color.fromARGB(255, 236, 233, 233),
                        child: Text(
                          "Trump",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.trending_up_outlined),
                      SizedBox(width: 10),
                      Text(
                        "Trending",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "anbazhangan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.36),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Trending",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Malayalam",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Women’s Day",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Chanels",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.45),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(border: Border.all()),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Isha",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
