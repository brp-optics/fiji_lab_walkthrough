# Deconvolution

Deconvolution is a method of denoising a microscopy image using information about the optical
setup. In this case, we estimate a point spread function for the deconvolution using the user
input parameters of numerical aperture, resolution, emission wavelength, and refractive index.

A Fiji macro developed by **Ed Evans** is available in the "Scripts" directory of the Google Drive. It is called "decon.groovy".

More background on the algorithm (Richardson-Lucy + Total Variation Regularization):  
[https://doi.org/10.1002/jemt.20294](https://doi.org/10.1002/jemt.20294)

1. Copy-paste the code into the script editor (**File > New > Text Window**, **Ctrl-Shift-N**), or open the `.groovy` file. **Change the script language to Groovy** by going to **Language > Groovy** in the Editor window, then run the script on the selected image.

![Deconvolution macro editor](images/ed-deconv-macro.png)

- A dialog will prompt for the experimental parameters. Enter the known parameters from the experiment
(or for the demo use the default values).

![Deconvolution prompt](images/ed-deconv-prompt.png)

> Example: Try with **Cell Colony** (FIJI Sample) and default parameters to see a demonstration.  
> You'll notice sharper edges and reduced background noise — even though the parameters may not match the real imaging conditions.

![Deconvolution PSF](images/ed-deconv-psf.png)
