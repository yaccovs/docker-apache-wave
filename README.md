# Apache Wave (Docker Environment)

⚠️ **SECURITY WARNING** ⚠️

**This project is intended for archival, research, or testing purposes in isolated environments ONLY.**

* **Project Status:** Official development of Apache Wave (formerly Google Wave) ceased approximately 10 years ago (circa 2018). The codebase is unmaintained and does not receive security updates.
* **Security Risks:** There is a high probability of known, unpatched security vulnerabilities (CVEs) within the source code and its legacy dependencies.
* **Disclaimer:** Use of this repository and the resulting containers is at your **own risk**. It should **not** be deployed in production environments or exposed to the public internet. The author assumes no liability for any security breaches, data loss, or damages.

---

## About This Project

This repository provides a **Docker wrapper** for the Apache Wave project. Its primary purpose is to allow for the easy execution of this historical codebase on modern systems using containers, bypassing the need to manually install legacy Java and Jetty versions on your host operating system.

## Features

* **Dockerfile:** Defines the legacy environment required for Apache Wave to run.
* **docker-compose.yml:** Orchestrates the server and required database services for quick deployment.
* **supervisord.conf:** Manages internal processes to ensure runtime stability (within the limits of the legacy software).

## Getting Started (Local Use Only)

1. **Clone the Repository:**
```bash
git clone https://github.com/yaccovs/docker-apache-wave.git
cd docker-apache-wave

```


2. **Build and Run:**
Use Docker Compose to build the image and start the services:
```bash
docker-compose up -d

```


3. **Access the Interface:**
Once the container is running, the Wave interface will be accessible at:
`http://localhost:9898`

## Technical Notes

* The Docker image is based on software versions compatible with the era when the project was active.
* Persistent data is handled via Docker volumes as defined in the `docker-compose.yml` file.

---





⚠️ **אזהרת אבטחה חשובה / SECURITY WARNING** ⚠️

**פרויקט זה מיועד למטרות ארכיון, מחקר או התנסות בסביבה מבודדת בלבד.**

* **סטטוס הפרויקט:** הפיתוח של Apache Wave נעצר רשמית לפני כעשור (בסביבות 2018). הקוד אינו מתוחזק ואינו מקבל עדכוני אבטחה.
* **סיכוני אבטחה:** קיים סיכוי גבוה מאוד לקיומן של פרצות אבטחה ידועות (CVEs) שאינן מטופלות בקוד המקור ובספריות התלויות שלו.
* **אחריות:** השימוש במאגר זה ובקונטיינרים המופקים ממנו הוא על **אחריותו הבלעדית של המשתמש**. אין להריץ פרויקט זה בסביבת ייצור (Production) או כשהוא חשוף לרשת האינטרנט ללא הגנה מקסימלית.

---

## אודות הפרויקט

מאגר זה מספק **מעטפת Docker בלבד** עבור פרויקט Apache Wave (לשעבר Google Wave). מטרת המאגר היא לאפשר הרצה פשוטה של הקוד ההיסטורי על גבי מערכות מודרניות באמצעות קונטיינר, מבלי להסתבך עם התקנת גרסאות Java ו-Jetty ישנות על מערכת ההפעלה המארחת.

## מה בפנים?

* **Dockerfile:** מגדיר את סביבת הריצה הישנה הנדרשת עבור Apache Wave.
* **docker-compose.yml:** מאפשר הרמה מהירה של השרת ובסיסי הנתונים הנדרשים.
* **supervisord.conf:** מנהל את התהליכים הפנימיים כדי לשמור על יציבות (מוגבלת) של הריצה.

## הרצה (לשימוש מקומי בלבד)

1. **שכפול המאגר:**
```bash
git clone https://github.com/yaccovs/docker-apache-wave.git
cd docker-apache-wave

```


2. **בנייה והרצה:**
```bash
docker-compose up -d

```


3. **גישה לממשק:**
הממשק יהיה זמין בכתובת `http://localhost:9898`.

## הערות טכניות

* ה-Image מבוסס על גרסאות תוכנה תואמות לתקופה בה הפרויקט היה פעיל.
* מומלץ להשתמש ב-Volumes המוגדרים ב-Compose כדי לשמור נתונים.
