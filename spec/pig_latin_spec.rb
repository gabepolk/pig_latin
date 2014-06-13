require 'spec_helper'

describe PigLatin do
  it "is a Module" do
    expect(PigLatin).to be_a(Module)
  end
end

describe ".translate" do
  it "takes a str as an argument" do
    glove = PigLatin.translate("glove")

    expect(glove).to eq("glove")
  end


  it "correctly translates words that begin with consonants" do
    battle = PigLatin.translate("battle")
    glove = PigLatin.translate("glove")

    expect(battle).to eq("attlebay")
    expect(glove).to eq("oveglay")
  end

  it "correctly translates words that begin with vowels" do
    egg = PigLatin.translate("eggway")

    expect(egg).to eq("appleway")
  end

  it "correctly translates words that begin with y/contain y" do
    yellow = PigLatin.translate("yellow")
    rhythm = PigLatin.translate("rhythm")

    expect(yellow).to eq("ellowyay")
    expect(rhythm).to eq("ythmrhay")
  end
end
