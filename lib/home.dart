import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final counterValue = ref.watch(counterProvider);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Riverpod Counter',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
             SizedBox(height: 30,),
            Container(
              color: Colors.white,
              child: Text(counterValue.toString()),
            ),
             SizedBox(height: 30,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      ref.read(counterProvider.notifier).state--;
                    },
                    child: Text('-')),
                    SizedBox(width: 20,),
                OutlinedButton(
                    onPressed: () {
                      ref.read(counterProvider.notifier).state++;
                    },
                    child: Text('+')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
