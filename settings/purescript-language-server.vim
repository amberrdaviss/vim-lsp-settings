augroup vim_lsp_settings_purescript_language_server
  au!
  LspRegisterServer {
      \ 'name': 'purescript-language-server',
      \ 'cmd': {server_info->lsp_settings#get('purescript-language-server', 'cmd', [lsp_settings#exec_path('purescript-language-server'), '--stdio'])},
      \ 'root_uri':{server_info->lsp_settings#get('purescript-language-server', 'root_uri', lsp_settings#root_uri('purescript-language-server'))},
      \ 'initialization_options': lsp_settings#get('purescript-language-server', 'initialization_options', {'diagnostics': 'true'}),
      \ 'allowlist': lsp_settings#get('purescript-language-server', 'allowlist', ['purescript']),
      \ 'blocklist': lsp_settings#get('purescript-language-server', 'blocklist', []),
      \ 'config': lsp_settings#get('purescript-language-server', 'config', lsp_settings#server_config('purescript-language-server')),
      \ 'workspace_config': lsp_settings#get('purescript-language-server', 'workspace_config', {
          \'addSpagoSources': v:true,
          \'codegenTargets': [ 'corefn' ],
          \'buildCommand': 'spago build --purs-args --json-errors',
    \ }),
      \ 'semantic_highlight': lsp_settings#get('purescript-language-server', 'semantic_highlight', {}),
      \ }
augroup END
