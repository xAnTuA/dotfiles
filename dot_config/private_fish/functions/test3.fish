function test3
	set -l opt_spec n/lines=

	set -a opt_spec "f" "c" "fi"

	argparse --strict-longopts --move-unknown --unknown-arguments=none $opt_spec -- $argv || return

	if set -q _flag_flag1
		echo "flag 1 set to " $_flag_flag1
	end
	if set -q _flag_flag2
		echo "flag 2 set"
	end

	if set -q _flag_flag3
		echo "flag 3 set to " $_flag_flag3
	end
end
