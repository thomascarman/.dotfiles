local pid = vim.fn.getpid()
local omisharp_bin = "/home/carmant/.local/share/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp.dll"

return {
    cmd = { omisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
    omnisharp = {
        useModernNet = false,
        monoPath = "/usr/bin/mono"
    }
  }
