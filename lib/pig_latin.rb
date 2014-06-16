require "pig_latin/version"

module PigLatin

  def self.translate(str)

    # starts with y
    if str[/\Ay/] != nil
      str[0] = ""
      return str + "yay"
    # no vowels, has y
    elsif str[/[aeiou]/] == nil && str[/y/] != nil
      str[/y.*/] + str[/^[^y]*/] + "ay"
    # begins with a vowel
    elsif str[/^[aeiou]/] != nil
      str + "way"
    # begins with a consonant
    elsif str[/^[b-df-hj-np-tv-z]*/] != nil
      first_chars = str[/^[b-df-hj-np-tv-z]*/]
      num_chars = first_chars.length
      str[num_chars..-1] + first_chars + "ay"
    end
  end
end
