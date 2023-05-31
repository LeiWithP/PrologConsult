Instalar SWI-Prolog 8.4.2:
https://www.swi-prolog.org/download/stable?show=all

pyswip version:
pip install git+https://github.com/ML-KULeuven/pyswip

Set-ExecutionPolicy Unrestricted -Scope Process
python3 -m venv myenv
myenv\Scripts\activate
uvicorn main:app --reload