# surrogate-pair

Replaces the hexadecimal string under the cursor with the unicode surrogate pair.

## Usage

Load the function with `M-x load-file` and then provide the `surrogate-pair.el`
source code to Emacs to load it.

Move the cursor over the hex code (like in the section below) and type 
`M-x surrogate-pair` to call that function. 

This should replace the code with the surrogate pair codes.

## Test cases
  1D552 (&aopf;)
  
  \uD835\uDD52 (&aopf;)


## Acknowledgements

I used this example as starting point:

  http://ergoemacs.org/emacs/elisp_converting_hex_decimal.html
  
The idea for this helper came, when I had to calculate a lot of
surrogate pairs, first using the online calculator from this site

  http://www.russellcottrell.com/greek/utilities/SurrogatePairCalculator.htm#info
  
and later the information provided there to implement this helper.
