import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 180,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 1);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 1 Point',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 2);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 2 Points',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 3);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 3 Points',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                        ],
                      ),
                      const SizedBox(
                        height: 480,
                        child: VerticalDivider(
                          color: Color.fromARGB(255, 189, 186, 186),
                          thickness: 1,
                          width: 20,
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 180,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 1);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 1 Point',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 2);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 2 Points',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 3);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 60),
                              ),
                              child: const Text('Add 3 Points',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                          .teamIncreament(team: 'team', buttonNumber: 0);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 60),
                    ),
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
