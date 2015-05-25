shell = require 'shell'

module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'toolbar-basic'

    @toolBar.addButton
      icon: 'file-code'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: ''

    @toolBar.addButton
      icon: 'file-directory'
      callback: 'application:open-file'
      tooltip: 'Open...'
      iconset: ''

    @toolBar.addButton
      icon: 'chevron-right'
      callback: 'pane:split-right'
      tooltip: 'Split Right'
      iconset: ''

    @toolBar.addButton
      icon: 'chevron-down'
      callback: 'pane:split-down'
      tooltip: 'Split Down'
      iconset: ''

    @toolBar.addButton
      icon: 'mirror'
      callback: 'tree-view:toggle'
      tooltip: 'Toggle Treeview'
      iconset: ''

    @toolBar.addButton
      icon: 'markdown'
      callback: 'markdown-preview:toggle'
      tooltip: 'Markdown Preview'
      iconset: ''

    @toolBar.addButton
      icon: 'three-bars'
      callback: 'command-palette:toggle'
      tooltip: 'Command Palette'
      iconset: ''

    @toolBar.addButton
      icon: 'gear'
      callback: 'settings-view:open'
      tooltip: 'Settings'
      iconset: ''

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'mark-github'
      callback: (url) ->
                shell.openExternal "https://github.com/login"
      tooltip: 'GitHub Login'
      iconset: ''

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'x'
      callback: 'tool-bar:toggle'
      tooltip: 'Close Tool-Bar'
      iconset: ''
