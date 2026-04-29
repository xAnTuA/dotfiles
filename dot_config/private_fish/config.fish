if status is-interactive
	set SSH_AUTH_SOCK ~/.bitwarden-ssh-agent.sock

	set theme_color_scheme nord

	source ~/.config/fish/abbr.fish
	zoxide init fish | source
end
