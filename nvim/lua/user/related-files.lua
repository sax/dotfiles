local status_ok, telescope = pcall(require, "telescope")
if status_ok then
  telescope.load_extension('related_files')
else
  error("error loading related-files; telescope not found")
end
