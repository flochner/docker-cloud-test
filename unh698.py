from flask import Flask
app = Flask(__name__)

@app.route('/')
def main():
    return 'UNH698 Website\nSpeed Racer\n'
    
@app.route('/SpeedRacer')
def main():
    return 'Speed Racer\n'
    

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
