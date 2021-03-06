# Class: pupmod::params
#
# A set of defaults for the 'pupmod' namespace
#
# $java_max_memory
#   should not exceed 12G (SIMP-1128)
#
class pupmod::params {
  if ($::memorysize_mb * 0.8) >= 12000 {
    $java_max_memory = '12g'
  }
  else {
    $java_max_memory = '80%'
  }
}
