# TrackMate – Example from documentation

Ershov, D., Phan, M.-S., Pylvänäinen, J. W., Rigaud, S. U., Le Blanc, L., Charles-Orszag, A., …  
Tinevez, J.-Y. (2022). TrackMate 7: integrating state-of-the-art segmentation algorithms into tracking pipelines. *Nature Methods, 19*(7), 829–832. doi:[10.1038/s41592-022-01507-1](https://doi.org/10.1038/s41592-022-01507-1)

TrackMate documentation and tutorials:  
[https://imagej.net/plugins/trackmate/](https://imagej.net/plugins/trackmate/)  
TrackMate manual:  
[https://imagej.net/media/plugins/trackmate/trackmate-manual.pdf](https://imagej.net/media/plugins/trackmate/trackmate-manual.pdf)

*The following demo can be accessed here:*
[https://napari.imagej.net/en/latest/examples/trackmate.html](https://napari.imagej.net/en/latest/examples/trackmate.html)

1. Open the `trackmate_example_data.tif`.
2. Run the TrackMate plugin (**Plugins > Tracking > TrackMate**). Select “Next” as we don’t need to make any changes. The settings in this window allow you to crop the original data as needed.

![First Trackmate window](images/trackmate-window-1.png)

3. Use the Laplacian of Gaussian (LoG) detector. The plugin provides various algorithms to help process the image, also including the difference of gaussian and hessian detectors.
4. Enter 17 as the estimated object diameter and 0 as a quality threshold, “Next.”

![Second Trackmate window](images/trackmate-window-2.png)

5. The next page provides a summary. Select “Next.”
6. For Initial Thresholding, verify you see 1496 spots selected, and select “Next.”

![Third Trackmate window](images/trackmate-window-3.png)

7. Select “Next” as we do not need a filter. If a filter was required, we could use the “Plus” button to add a filter and adjust the selection metric.

![Fourth Trackmate window](images/trackmate-window-4.png)

8. Use the “Simple LAP tracker”, then select “Next.” TrackMate also provides a variety of other methods.

![Fifth Trackmate window](images/trackmate-window-5.png)

9. Then we set the parameters for the tracker. The linking max distance will be 8.3 microns, the gap-closing max distance is 5 microns, and the gap-closing max frame gap is 2 micron. Select “Next.”

![Sixth Trackmate window](images/trackmate-window-6.png)

10. A summary page is displayed. You can scroll through the image and see the proposed tracks for each cell. Select “Next.”
11. Select “Next” three more times as we will not filter any of the tracks and do not need to edit the display options.
12. Select “Execute” for the final image, which can be run over all of the frames.

![Final Trackmate settings window, with results](images/trackmate-window-7.png)
