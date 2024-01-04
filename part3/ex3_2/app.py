from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    # host has to be set to 0.0.0.0 so that the app 
    # is accessible from outside the container
    app.run(debug=True, host='0.0.0.0')