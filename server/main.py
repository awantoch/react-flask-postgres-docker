from flask import Flask, render_template

app = Flask(__name__,
            static_url_path='', 
            static_folder='dist',
            template_folder="./template")


@app.route("/")
def react():
    return render_template("index.html")

if __name__ == "__main__":
    app.run()
