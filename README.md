# Random-effects-on-rarefaction
Simple demonstration of randomness in rarefaction tools, with example from vegan R package and BCI data.

The fucntion rrarefy(data,sample) from vegan R package allows the user to rarefy a species abundance table (data parameter) by a rarefaction treshold (sample parameter).
Rarefaction works by subsampling species abundance *randomly* so that the total abundance of all species within a sample is equal to "sample" parameter. One common option is to define the sample parameter as the total abundnace of species in the sample with less abundance. Alternatively, another treshold might be decided based on domain knowledge, with the expense of possibly discarding samples from the dataset.

By using this function we are, by necessity, introducing randomness (otherwise, the process would introduce bias), which means that we need to use something like set.seed() for reproduciblity of our code.

This simple script I did uses the BCI data from the vegan package, so that you only need to have the vegan package to run it. Then, by using the same data input and the same sample parameter, I tested if using different set.seed() parameters would give identical (or not) results.
In short, when we use the same set.seed() parameter the results are reproducible, but when we don't they are not.

Note: This might be trivial stuff, I know, but I think that this little detail can easily be forgotten and if so people might get slightly different results after reproducing the code, which might lead to complications.
