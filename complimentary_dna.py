# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

def DNA_strand(dna):
    comp = ''
    dna = list(dna)
    for x in dna:
        if x == 'A':
            comp += 'T'
        elif x == 'T':
            comp += 'A'
        elif x == 'C':
            comp += 'G'
        else :
            comp += 'C'
    return comp
