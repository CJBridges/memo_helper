require 'memoizer'

module MemoizerTest
  class TargetClass
    extend Memoizer

    memo(:hardcoded) { 3 }
    memo(:using_instance_method) { instance_method }

    def instance_method
      12
    end
  end
end

RSpec.describe Memoizer do
  let(:target_class) { MemoizerTest::TargetClass }

  it 'returns the proper value for a hardcoded block' do
    expect(target_class.new.hardcoded).to eq(3)
  end

  it 'returns the proper value when instance methods are used in the block' do
    expect(target_class.new.instance_method).to eq(12)
  end
end
