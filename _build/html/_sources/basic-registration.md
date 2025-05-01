# Basic Registration 

## Stitching Images

There are multiple ways to stitch images using the **Grid/Collection Stitching** plugin, including with metadata or file position.

1. Open the **Grid/Collection Stitching** plugin. I find the easiest way to find it is to search for it: **Ctrl-L > Grid/Collection**.
   It is also at **Plugins › Stitching › Grid/Collection stitching**.
   In this example, use **Grid: snake by rows** with the order of **Right & Down**.

![Grid stitcher](images/grid-stitcher.png)

2. In the dialogue box, specify the following parameters:

   - Grid size: **`x = 3`, `y = 3`**
   - Tile overlap [%]: `0`  
     (This is a known value — the image we are stitching was part of a larger image. In an experimental context, this may be part of the image acquisition settings.)
   - First file index: `1`
   - Directory: point to the `Leaf_stitch` folder
   - File name: `leaf-{i}.tif`
     - `{i}` specifies where in the filename to iterate through values.
     - If this is written as `{ii}`, there will be an error because the first file is `1`, not `01`.
   - Uncheck the **Compute overlap** box, since the overlap value is known.
   - You may get a warning about no overlap being found. Press 'ok' to bypass it.

![Fused leaf image](images/fused-leaf.png)

3. Also try re-running the plugin with an overlap value of 10%.  
   - Notice how there are errors near the borders of the leaf and on the ruler (especially the faded “9” value), but errors at the center of the leaf may be harder to spot.
   - This is why knowing the expected overlap value is important, as spotting errors in experimental data may be difficult.
   - In many cases, using stitching information from the image metadata is more helpful, because the position information comes from the microscope.
