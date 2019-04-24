require 'order'

describe Order do

  it 'returns a word' do
    expect(subject.order('word1')).to eq 'word1'
  end

  it 'returns a word only if it has a 1-9 number in it' do
    expect(subject.order('word word1')).to eq 'word1'
  end

  it 'orders 2 words' do
    expect(subject.order('word2 word1')).to eq 'word1 word2'
  end

  it 'orders 3 words' do
    expect(subject.order('word3 word2 word1')).to eq 'word1 word2 word3'
  end

  it 'feature test' do
    expect(subject.order('is2 Thi1s T4est 3a')).to eq 'Thi1s is2 3a T4est'
  end

  it 'feature test 2' do
    expect(subject.order('4of Fo1r pe6ople g3ood th5e the2')).to eq 'Fo1r the2 g3ood 4of th5e pe6ople'
  end
end
