# runnning-freesurfer
Utilities file with a set of functions for running the 'recon-all' command and extracting various measurement from a single participants MRI or whole dataset of MRIs.

1. **FS_recon():** Before calling this function, navigate to the directory that holds the participants' MRI files. When calling this function from the sourced utilities file, add the subject ID and file name of their first MRI image as the two command-line arguments. Output of the Freesurfer reconstructions will be in the /freesurfer/subjects folder.
   
2. **FS_recon_mult():** Download Homebrew in order for the 'parallel' command to work. Before calling this function navigate to the directory that holds the participants' MRI files. Change the file ending (default is .nii) beside the 'ls' command to match your MRI files. Output of the Freesurfer reconstructions will be in the /freesurfer/subjects folder.
   
3. **extract_cortical_measures:** Before calling this function, navigate to the directory that holds the participants' MRI files. Add your list of subject IDs to the 'subjects' tag within the function code. Hemisphere (rh or lh) and measurement (thickness or volume) can be changed to match your analysis needs.
