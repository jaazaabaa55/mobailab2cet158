// lib/models/friend_model.dart

// 1. สร้าง Class เพื่อเป็นโครงสร้างข้อมูลของเพื่อน
class FriendProfile {
  final String fullName;
  final String nickname;
  final int age;
  final String hometown;
  final String favoriteFood;
  final String favoriteActivity;
  final String imagePath; // สำหรับเก็บที่อยู่ของไฟล์รูปภาพ

  FriendProfile({
    required this.fullName,
    required this.nickname,
    required this.age,
    required this.hometown,
    required this.favoriteFood,
    required this.favoriteActivity,
    required this.imagePath,
  });
}

// 2. สร้าง List ข้อมูลของเพื่อนทั้ง 3 คน
final List<FriendProfile> friendList = [
  FriendProfile(
    fullName: "นางสาวเกวลี ทองเทียบ",
    nickname: "แพร",
    age: 22,
    hometown: "จังหวัดสงขลา",
    favoriteFood: "อาหารทะเล",
    favoriteActivity: "นอนกลางวัน, เล่นเกม",
    imagePath: "assets/images/friend1.png ", // รูปเพื่อนคนที่ 1
  ),
  FriendProfile(
    fullName: "นายศรสิวะพงษ์ โพธิวงศ์",
    nickname: "จิมมี่",
    age: 20,
    hometown: "จังหวัดประจวบคีรีขันธ์",
    favoriteFood: "ไก่ทอด",
    favoriteActivity: "เล่นกีต้าร์, วาดรูป, เล่นเกม",
    imagePath: "assets/images/friend2.png", // รูปเพื่อนคนที่ 2
  ),
  FriendProfile(
    fullName: "นายระพีพัฒน์ สีทอง",
    nickname: "จ้า",
    age: 20,
    hometown: "จังหวัดประจวบคีรีขันธ์",
    favoriteFood: "ผัดพริกแกงใต้",
    favoriteActivity: "ทำอาหาร, เล่นเกม",
    imagePath: "assets/images/friend3.png", // รูปเพื่อนคนที่ 3
  ),
];