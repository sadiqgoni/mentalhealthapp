import 'package:flutter/material.dart';

import '../utils/emoticons_face.dart';
import '../utils/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: " "),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi Suhailu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "04 Jun, 2023",
                          style: TextStyle(color: Colors.blue[200]),
                        )
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[500]),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search...",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "How do you feel?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticon: '😕',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Bad",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticon: '🙂',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Fine",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticon: '🤧',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Well",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticon: '🤩',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Excellent",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),
              child: Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      const Divider(
                        height: 12,
                        thickness: 5,
                        indent: 150,
                        endIndent: 150,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    Expanded(child: ListView(
                      children: [
                        ExerciseTile(icon: Icons.favorite, exerciseName:       "Speaking Skills", numberOFExercise: 16, color: Colors.orange,),
                        ExerciseTile(icon: Icons.person, exerciseName:       "Reading Skills", numberOFExercise: 8, color: Colors.green,),
                        ExerciseTile(icon: Icons.star, exerciseName:       "Writing Skills", numberOFExercise: 20, color: Colors.red),
                        ExerciseTile(icon: Icons.safety_check, exerciseName:       "Wallking  Skills", numberOFExercise: 16, color:   Colors.purple,),

                      ],
                    ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

