import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/domain/menu.dart';
import 'package:tv_shows_app/core/presentation/routes/router.gr.dart';
import 'package:tv_shows_app/core/shared/providers.dart';

import '../infrastructure/providers.dart';

class PeoplePage extends ConsumerStatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  ConsumerState<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends ConsumerState<PeoplePage> {
  late TextEditingController _textController;
  String currentQuery = '';

  @override
  void initState() {
    _textController = TextEditingController()
      ..addListener(() {
        if (currentQuery != _textController.text) {
          ref
              .read(peopleNotifierProvider.notifier)
              .searchPeople(_textController.text);
          currentQuery = _textController.text;
        }
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<Menu>(menuNotifierProvider, (previous, next) {
      if (next.page != 3) {
        ref.read(peopleNotifierProvider.notifier).searchPeople('');
      }
    });
    final state = ref.watch(peopleNotifierProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Search People',
                  suffixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: state.when(
                  initial: () => const Center(child: Text('Type in something')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  data: (people) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 1 / 2,
                        maxCrossAxisExtent: 100,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: people.length,
                      itemBuilder: (context, index) {
                        final person = people[index];
                        return GestureDetector(
                          onTap: () {
                            context
                                .pushRoute(PersonDetailRoute(person: person));
                          },
                          child: SizedBox(
                            height: 200,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: person.image.original.isEmpty
                                        ? const Image(
                                            image: AssetImage(
                                                'assets/images/no_image.png'),
                                          )
                                        : CachedNetworkImage(
                                            imageUrl: person.image.original,
                                          ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Flexible(
                                  child: ClipRect(
                                    child: Text(
                                      person.name,
                                      overflow: TextOverflow.fade,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  error: (_) => const Center(child: Text('Error')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
