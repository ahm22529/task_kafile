import 'package:flutter/material.dart';
import 'package:task_kafile/core/utiles/customwidget/styel.dart';

class SkillsInputScreen extends StatefulWidget {
  final List<String> initialSkills;
  const SkillsInputScreen({Key? key, required this.initialSkills})
      : super(key: key);

  @override
  _SkillsInputScreenState createState() => _SkillsInputScreenState();
}

class _SkillsInputScreenState extends State<SkillsInputScreen> {
  late List<String> skills;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    skills = List.from(widget.initialSkills);
  }

  void _addSkill(String skill) {
    if (skill.isNotEmpty && !skills.contains(skill)) {
      setState(() {
        skills.add(skill);
      });
      _controller.clear();
    }
  }

  void _removeSkill(String skill) {
    setState(() {
      skills.remove(skill);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter a skill',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => _addSkill(_controller.text),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: skills.map((skill) {
                  return Chip(
                    label: Text(skill),
                    onDeleted: () => _removeSkill(skill),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, skills);
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
