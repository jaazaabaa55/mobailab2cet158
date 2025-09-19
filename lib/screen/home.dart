// lib/screen/friend_list_screen.dart

import 'package:flutter/material.dart';
import '../models/friend_model.dart'; // import โมเดลข้อมูลเพื่อน
import 'package:google_fonts/google_fonts.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ใช้ ListView.builder เหมือนเดิมในการสร้างรายการ
    return ListView.builder(
      // itemCount คือจำนวนเพื่อนทั้งหมดใน List ของเรา
      itemCount: friendList.length,
      itemBuilder: (context, index) {
        // ดึงข้อมูลเพื่อนคนที่ 'index' ออกมาจาก List
        final friend = friendList[index];

        // ใช้ Card เพื่อทำให้แต่ละรายการสวยงาม
        return Card(
          // กำหนดสีพื้นหลังของการ์ด
          color: Colors.deepPurple.shade700,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            // ใช้ Row เพื่อจัดวางข้อมูล (ซ้าย) และรูปภาพ (ขวา)
            child: Row(
              children: [
                // === ส่วนข้อมูล (ด้านซ้าย) ===
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ชื่อ-นามสกุล
                      Text(
                        friend.fullName,
                        style: GoogleFonts.itim(
                          textStyle: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // ชื่อเล่นและอายุ
                      Text(
                        "(${friend.nickname}) - อายุ ${friend.age} ปี",
                        style: GoogleFonts.itim(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.yellow.shade600,
                          ),
                        ),
                      ),
                      const Divider(color: Colors.white24, height: 20),
                      // ข้อมูลอื่นๆ
                      Text(
                        "บ้านเกิด: ${friend.hometown}",
                        style: GoogleFonts.itim(
                          textStyle: const TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                      Text(
                        "อาหารที่ชอบ: ${friend.favoriteFood}",
                        style: GoogleFonts.itim(
                          textStyle: const TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                      Text(
                        "กิจกรรมที่ชอบ: ${friend.favoriteActivity}",
                        style: GoogleFonts.itim(
                          textStyle: const TextStyle(fontSize: 16, color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15), // ระยะห่าง

                // === ส่วนรูปภาพ (ด้านขวา) ===
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    friend.imagePath,
                    width: 100,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}