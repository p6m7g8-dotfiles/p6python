# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::p6python::deps()
#
#>
######################################################################
p6df::modules::p6python::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

######################################################################
#<
#
# Function: p6df::modules::p6python::init()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::p6python::init() {

  p6_python_init $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6python

  p6_return_void
}

######################################################################
#<
#
# Function: p6_python_init(dir)
#
#  Args:
#	dir -
#
#>
######################################################################
p6_python_init() {
  local dir="$1"

  p6_path_if "$dir/bin"
  p6_python_path_if "$dir/lib"

  p6_return_void
}
