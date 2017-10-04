require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

RSpec.describe MemInfo do
  describe '#initialize' do
    it 'should fail if the meminfo file does not exist' do
      expect { MemInfo.new('unknown-file') }.to raise_exception MemInfo::NoProcData
    end

    it 'should fail if the meminfo file has an unexpected unit' do
      expect { MemInfo.new('./spec/fixtures/broken_meminfo') }.to raise_exception MemInfo::NoProcData
    end

    context 'should parse correctly the data' do
      c = MemInfo.new('./spec/fixtures/meminfo')
      expected_values = {
        memtotal: 15990936,
        memfree: 766040,
        buffers: 12,
        cached: 3868012,
        swapcached: 298980,
        swaptotal: 16777212,
        swapfree: 8936328,
      }
      expected_values.each do |attribute, val|
        it attribute.to_s do
          expect(c.send attribute).to eq val
        end
      end
    end
  end

  describe '#memused' do
    it 'should compute the memory used' do
      c = MemInfo.new('./spec/fixtures/meminfo')
      expect(c.memused).to eq 15224896
    end
  end

  describe '#swapused' do
    it 'should compute the swap used' do
      c = MemInfo.new('./spec/fixtures/meminfo')
      expect(c.swapused).to eq 7840884
    end
  end

  describe '#memavailable' do
    it 'should compute the memory available' do
      c = MemInfo.new('./spec/fixtures/meminfo')
      expect(c.memavailable).to eq 4634064
    end
  end
end
