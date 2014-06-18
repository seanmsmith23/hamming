require_relative "testing_library"

test_one = "A"
test_two = "A"

def hamming(strand_1, strand_2)
  first = strand_1.split(//)
  second = strand_2.split(//)
  x = 0
  y = 0

  while y < first.count && y < second.count
    if first[y] == second[y]
      x += 0
    else x += 1
    end
    y += 1
  end
  x
end

check("Hamming distance between identical strands",
      hamming("A", "A") == 0)

check("Hamming distance for single nucleotide strand",
      hamming("A", "G") == 1)

check("Hamming distance between small strands",
      hamming("AG", "CT") == 2)

check("Hamming distance between two other small strands",
      hamming("AT", "CT") == 1)

check("Hamming distance in longer strands",
      hamming("GGACG", "GGTCG") == 1)

check("Ignoring extra length in the first strand when it's longer",
      hamming("AAAG", "AAA") == 0)

check("Ignoring extra length in the second strand when it's longer",
      hamming("AAA", "AAAG") == 0)