-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: balovht
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `balo`
--

DROP TABLE IF EXISTS `balo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `balo` (
  `id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `mota` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balo`
--

LOCK TABLES `balo` WRITE;
/*!40000 ALTER TABLE `balo` DISABLE KEYS */;
INSERT INTO `balo` VALUES ('1','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0b7eb8e2-42d5-4b96-a3ec-51354645d17c/heritage-backpack-XXqNH8.png','Nike Heritage',500,'Được làm từ polyester dệt dày đặc để hỗ trợ trọng lượng nặng và độ bền, ba lô này có ngăn chính rộng rãi và túi trước có khóa kéo để cất các vật dụng nhỏ hơn.'),('2','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/67ed36ab-ad78-45f2-baf3-9844eed64bc9/brasilia-jdi-mini-backpack-PWHqCk.png','Nike Brasilia JDI',450,'Một chiếc ba lô nhỏ nhưng mạnh mẽ hoàn hảo cho cuộc phiêu lưu hàng ngày của bạn! '),('3','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6b0e657d-8c20-409f-9fd9-36a6a1aab08a/drawstring-bag-p8MsQ6.png','Drawstring Bag ',300,' Nó cung cấp nhiều không gian cho tất cả các phụ kiện phù thủy của bạn, làm cho nó hoàn hảo để mang theo thiết bị của bạn đến đào tạo, lớp học khiêu vũ hoặc công viên.'),('4','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/e33a8a7a-8481-417c-a78e-a928845f3382/heritage-backpack-4dX7J5.png','Nike Heritage',889,'Mang theo thiết bị của bạn để đi với Nike Heritage Backpack. Ngăn chính rộng rãi của nó có tay áo chứa tới máy tính xách tay.2 túi phụ kiện có khóa kéo giúp giữ cho thiết bị của bạn ngăn nắp và dễ dàng lấy. Sản phẩm này được làm từ  sợi polyester tái chế.'),('5','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/5dedf749-b3cc-4bf0-9f53-4351b86d5b4d/academy-team-football-hard-case-duffel-bag-LDzB5H.png','Football Hard-Case ',990,'Nike Academy Team Hard-Case Duffel Bag là một thiết kế bền được chế tạo để giữ cho bạn ngăn nắp. Đáy cứng của nó giúp giữ cho thiết bị của bạn an toàn, trong khi nhiều điểm mang theo cung cấp cho bạn các tùy chọn khi đến và đi từ sân.'),('6','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/61d5c8eb-6a6d-4411-af79-f97a29eb2805/sportswear-rpm-backpack-vGq1rL.png','Nike Sportswear ',2220,'Cho dù đó là đi bộ đường dài vào một ngày nắng hay đi bộ đường dài quanh khuôn viên trường, bạn có nhiều không gian để ngăn nắp trong khi vẫn thoải mái,nhiều túi zip bổ sung cho ngăn chính rộng rãi.'),('7','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2f954670-798f-44cc-bf0b-829e3310030d/backpack-NdHDtf.png','Backpack (21L)',1011,'Từ tập luyện đến đi làm, Nike Backpack đều có bạn. Một ngăn lớn có khóa kéo cung cấp chỗ cho giày hoặc một bộ quần áo bổ sung cho phòng tập thể dục và sách và máy tính xách tay của bạn cho trường học.'),('8','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/cd55cdf5-d088-4f1c-84f6-7c6d0b29f9fd/hike-backpack-J9xJd6.png','Nike Hike',2349,'huẩn bị sẵn sàng ngoài trời với Nike Hike Backpack, một chiếc túi đa năng có thể đi từ cất giữ đồ dùng học tập đến đi bộ đường dài hàng ngày trên con đường mòn địa phương của bạn .'),('9','https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a36fe462-c99e-42fd-b7ae-6150ec044748/sportswear-futura-365-mini-backpack-RXd15s.png','Nike Sportswear ',1069,'Mặc dù kích thước nhỏ nhưng chiếc ba lô này mang phong cách đồ sộ. Được làm từ polyester dệt dày đặc để hỗ trợ trọng lượng nặng, nó có ngăn chính với túi lưới bên trong để tăng cường tổ chức.');
/*!40000 ALTER TABLE `balo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 16:18:55
