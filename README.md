## MODFLOW models image

This DockerImage runs a Jupyter Notebook with [flopy](https://github.com/modflowpy/flopy) and the MODFLOW models installed ready to use.

Models supported: MODFLOW 6, MODFLOW-2005, MODFLOW-NWT, MODFLOW-USG, MODFLOW-LGR, MODFLOW-2000, MODPATH 6, MODPATH 7, GSFLOW, VS2DT, MT3DMS, MT3D-USGS, SEAWAT, and SUTRA


### Using Docker


```bash
$ docker run  --rm --name modflow_notebook \ 
  -p 8888:8888 mintproject/modflow_models
```

#### Running examples

[flopy](https://github.com/modflowpy/flopy) provides several examples.


```bash
$ git clone https://github.com/modflowpy/flopy.git
```

```bash
$ docker run  --rm --name modflow_notebook \ 
  -v $PWD/flopy:/home/jovyan/work \
  -p 8888:8888 mintproject/modflow_models
```

To open the notebook on your browser, copy the link starting with http://127.0.0.1:8888/

```
Executing the command: jupyter notebook
[I 16:52:57.686 NotebookApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
[I 16:52:59.072 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.8/site-packages/jupyterlab
[I 16:52:59.072 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 16:52:59.079 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 16:52:59.079 NotebookApp] Jupyter Notebook 6.1.3 is running at:
[I 16:52:59.079 NotebookApp] http://828f356ef4f8:8888/?token=ee363a2ff78f0866803f5ab1de070f4bd0544054e6efe9df
[I 16:52:59.079 NotebookApp]  or http://127.0.0.1:8888/?token=ee363a2ff78f0866803f5ab1de070f4bd0544054e6efe9df
[I 16:52:59.079 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 16:52:59.087 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-6-open.html
    Or copy and paste one of these URLs:
        http://828f356ef4f8:8888/?token=ee363a2ff78f0866803f5ab1de070f4bd0544054e6efe9df
     or http://127.0.0.1:8888/?token=ee363a2ff78f0866803f5ab1de070f4bd0544054e6efe9df
```

The examples will be available in the directory `work/examples/Notebooks`


