# https://docs.anaconda.com/anaconda/user-guide/tasks/using-r-language/
# https://anaconda.org/r/r-base

# Create environment
conda create --name edge

# Activate environment
conda activate edge # or
source activate edge

# Install R
conda install -n edge r-essentials r-base

# how to remove an enivroment and everything in it?
conda remove --name edge --all

# list all the conda environments
conda env list

# install r-packages via conda (r-libraryname)
conda install r-MendelianRandomization

# Force install
R CMD INSTALL MendelianRandomization_0.5.0.tar.gz


module load anaconda3/personal
source activate skylab

# list all the variables
conda list

# current version of conda
conda --version # conda 4.10.0

# update conda to most recent version
# conda update conda

# Add conda-forge as the highest priority channel
#conda config --add channels conda-forge

# Activate strict channel priority
#conda config --set channel_priority strict

# Create R environment
conda create -n skylab r r-base

# install packages
conda install -c conda-forge r-irkernel
R
.libPaths(R.home("/rds/general/user/ll3515/home/anaconda3/envs/skylab/lib/R/library"))

# From jupyter terminal
IRkernel::installspec(user = TRUE)
# Installed kernelspec ir in /rds/general/user/ll3515/home/.local/share/jupyter/kernels/ir

conda install -c bioconda bioconductor-deseq2


# Exporting the environment.yml file
module load anaconda3/personal
source activate skylab

conda env export > environment.yml

#Create the environment from the environment.yml file:
conda env create -f environment.yml

conda env list

module load anaconda3/personal
source activate skylab
