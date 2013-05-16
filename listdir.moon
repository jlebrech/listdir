require 'lfs'

find_files = (dir, pattern) ->
  for file in lfs.dir(dir) do
    if lfs.attributes(file,"mode") == "file"
      if string.find(file, pattern)
        print "found file, " .. file

find_files ".", ".moon"
