#!/bin/bash
#freesurfer_functions.sh

#RECON-ALL FUNCTION (for one subject): use arg1 as subject ID and arg2 as subject's nifti file (ending in .nii)
#navigate to the directory that contains your participant's data
#freesurfer output will be saved under /freesurfer/subjects

function FS_recon () {
	export FREESURFER_HOME=/Applications/freesurfer/7.4.1
    source $FREESURFER_HOME/SetUpFreeSurfer.sh
	recon-all -s ${1} -i ${2} -all
}


#RECON-ALL MULTIPLE SUBJECTS:
#download Homebrew (needed for parallel command) online before using!
#navigate to directory with all of the nifti images
#freesurfer output will be saved under /freesurfer/subjects

function FS_recon_mult () {
	export FREESURFER_HOME=/Applications/freesurfer/7.4.1
    source $FREESURFER_HOME/SetUpFreeSurfer.sh
    ls *.nii | parallel --jobs 8 recon-all -s {.} -i {} -all
}


#EXTRACT MEASURES multiple subjects
#navigate to directory that contains freesurfer outputs (subjects)
#add list of subject IDs after 'subjects', change hemi to rh or lh depending on which side you're analyzing, 'aparc' uses Desikan-Killiany atlas
function extract_cortical_measures () {
	export FREESURFER_HOME=/Applications/freesurfer/7.4.1
    source $FREESURFER_HOME/SetUpFreeSurfer.sh
	aparcstats2table --subjects bert --hemi lh --meas thickness --parc=aparc --tablefile=aparc.txt
}
#output .txt file can be opened using excel 
