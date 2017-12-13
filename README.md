# surrogate-pair

Replaces the hexadecimal string under the cursor with the unicode surrogate pair.

## Usage

Load the function with `M-x load-file` and then provide surrogate-pair.el
Move the cursor over the hex code (like in the section below) and type 
`M-x surrogate-pair` to call that function. It should replace the code with
the surrogate pair codes.

## Test cases
  1D552 (&aopf;)
  
  \uD835\uDD52 (&aopf;)
