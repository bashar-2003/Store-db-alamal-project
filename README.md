# store alamal Database Project – مشروع قاعدة بيانات محل الامل تجاري

This project is a simple database system designed for a shop to manage clients and their financial transactions.

هذا المشروع عبارة عن نظام قاعدة بيانات بسيط لمحل الامل تجاري لإدارة العملاء والعمليات المالية.

## 📁 Database Structure – هيكل قاعدة البيانات

🔹 1. Clients  – جدول العملاء

| Field   | Type     | Description      | الوصف      |

| ------- | -------- | ---------------- | ---------- |

| id      | INT (PK) | Unique client ID | رقم العميل |

| name    | VARCHAR  | Client name      | اسم العميل |

| mobile  | VARCHAR  | Phone number     | رقم الجوال |

| address | VARCHAR  | Address          | العنوان    |

2. Transactions – جدول العمليات المالية



| Field    | Type     | Description         | الوصف                    |

| -------- | -------- | ------------------- | ------------------------ |

| id       | INT (PK) | Transaction ID      | رقم العملية              |

| date     | DATE     | Date of transaction | التاريخ                  |

| income   | DECIMAL  | Income value        | الإيراد                  |

| expense  | DECIMAL  | Expense value       | المصروف                  |

| clientID | INT (FK) | Related client      | رقم العميل (مفتاح أجنبي) |

| cash     | BOOLEAN  | Paid in cash?       | هل العملية نقدية؟        |

| notes    | TEXT     | Notes               | ملاحظات                  |

### 👇Relationship – العلاقة بين الجداول

(1 : ∞)يوجد لكل عميل عدة عمليات مالية

راجع المخطط في ملف: tables.png

### 👇How to Use – طريقة الاستخدام

Open XAMPP and start Apache + MySQL

شغّل Apache + MySQL في XAMPP
Visit:

👉 http://localhost/alamel-stor

Create a database named:

alamel-stor

Import the SQL file:

alamel-stor.sql

استورد ملف قاعدة البيانات

Sample Data – البيانات التجريبية

ملف SQL يحتوي بيانات تجريبية جاهزة للعرض والاختبار.

⭐Notes – ملاحظات

This project is created for educational purposes.

تم إنشاء هذا المشروع لغرض الدراسة والتدريب.
