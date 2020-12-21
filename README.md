# CS573FinalProj
This Docker image will run the Terror Group Classification experiment independent of user machine and OS. 
The image contains Jupyter, python, and all required python data science libraries used in the experiment.

To build the image:
$docker build -t image-name

To create a container:
$docker run -it -p 8888:8888 image-name

Copy and paste the URL returned from the previous command into a browser.
