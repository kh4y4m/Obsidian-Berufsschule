## Characters

|Character|Legend|Example|Sample Match|
|---|---|---|---|
|\d|Most engines: one digit  <br>from 0 to 9|file_\d\d|file_25|
|\d|.NET, Python 3: one Unicode digit in any script|file_\d\d|file_9੩|
|\w|Most engines: "word character": ASCII letter, digit or underscore|\w-\w\w\w|A-b_1|
|\w|.Python 3: "word character": Unicode letter, ideogram, digit, or underscore|\w-\w\w\w|字-ま_۳|
|\w|.NET: "word character": Unicode letter, ideogram, digit, or connector|\w-\w\w\w|字-ま‿۳|
|\s|Most engines: "whitespace character": space, tab, newline, carriage return, vertical tab|a\sb\sc|a b  <br>c|
|\s|.NET, Python 3, JavaScript: "whitespace character": any Unicode separator|a\sb\sc|a b  <br>c|
|\D|One character that is not a _digit_ as defined by your engine's _\d_|\D\D\D|ABC|
|\W|One character that is not a _word character_ as defined by your engine's _\w_|\W\W\W\W\W|*-+=)|
|\S|One character that is not a _whitespace character_ as defined by your engine's _\s_|\S\S\S\S|Yoyo| 

## Quantifiers

|Quantifier|Legend|Example|Sample Match|
|---|---|---|---|
|+|One or more|Version \w-\w+|Version A-b1_1|
|{3}|Exactly three times|\D{3}|ABC|
|{2,4}|Two to four times|\d{2,4}|156|
|{3,}|Three or more times|\w{3,}|regex_tutorial|
|*|Zero or more times|A*B*C*|AAACC|
|?|Once or none|plurals?|plural|

