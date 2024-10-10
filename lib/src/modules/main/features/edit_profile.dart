import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              // Ваш контейнер вместо аватара
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.h),
              // Поле ввода имени
              TextField(
                decoration: InputDecoration(
                  labelText: 'Tanya Hill',
                  labelStyle: TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade100),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Поле ввода email
              TextField(
                decoration: InputDecoration(
                  labelText: 'tanya.hill@example.com',
                  labelStyle: TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade100),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Dropdown для выбора пола
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade100),
                  ),
                ),
                value: 'Женщина',
                items: ['Женщина', 'Мужчина', 'Другое'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {},
              ),
              SizedBox(height: 20.h),
              // Поле ввода телефона
              TextField(
                decoration: InputDecoration(
                  labelText: '(996) 555-333-899',
                  labelStyle: TextStyle(color: Colors.pink),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade100),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Dropdown для выбора страны
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink.shade100),
                  ),
                ),
                value: 'Бишкек',
                items: ['Бишкек', 'Талас', 'Ош', 'Джалал-Абад','Иссык-Куль','Нарын','Баткен']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {},
              ),
              SizedBox(height: 40.h),
              // Кнопка обновления профиля
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Логика обновления профиля
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                  ),
                  child: const Text(
                    'Update',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
