# 🌊 PranAI — AI Mental Wellness for Indian Students

**PranAI** is Sanskrit, roughly: "intelligence that nurtures your life energy."

## 📌 A Note for Judges, Upfront

Everything marked "✅ Demo Ready" below is genuinely built and working — the UI, the navigation flows, the gamification system, the parent dashboard, the safety-alert logic — all of it runs live in this build.

Two things are intentionally simplified for this submission, and I'd rather tell you exactly what and why than have you guess:

**AI responses are currently rule-based, not live LLM-generated.** The architecture is built to plug in GPT-5.4 Mini directly — the integration point already exists in the codebase — but for this hackathon I used keyword-based emotional detection instead of a live API call, so the demo stays fast and reliable for judging without API latency or cost getting in the way.

**Push notifications are simulated via local notifications, not FCM.** The real-time alert *logic* — what triggers an alert, what a parent sees versus what stays private — is fully implemented and demonstrated. The actual cross-device delivery mechanism (Firebase Cloud Messaging) is the next build step.

I'm flagging this directly because I'd rather you trust everything else in this submission than wonder where the line is. PranAI started six months ago, outside this hackathon, because of a real conversation I had with my own parents — not because of a hackathon prompt. The parts that are real are real because I built them before this event existed. The parts that are simplified, I'm telling you myself.

<div align="center">

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)]()
[![Firebase](https://img.shields.io/badge/Firebase-Demo-orange)]()
[![Status](https://img.shields.io/badge/Status-Prototype-yellow)]()

</div>

---

## 📋 Table of Contents

1. [The Problem](#-the-problem)
2. [The Solution](#-the-solution-pranai)
3. [Tech Stack](#-tech-stack)
4. [What's Demonstrated](#-whats-demonstrated)
5. [Demo Flow](#-demo-flow)
6. [Project Structure](#-project-structure)
7. [Demo Credentials](#-demo-credentials)
8. [Demo Video](#-demo-video)
9. [Local Setup](#-local-setup)
10. [What Makes PranAI Different](#-what-makes-pranai-different)
11. [Roadmap](#-roadmap)
12. [Team](#-team)
13. [License](#-license)

---

## 🎯 The Problem

87% of Indian students report exam-related anxiety. 1 in 4 teenagers feel persistently sad or hopeless. 70% never seek help, mostly out of stigma or fear — and when they do look for it, therapy runs ₹1,500–3,000 a session, which most families can't treat as routine.

**The gap:** it isn't that parents don't care. It's that parents are left in the dark, and students are scared to be the one who breaks the silence first.

---

## 💡 The Solution: PranAI

| Feature | Description | Status |
|---|---|---|
| 🤖 **AI Companions** | 24/7 AI friends, four different personalities | ✅ Demo Ready |
| 👨‍👩‍👧‍👦 **Parent Alerts** | Real-time notifications for emotional patterns | ✅ Demo Ready |
| 🎮 **Gamified Wellness** | Shell collection, streaks, achievements | ✅ Demo Ready |
| 🛡️ **Safety System** | 5-tier emotional risk detection & escalation | ✅ Demo Ready |
| 📊 **Daily Summaries** | AI-generated wellbeing insights for parents | ✅ Demo Ready |

---

## 🏗️ Tech Stack

| Layer | Technology |
|---|---|
| **Frontend** | Flutter / Dart |
| **Backend** | Firebase (Auth, Firestore) |
| **AI / ML** | Rule-based responses (demo) / GPT-5.4 Mini (planned) |
| **Notifications** | Local notifications (demo) / FCM (planned) |

---

## 📱 What's Demonstrated

### 👤 Student Side
AI chat interface with four distinct personalities (Alex, Jordan, Taylor, Casey), keyword-based emotional analysis, a calming ocean-themed UI, shell collection for positive habits, and daily streak tracking.

### 👨‍👩‍👧 Parent Side
Real-time alerts when a concerning pattern shows up, an insight dashboard for emotional wellness trends, specific "here's something you could say tonight" suggestions instead of vague reassurance, quick access to emergency helplines, and AI-generated daily summaries.

### 🛡️ Safety System
A 5-tier escalation path — from a quiet logged note, up to an immediate alert with helplines surfaced for high-risk language. Higher tiers require parent contact to be actioned; this isn't a single flat "check-in," it actually changes what a parent knows and when.

---

## 🔄 Demo Flow

### Scenario 1: Student Stress → Parent Alert
1. Student logs in → opens AI chat with Alex
2. Types: "I'm really stressed about my upcoming exams"
3. AI responds with an empathetic message
4. Parent receives a notification instantly
5. Parent views the insight and an actionable suggestion

### Scenario 2: Student Achievement → Parent Celebration
1. Student shares: "I finally finished my project!"
2. AI detects the positive pattern
3. Parent receives a celebration alert instead of a concern alert
4. Suggested response: "I'm proud of your hard work!"

---

## 📂 Project Structure

```
lib/
├── screens/
│   ├── ai_chat/          # AI companion chat system
│   ├── parent/           # Parent dashboard & alerts
│   ├── chat/              # Student chat system
│   └── auth/              # Authentication flows
├── services/              # Firebase, AI, Notifications
├── models/                # Data models
└── widgets/                # Reusable components
```

---

## 🚀 Demo Credentials

| Role | Email | Password |
|---|---|---|
| 👨‍🎓 **Student** | test@test.com | test123 |
| 👨‍👩‍👧 **Parent** | test@test.com | test123 |

> **Note:** Demo accounts for testing. All data is mock data.

---

## 🎥 Demo Video

[▶️ Watch the PranAI demo (5:35)](https://youtu.be/u7oXD89_X_M)

**Covers:**
- ✅ Student login & dashboard
- ✅ AI chat with emotional support
- ✅ Parent notification system
- ✅ Parent dashboard & insights
- ✅ Complete feature walkthrough

---

## 🛠️ Local Setup

```bash
git clone https://github.com/Utkarshh-07/PranAI-H-.git
cd PranAI-H-
flutter pub get
flutter run
```

---

## 🎯 What Makes PranAI Different

Most student wellness apps stop at the student — they're a private journal or a chatbot, and the parent never enters the picture. PranAI is built around the opposite bet: that the person best positioned to help a struggling student is usually already in the house, and just doesn't know tonight is the night to say something.

| Feature | Other Apps | **PranAI** |
|---|---|---|
| Parent involvement | ❌ No | ✅ **Yes** |
| Real-time alerts | ❌ No | ✅ **Yes** |
| Privacy protection | ❌ Compromised | ✅ **Parents never see chats** |
| Indian context | ❌ Western focus | ✅ **Designed for Indian students** |
| Cost | 💰 Expensive | 🆓 **Free** |

---

## 🔮 Roadmap

- [ ] **Phase 1:** Real GPT-5.4 Mini API integration
- [ ] **Phase 2:** Video call support with AI characters
- [ ] **Phase 3:** Peer support groups for students
- [ ] **Phase 4:** Professional counselor integration
- [ ] **Phase 5:** Regional language support (Hindi, Tamil, Telugu)

---

## 👥 Team

**Utkarsh Pawar** — solo developer 🧑‍💻, full-stack Flutter + Firebase.

---

## 📝 License

Protected Source License — see [LICENSE](LICENSE) file.

---

<div align="center">

**Made with ❤️ for India's Students**

*"Mental wellness is not a luxury, it's a necessity."*

</div>
