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
# Function: p6df::modules::p6python::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::p6python::init() {
  local _module="$1"
  local dir="$2"

  p6_python_init "$dir"

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

######################################################################
#<
#
# Function: p6_python_path_if(dir)
#
#  Args:
#	dir -
#
#  Environment:	 PYTHONPATH
#>
######################################################################
p6_python_path_if() {
  local dir="$1"

  if p6_dir_exists "$dir"; then
    if p6_string_blank "$PYTHONPATH"; then
      p6_env_export PYTHONPATH "$dir"
    else
      p6_env_export PYTHONPATH "$dir:$PYTHONPATH"
    fi
  fi

  p6_return_void
}
