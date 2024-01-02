import uvicorn
import mysql.connector
import random
import os
import jinja2
import httptools
from fastapi import FastAPI, Request, UploadFile, File
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from fastapi.templating import Jinja2Templates
from pydantic import BaseModel
from datetime import datetime

config = {
	'user': 'root',
	'password': '',
	'host': 'localhost',
	'port': 3306,
	'database': 'BookShopDB'
}

# Creazione dell'app FastAPI
webapp = FastAPI(
	title='Libreria',
	description= ""
)

# Configurazione dei template Jinja2
templates = Jinja2Templates(
	directory='templates',
	autoescape=False,
	auto_reload=True
)

# Montaggio della cartella 'static' per i file statici
webapp.mount(
	'/static',
	app=StaticFiles(directory='static'),
	name='static'
)

# Definizione dell'oggetto Person utilizzando pydantic (altrimenti dovevamo usare dataclasses)
class Libro(BaseModel):
	id: int
	title: str
	pages: int
	isbn: str
	storyline: str
	price: float

class Autore(BaseModel):
	id: int
	firstname: str
	lastname: str
	isMale: bool
	bdate: datetime
	deathdate: datetime
	country: str

	def isAlive(self) -> str:
		if self.deathdate == datetime(1900, 1, 1):
			return "In vita"
		else:
			return str(self.deathdate.strftime("%Y-%m-%d"))

def getAllAutori():
	conn = mysql.connector.connect(**config)
	if conn.is_connected():
		print('Okay')
		# Creazione di un cursore per eseguire le query
		cursor = conn.cursor()
		# Esempio di esecuzione di una query
		query = "SELECT * FROM Authors"
		cursor.execute(query)
		# Ottenere i risultati della query
		results = cursor.fetchall()
		# Crezione Lista
		listaAutori = []
		for row in results:
			if row[5] is None:
				listaAutori.append(Autore(id=int(row[0]), firstname=row[1], lastname=row[2], isMale=row[3], bdate=row[4], deathdate=datetime(1900, 1, 1), country=row[6]))
			else:
				listaAutori.append(Autore(id=int(row[0]), firstname=row[1], lastname=row[2], isMale=row[3], bdate=row[4], deathdate=row[5], country=row[6]))
		cursor.close()
		conn.close()
		return listaAutori
	else:
		print('Connessione al database fallita.')
		#Rimanda a qualcge pagina
'''
Per passare da pagina:
1) crea una rotta con get (vedi questo sotto)
2) crea la pagina html
3) nell <a href> ci inserisci la rotta, nell'esempio sotto è /autoriPagina
4) nella funzione autori assicurati di mettere il nome .html della tua nuova pagina
'''
#HOMEPAGE
@webapp.get("/", response_class= HTMLResponse)
def home(req: Request):
	return templates.TemplateResponse(
		"root.html",{
		"request": req
		}
	)

@webapp.get("/autoriPagina", response_class= HTMLResponse)
def autori(req: Request):
	return templates.TemplateResponse(
		"autore.html",{
		"request": req
		}
	)

# CRUD
# put Aggiungi autore, DELETE elimina autore, post aggiorna e  GETprendi autore

@webapp.get("/api/autori/")
async def getAutore(req: Request):
	return templates.TemplateResponse(
		"vediAutori.html",{
			"request": req,
			"listaAutori": getAllAutori()
		}
	)

@webapp.put("/api/autori/")
async def addAutore():
	return

# Avvio dell'applicazione utilizzando uvicorn
if __name__ == '__main__':
	uvicorn.run(
		'main:webapp',
		host='0.0.0.0',
		port=3109,
		# use_colors = False,
		http='httptools',
		reload=True
	)