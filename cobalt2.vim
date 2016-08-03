

" vim-airline cobalt2 replication
" (https://github.com/g-kanoufi/vim-cobalt2)

let g:airline#themes#cobalt2#palette = {}

let g:airline#themes#cobalt2#palette.accents = {
      \ 'red': [ '#ffffff' , '' , 231 , '' , '' ],
      \ }


let s:N1 = [ '#ffffff' , '#1f7ad8' , 231  , 36 ]
let s:N2 = [ '#ffffff' , '#8cc2fd' , 231 , 29 ]
let s:N3 = [ '#ffffff' , '#204458' , 231  , 23 ]
let g:airline#themes#cobalt2#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#cobalt2#palette.normal_modified = {
      \ 'airline_c': [ '#666d51' , '#fee533' , 231     , 52      , ''     ] ,
      \ }


let s:I1 = [ '#666d51' , '#fee533' , 231 , 106 ]
let s:I2 = [ '#ffffff' , '#8cc2fd' , 231 , 29  ]
let s:I3 = [ '#ffffff' , '#204458' , 231 , 23  ]
let g:airline#themes#cobalt2#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cobalt2#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#8cc2fd' , 255     , 52      , ''     ] ,
      \ }
let g:airline#themes#cobalt2#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#fee533' , s:I1[2] , 106     , ''     ] ,
      \ }


let g:airline#themes#cobalt2#palette.replace = copy(g:airline#themes#cobalt2#palette.insert)
let g:airline#themes#cobalt2#palette.replace.airline_a = [ s:I2[0]   , '#920000' , s:I2[2] , 88     , ''     ]
let g:airline#themes#cobalt2#palette.replace_modified = g:airline#themes#cobalt2#palette.insert_modified

let s:V1 = [ '#ffff9a' , '#ff9d00' , 222 , 208 ]
let s:V2 = [ '#ffffff' , '#8cc2fd' , 231 , 29 ]
let s:V3 = [ '#ffffff' , '#204458' , 231  , 23  ]
let g:airline#themes#cobalt2#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#cobalt2#palette.visual_modified = {
      \ 'airline_c': [ '#666d51' , '#fee533' , 231     , 52      , ''     ] ,
      \ }

let s:IA = [ '#4e4e4e' , '#204458' , 59 , 23 , '' ]
let g:airline#themes#cobalt2#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#cobalt2#palette.inactive_modified = {
      \ 'airline_c': [ '#e20000' , ''        , 166      , ''      , ''     ] ,
      \ }

let g:airline#themes#cobalt2#palette.tabline = {
      \ 'airline_tab':  ['#1780e9', '#1a3548',  231, 29, ''],
      \ 'airline_tabsel':  ['#ffffff', '#46dd3c',  231, 36, ''],
      \ 'airline_tabtype':  ['#ffffff', '#1f7ad8',  231, 36, ''],
      \ 'airline_tabfill':  ['#ffffff', '#204458',  231, 23, ''],
      \ 'airline_tabmod':  ['#ffffff', '#f778c8',  231, 88, ''],
      \ }

let s:WI = [ '#ffffff', '#f778c8', 231, 88 ]
let g:airline#themes#cobalt2#palette.normal.airline_warning = [
     \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
     \ ]

let g:airline#themes#cobalt2#palette.normal_modified.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.insert.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.insert_modified.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.visual.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.visual_modified.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.replace.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning

let g:airline#themes#cobalt2#palette.replace_modified.airline_warning =
    \ g:airline#themes#cobalt2#palette.normal.airline_warning


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#cobalt2#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ffffff' , '#204458' , 231 , 23 , ''     ] ,
      \ [ '#ffffff' , '#1f7ad8' , 231 , 36 , ''     ] ,
      \ [ '#ffffff' , '#973d45' , 231 , 95 , ''     ] )

