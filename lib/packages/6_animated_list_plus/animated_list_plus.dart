
import '../../constants/screen_paths.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final List<int> _items = List.generate(5, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Animated List Example', style:Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ImplicitlyAnimatedList<int>(
          items: _items,
          areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
          itemBuilder: (context, animation, item, index) {
            return SizeFadeTransition(
              animation: animation,
              child: Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(child: Text(item.toString())),
                  title: Text('Item #$item'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        _items.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _items.add(_items.length);
          });
        },
        backgroundColor: Colors.indigo.shade900,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
