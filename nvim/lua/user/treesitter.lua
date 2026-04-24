local status_ok, arborist = pcall(require, "arborist")
if not status_ok then
  return
end

arborist.setup({
  update_cadence = "weekly",
  install_popular = false,
  ensure_installed = { 'rust', 'elixir' },
})
