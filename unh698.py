from flask import Flask
app = Flask(__name__)

@app.route('/')
def main():
    return 'UNH698 Website\n'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
