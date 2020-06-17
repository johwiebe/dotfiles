# Gurobi vars
export GUROBI_HOME="/opt/gurobi801/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE=/home/johannes/.licenses/gurobi.lic
# added by Miniconda3 installer
export PATH="/home/johannes/miniconda3/bin:$PATH"
# CPLEX
export LD_LIBRARY_PATH="/opt/ibm/ILOG/CPLEX_Studio1271/cplex/bin/x86-64_linux":$LD_LIBRARY_PATH
