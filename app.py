from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def weather():
    # Статичні дані або використання API для отримання погоди
    weather_data = {
        'city': 'Kyiv',
        'temperature': '20°C',
        'description': 'Clear sky'
    }
    return render_template('index.html', weather=weather_data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
