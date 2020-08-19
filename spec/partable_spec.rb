require './partable'

RSpec.describe Partable do
  it "test 1 compositions" do
    expected = [[1]]
    expect(Partable.new(1).parts).to eq(expected)
  end

  it "test 2 compositions" do
        expected = [[2]]
    expect(Partable.new(2).parts).to eq(expected)
  end

  it "test 3 compositions" do
    expected = [[1, 2], [3]]
    expect(Partable.new(3).parts).to eq(expected)
  end

  it "test 6 compositions" do
        expected =[[1, 2, 3], [1, 5], [2, 4], [6]]

    expect(Partable.new(6).parts).to eq(expected)
  end

  it "test 10 compositions" do
    expected = [[1, 2, 3, 4], [1, 2, 7], [1, 3, 6],
                [1, 4, 5], [1, 9], [2, 3, 5], [2, 8],
                [3, 7], [4, 6], [10]]
    expect(Partable.new(10).parts).to eq(expected)
  end
end