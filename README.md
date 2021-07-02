# Matlab-CNN-Squeezenet
Squeeznet is a special form of CNN with 
small architecture. Smaller CNNs require less communication across servers during distributed training, less 
bandwidth to export a new model from the cloud to an autonomous car and they are more feasible to 
deploy on FPGAs and other hardware with limited memory. 

This example shows how to feed an image to a convolutional neural network and display the activations of 
different layers of the network. Examine the activations and discover which features the network learns by 
comparing areas of activation with the original image (buttercup.jpg). Find out that channels in earlier layers learn simple 
features like colour and edges, while channels in the deeper layers learn complex features like eyes. 
Following this example allows for identification of features helps us understand what the network has learned. 

When the final testing image buttercupSpider.jpg is used in comparison to the orginal buttercup.jpg; 
it can be observed from the activations that both channels 14 and 47 activate on the area where the spider 
is present by lightening the spot. Thus, the channel recognises image with spider. 
