import 'package:flutter/material.dart';
import 'package:navigation/course_detail.dart';
import 'package:navigation/course_list.dart';
import 'course.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  void _tabHandler(Course course) {
   setState(() {
    _selectedCourse = course;
   });
 }

 List<Course> courses = [
   Course(
       code: "SiTE-001",
       title: "Introduction To Programming",
       description: "Computer Organization, Architecture, Programming"),
   Course(
    code: "SiTE-002",
       title: "Web Development",
       description: "FrontEnd & BackEnd"),
   Course(
    code: "SiTE-003",
       title: "Mobile Application development",
       description: "Flutter"),
 ];

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    home: Navigator(
       pages: [
         MaterialPage(
             key: const ValueKey('CourseListScreen'),
             child: CoursesListScreen(
                courses: courses,
                onTapped: _tabHandler,
         )),
         if (_selectedCourse != null)
           MaterialPage(
               key: ValueKey(_selectedCourse),
               child: CourseDetailsScreen(course: _selectedCourse!,))
       ],
       onPopPage: (route, result) {
         if (!route.didPop(result)) {
           return false;
         }
         setState(() {
           _selectedCourse = null;
         });
         return true;
       },

     ),
   );
 }

}