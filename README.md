## MODFLOW models image

This Docker runs a JupyterNotebook with [flopy](https://github.com/modflowpy/flopy) and the MODFLOW models ready to use.

Models supported: MODFLOW 6, MODFLOW-2005, MODFLOW-NWT, MODFLOW-USG, MODFLOW-LGR, MODFLOW-2000, MODPATH 6, MODPATH 7, GSFLOW, VS2DT, MT3DMS, MT3D-USGS, SEAWAT, and SUTRA


### Using Docker

```
$ docker run  -d --rm --name modflow_notebook -v $PWD/notebooks:/home/jovyan/demo -p 8888:8888 mintproject/modflow_models
```
