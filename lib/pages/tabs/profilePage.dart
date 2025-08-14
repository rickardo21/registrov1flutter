import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registrov1/provider/clientProvider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("Profilo")),
      child: Center(
        child: Text(
          "${client.user.firstName ?? ''} ${client.user.lastName ?? ''}",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
