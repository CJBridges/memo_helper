require 'memo_helper'

module MemoHelperTest
  class TargetClass
    extend MemoHelper

    memo(:hardcoded) { 3 }
    memo(:using_instance_method) { instance_method }

    def instance_method
      12
    end
  end
end

RSpec.describe MemoHelper do
  let(:target_class) { MemoHelperTest::TargetClass }

  it 'returns the proper value for a hardcoded block' do
    expect(target_class.new.hardcoded).to eq(3)
  end

  it 'returns the proper value when instance methods are used in the block' do
    expect(target_class.new.instance_method).to eq(12)
  end
end
