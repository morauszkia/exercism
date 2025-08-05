module ProteinTranslation
  PROTEINS = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }
  
  def self.proteins(strand : String) : Array(String)
    codon = strand[0, 3]
    if strand != "" && !PROTEINS.has_key?(codon)
      raise ArgumentError.new("Invalid codon")
    end

    if strand == "" || PROTEINS[codon] == "STOP"
      [] of String
    else
      [PROTEINS[codon]] + proteins(strand[3..-1])
    end
  end
end
