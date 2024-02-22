# myproject_travel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Flutter Doc.
-----------------------
3.1 คอนเทนเนอร์ (Container)
คอนเทนเนอร์เป็นวิดเจ็ตเอนกประสงค์ที่สามารถใช้เพื่อจัดรูปแบบและวางตำแหน่งวิดเจ็ตอื่นๆ สามารถมีลูกเดียวและคุณสมบัติเพิ่มเติม เช่น ระยะขอบ ระยะขอบ และการตกแต่ง

Container(
  padding: EdgeInsets.all(8),
  margin: EdgeInsets.symmetric(horizontal: 16),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(8),
  ),
  child: Text('Hello, Flutter!'),
)






3.2 แถว (Row) และคอลัมน์ (Column)
แถวและคอลัมน์ใช้เพื่อจัดเรียงวิดเจ็ตย่อยในแนวนอนและแนวตั้งตามลำดับ มีคุณสมบัติเช่น mainAxisAlignment และ crossAxisAlignment เพื่อควบคุมการจัดแนวลูก

Column(
    mainAxisAlignment = MainAxisAlignment.center,
    crossAxisAlignment = CrossAxisAlignment.start,
    children = listOf(
        Text("Hello, Flutter!"),
        Text("Welcome to the world of widgets."),
        Row(
            mainAxisAlignment = MainAxisAlignment.spaceEvenly,
            children = listOf(
                Icon(Icons.favorite, color = Colors.red),
                Icon(Icons.star, color = Colors.yellow),
                Icon(Icons.thumb_up, color = Colors.blue),
            ),
        ),
    ),
)




3.3 สแต็ก (Stack)
วิดเจ็ตแบบสแต็กช่วยให้คุณวางวิดเจ็ตหลายรายการซ้อนทับกัน มีประโยชน์สำหรับการสร้างองค์ประกอบ UI ที่ซับซ้อนซึ่งคุณต้องวางตำแหน่งวิดเจ็ตให้สัมพันธ์กับพาเรนต์หรือพี่น้อง

Stack(
  alignment: Alignment.center,
  children: [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 80,
      height: 80,
      color: Colors.green,
    ),
    Container(
      width: 60,
      height: 60,
      color: Colors.blue,
    ),
  ],
)
