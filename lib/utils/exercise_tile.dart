import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName;
  final int numberOFExercise;
  final Color color;
  const ExerciseTile({
    required this.icon,
    required this.exerciseName,
    required this.numberOFExercise, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(

        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: color,
                    padding: EdgeInsets.all(12),
                    child: Icon(icon,color: Colors.white,),

                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      exerciseName,

                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$numberOFExercise Exercises",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
