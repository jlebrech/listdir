require('lfs')
local find_files
find_files = function(dir, pattern)
  for file in lfs.dir(dir) do
    if lfs.attributes(file, "mode") == "file" then
      if string.find(file, pattern) then
        print("found file, " .. file)
      end
    end
  end
end
return find_files(".", ".moon")
