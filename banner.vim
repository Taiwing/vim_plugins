function! s:write_banner(banner_title)
	"TODO: if banwidth is not set, set the default to 80
	let l:banlen = 80
	let l:titlelen = strlen(a:banner_title) + 2
	let l:leftpad = (l:banlen - l:titlelen) / 2
	let l:rightpad = l:banlen - l:titlelen - l:leftpad

	if l:titlelen > l:banlen
		echo "Error: string too long"
		return 1
	endif
	
	let l:banner = repeat('#', l:leftpad) . ' ' .  a:banner_title . ' ' . repeat('#', l:rightpad)
	call append(line('.'), l:banner)
	return 0
endfunction

command! -nargs=1 Wbanner call s:write_banner(<f-args>)
