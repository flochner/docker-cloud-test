From flask import Flask
app = Flask(__name__)

@app.route('/')

def test_client():
    return 'Flask Dockerized'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')

# class app:
#     def test_client():
#         pass

#     def get():
#         pass
