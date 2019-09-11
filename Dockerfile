FROM jupyter/datascience-notebook

WORKDIR /work

COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# extensionのinstall & vim bindingの有効化
RUN jupyter labextension install jupyterlab_vim

COPY work ./
RUN jupyter serverextension enable --py jupyterlab
