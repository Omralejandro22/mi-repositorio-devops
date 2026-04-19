from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "<h1>Pipeline funcionando con éxito en AWS</h1><p>Desplegado mediante Docker y GitHub Actions.</p>"

if __name__ == '__main__':
    # Usamos 0.0.0.0 para que sea accesible desde la IP pública de la EC2
    app.run(host='0.0.0.0', port=5000)
