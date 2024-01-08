

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false),
  );
}

class DetailScreen extends StatelessWidget {
  final Map<String, String> item;

  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.black,
        title: Text(
          item['title']!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.grey,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(
                      item['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: ListTile(
                    leading: const Icon(Icons.attach_money),
                    title: Text(
                      item['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    titleAlignment: ListTileTitleAlignment.top,
                    subtitle: Text(
                      item['subtitle']!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.greenAccent),
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.attach_money),
                  Text('Buy'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
