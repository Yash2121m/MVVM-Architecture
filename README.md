# 📱 MVVM Architecture in Flutter

This project demonstrates the implementation of the **MVVM (Model-View-ViewModel)** architecture pattern in Flutter. It helps in building scalable, maintainable, and testable applications by separating concerns into different layers.

---

## 🧠 What is MVVM?

**MVVM (Model-View-ViewModel)** is an architectural pattern that separates the user interface from business logic.

---

## 🏗️ Architecture Overview

<img src="https://github.com/user-attachments/assets/81979403-380b-4ca5-8a3b-0fc47c9eeb92" width="500"/>


---

## 🔹 Layers Explained

### 1. View (UI Layer)
- Responsible for UI (Screens, Widgets)
- Observes ViewModel
- Sends user actions to ViewModel

---

### 2. ViewModel
- Connects View and Domain
- Holds UI state
- Handles presentation logic

---

### 3. Domain Layer (Use Cases)
- Contains business logic
- Independent from UI & Data layers

---

### 4. Repository Layer
- Single source of truth
- Decides between local & remote data

---

### 5. Data Sources
- **Local:** SQLite, Hive
- **Remote:** API, Firebase

---

## 🔄 Data Flow
User Action → View → ViewModel → UseCase → Repository → Data Source
Response ← View ← ViewModel ← Repository ← Data Source


---

## ✨ Features

- Clean architecture
- Separation of concerns
- Scalable structure
- Easy to maintain & test


---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK
- Dart
- VS Code / Android Studio

### Installation

```bash
git clone https://github.com/your-username/MVVM_Architecture.git
cd MVVM_Architecture
flutter pub get
flutter run
