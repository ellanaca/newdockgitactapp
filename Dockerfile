# Spécifiez l'image de base à utiliser (par exemple, une image Python)
FROM python:3.8

# Copiez le contenu de votre projet dans l'image
COPY . /app

# Définissez le répertoire de travail (le répertoire où vos commandes seront exécutées)
WORKDIR /app


# Installez les dépendances à partir du fichier requirements.txt
RUN pip install -r requirements.txt


EXPOSE 8501

# Commande pour exécuter votre application Streamlit
CMD ["streamlit", "run", "app/streamlit.py","--server.port", "8501"]
