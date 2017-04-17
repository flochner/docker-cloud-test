from flask import Flask
from flask import render_template
app = Flask(__name__)

@app.route('/')
#@app.route('/<name>')
def main():
    return render_template('hello.html', name=name)
    
@app.route('/SpeedRacer')
def speed():
    return 'Speed Racer\n'
    
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
