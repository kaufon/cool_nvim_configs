local liveService = {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = true
}
return liveService
