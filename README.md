# DRB Logistics – A Flutter App

This project is a logistics management app built in **Flutter** as part of the **DRB Internship Task**.  
The main goal was to deliver a **clean, simple, and modern-looking app** focusing on one section of the system: **Drivers**.


---

## 📱 App Overview
The app starts with a **home screen** that serves as a simple menu to navigate different sections.  
For this task, i focused on the **Drivers section**, making it fully functional and well-polished.

---

## ✨ Features Implemented

- **Home Screen**: A modern menu with cards for each section.
- **Drivers Section**:
  - **View All Drivers**: A list of all drivers with their current status (`Available`, `On Trip`, etc.).
  - **Driver Details**: Tap on any driver to view their profile and details.
  - **Search Bar (Bonus)**: Quickly find drivers by name or license.
  - **Smooth Animations (Bonus)**: Driver list animates when loaded, giving a polished experience.

---

## 📌 Notes on Scope
The internship instructions allowed focusing on one section.  
i selected **Drivers** to demonstrate:
- Data handling with state management.  
- Navigation between screens.  
- Scalable code organization.  

👉 The same approach can be extended later to **Vehicles** and **Trips**.

---

## 🛠 Assumptions
- **Fake Data**: Currently, the app uses mock driver data stored locally. This can easily be swapped with a database or API in the future.
- **Focus on Quality**: We prioritized making one feature excellent over partially completing all.
- **Mobile First**: UI optimized for portrait mode on phones.

---

## ⚙️ Tech Stack & Tools
- **Flutter & Dart**
- **State Management**: `Cubit` from `flutter_bloc`
- **Dependency Injection**: `get_it`
- **Icons & Assets**: `flutter_svg`

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/nourhan312/Logistics_manger.git
