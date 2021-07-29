'The Method Call
<an object>.<method name>(<argument-1>,....,<argument-n>)


'String Methods'
'Text processing involves many different operations on strings. 
'For example, consider the problem of analyzing someone’s writing 
'style. Short sentences containing short words are generally considered 
'more readable than long sentences containing long words. A program 
'to compute a text’s average sentence length and the average word 
'length might provide a rough analysis of style.

'Let’s start with counting the words in a single sentence and 
'finding the average word length. This task requires locating 
'the words in a string. Fortunately, Python includes a set of 
'string operations called methods that make tasks like this 
'one easy. In the next session, we use the string method split 
'to obtain a list of the words contained in an input string. We 
'then print the length of the list, which equals the number of words, 
'and compute and print the average of the lengths of the words in the list.



Some Useful String Methods, With the Variable s Used to Refer to Any String
String Method	                    What it Does
s.center(width)	                    Returns a copy of s centered within the given number of columns.
s.count(sub [, start [, end]])	    Returns the number of non-overlapping occurrences of substring sub in s . Optional arguments start and end are interpreted as in slice notation.
s.endswith(sub)	                    Returns True if s ends with sub or False otherwise.
s.find(sub [, start [, end]])	    Returns the lowest index in s where substring sub is found. Optional arguments start and end are interpreted as in slice notation.
s.isalpha()	                        Returns True if s contains only letters or False otherwise.
s.isdigit()	                        Returns True if s contains only digits or False otherwise.
s.join(sequence)	                Returns a string that is the concatenation of the strings in the sequence. The separator between elements is s .
s.lower()	                        Returns a copy of s converted to lowercase.
s.replace(old, new [, count])	    Returns a copy of s with all occurrences of substring old replaced by new . If the optional argument count is given, only the first count occurrences are replaced.
s.split([sep])	                    Returns a list of the words in s , using sep as the delimiter string. If sep is not specified, any whitespace string is a separator.
s. startswith(sub)	                Returns True if s starts with sub or False otherwise.
s.strip([aString])	                Returns a copy of s with leading and trailing whitespace (tabs, spaces, newlines) removed. If aString is given, remove characters in aString instead.
s.upper()	                        Returns a copy of s converted to uppercase.