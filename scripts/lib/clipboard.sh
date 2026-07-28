#!/usr/bin/env bash

#Library for clipboard history in fuzzel

#Size of the stored clipboard history items range
#Change the second value to modify the limit
keep="${1:-100}"

#Arrays with current history table
#IDS in them are equal
CLIPBOARD_IDS=()
CLIPBOARD_ORIGINALS=()
CLIPBOARD_DISPLAY=()

get_entries() {
	cliphist list
}

format_entry() {
	local text="$1"

	#Remove CR if exists
	text="${text//$'\r'/}"

	#Links without schemes
	if [[ "$text" =~ ^https?:// ]]; then
		printf '%s\n' "${text#*://}"
		return 0
	fi

	#Home directory path into filename
	if [[ "$text" == "$HOME/"* ]]; then
		basename -- "$text"
		return 0
	fi

	#Full path into filename
	if [[ "$text" == /* ]]; then
		basename -- "$text"
		return 0
	fi

	#Common text
	printf '%s\n' "$text"
}

build_table() {
	#Clear arrays for clipboard history
	CLIPBOARD_IDS=()
	CLIPBOARD_ORIGINALS=()
	CLIPBOARD_DISPLAY=()

	while IFS=$'\t' read -r id text; do
		[[ -z "${id:-}" ]] && continue

		local display
		display="$(format_entry "$text")"

		CLIPBOARD_IDS+=("$id")
		CLIPBOARD_ORIGINALS+=("$text")
		CLIPBOARD_DISPLAY+=("$display")
	done < <(get_entries)
}

show_menu() {
	((${#CLIPBOARD_DISPLAY[@]})) || return 1

	printf '%s\n' "${CLIPBOARD_DISPLAY[@]}" | 
		fuzzel --dmenu --prompt "📋Clipboard>"
}

decode_entry() {
	local selected_display="$1"
	local i

	for i in "${!CLIPBOARD_DISPLAY[@]}"; do
		if [[ "${CLIPBOARD_DISPLAY[$i]}" == "$selected_display" ]]; then
			cliphist decode "${CLIPBOARD_IDS[$i]}" | wl-copy
			return 0
		fi
	done

	return 1
}

delete_entry() {
	local selected_display="$1"
	local i

	for i in "${!CLIPBOARD_DISPLAY[@]}"; do
		if [[ "${CLIPBOARD_DISPLAY[$i]}" == "$selected_display" ]]; then
			cliphist delete "${CLIPBOARD_IDS[$i]}" | wl-copy
			return 0
		fi
	done

	return 1
}

clear_history() {
	cliphist wipe
}

prune_history() {
	cliphist list | tail -n "$keep" | cliphist store
}
