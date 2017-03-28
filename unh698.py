from flask import Flask
app = Flask(__name__)

@app.route('/')

def hello_world_fml():
    return 'UNH698 Website'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')

# class app:
#     def test_client():
#         pass

#     def get():
#         pass
