For usage:
irb -r ./number_converter.rb
NumberConverter.new.to_roman(152)
Or:
From root:
./bin/runner (Please make sure it has execute permissions)

For rspec tests:
Run rspec on root folder

==============
===EXAMPLE ===
==============

152 as an example.
The result is initially set to the empty string.
Iterate the keys in ROMAN_NUMBERS hash until we locate a key that 152 is divisible by.
152 is not divisible by 900, so we move to the next key. We keep going until we find that
152 is divisible by 100 one time, so we append a single “C” to the result.
The remainder is 52, so the number variable is updated to 52.
Continuing the iteration, we find 52 is divisible by 50, so “L” is appended to the result.
The number variable to updated to be the remainder of the division, which is 2.
Continuing the iteration, we find 2 is not divisible by 40, so we move to the next key.
The rest of the keys are skipped until the last key, where 2 is found to be divisible by 1 two times, so two “I”s are appended to the result. The result is now the Roman numeral “CLII”.