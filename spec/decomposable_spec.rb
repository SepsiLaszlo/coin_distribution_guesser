require './decomposable'

RSpec.describe Decomposable do
  it "test 1 compositions" do
    expected = [1]
    expect(Decomposable.new(1).compositions).to eq(expected)
  end

  it "test 2 compositions" do
        expected = [2]
    expect(Decomposable.new(2).compositions).to eq(expected)
  end

  it "test 3 compositions" do
    expected = [[1, 2], [3]]
    expect(Decomposable.new(3).compositions).to eq(expected)
  end

  it "test 6 compositions" do
        expected =[[1, 2, 3], [1, 5], [2, 4], [6]]

    expect(Decomposable.new(6).compositions).to eq(expected)
  end

  it "test 10 compositions" do
    expected = [[1, 2, 3, 4], [1, 2, 7], [1, 3, 6],
                [1, 4, 5], [1, 9], [2, 3, 5], [2, 8],
                [3, 7], [4, 6], [10]]
    expect(Decomposable.new(10).compositions).to eq(expected)
  end
end