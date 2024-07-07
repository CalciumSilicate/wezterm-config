local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'ssh', 'arch@as.calsil.top', '-p', '22001' }
   options.launch_menu = {
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      {
         label = 'Academic Sanctum',
         args = { 'ssh', 'arch@as.calsil.top', '-p', '22001' },
      },
      {
         label = 'Academic Sanctum CS',
         args = { 'ssh', 'arch@as.calsil.top', '-p', '22010' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options
