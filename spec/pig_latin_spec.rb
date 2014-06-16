require 'spec_helper'

describe PigLatin do
  it "is a Module" do

    expect(PigLatin).to be_a(Module)
  end
end

describe ".translate" do
  # it "takes a str as an argument" do
  #   glove = PigLatin.translate("glove")


  #   expect(glove).to eq("glove")
  # end

  it "correctly translates words that begin with consonants" do
    battle = PigLatin.translate("battle")
    glove = PigLatin.translate("glove")

    # binding.pry

    expect(battle).to eq("attlebay")
    expect(glove).to eq("oveglay")
  end

  it "correctly translates words that begin with vowels" do
    egg = PigLatin.translate("apple")
    # binding.pry

    expect(egg).to eq("appleway")
  end

  it "correctly translates words that begin with y" do
    # binding.pry
    yellow = PigLatin.translate("yellow")


    expect(yellow).to eq("ellowyay")
  end

  it "correctly translates words that contain only y" do
    rhythm = PigLatin.translate("rhythm")
    my = PigLatin.translate("my")

    expect(rhythm).to eq("ythmrhay")
    expect(my).to eq("ymay")
  end
end
