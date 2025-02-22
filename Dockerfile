# השתמש בבסיס פייתון
FROM python:3.9

# הגדר ספריית עבודה בתוך הקונטיינר
WORKDIR /app

# העתק את כל הקבצים לתוך הקונטיינר
COPY . .

# התקנת התלויות
RUN pip install -r requirements.txt

# פתיחת הפורט (אם האפליקציה משתמשת ב-5000 לדוגמה)
EXPOSE 5000

# הפעלת האפליקציה
CMD ["python", "app.py"]
