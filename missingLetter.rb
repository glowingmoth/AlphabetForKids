
# This returns the Missing Letter word

def missing(m_letter)
    # made into an array
    arry_m_letter = m_letter.split("")

    # index range
    num = arry_m_letter.count 
    num -= 1

    # the random index number for removing a letter
    fn = rand(0..num)

    # returns the letter at the random index and puts in m_l
    m_l = arry_m_letter.at(fn)

    # deletes the letter at the random index
    arry_m_letter.delete_at(fn)

    # replace the deleted letter with an empty space
    arry_m_letter.insert(fn,"_")

    # convert back into a string
    m_letter = arry_m_letter.join("")
    m_letter.capitalize
    return(m_letter)


puts missing("Elephant")
sleep(0.5)
end

