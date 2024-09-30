# -*- coding: utf-8 -*-

import empro.toolkit.adv as adv

def main():
	path=r"C:/work/ads/2017/example_modification/cellular_pamp_wrk"
	lib=r"cellular_pamp_lib"
	subst=r"cellular_pamp_lib/tech.subst"
	substlib=r"cellular_pamp_lib"
	substname=r"tech"
	cell=r"pamp"
	view=r"layout"
	libS3D=r"simulation/cellular_pamp_lib/pamp/_3%D%Viewer/proj_libS3D.xml"
	varDictionary={}
	exprDictionary={}
	hpeesof_dir=r"C:\hped\builds\sr\devXXX\rcstable\debug\prod"

	adv.loadDesign(path=path, lib=lib, subst=subst, substlib=substlib, substname=substname, cell=cell, view=view, libS3D=libS3D, var_dict=varDictionary, expr_dict=exprDictionary, hpeesof_dir=hpeesof_dir)
