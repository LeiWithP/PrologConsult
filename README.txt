Instalar SWI-Prolog 8.4.2:
https://www.swi-prolog.org/download/stable?show=all

Set-ExecutionPolicy Unrestricted -Scope Process
python3 -m venv venv
venv\Scripts\activate

pip install fastapi
pip install "uvicorn[standard]"
pyswip version:
pip install git+https://github.com/ML-KULeuven/pyswip


uvicorn main:app --reload