module FFI
  module PCap
    # A wrapper class for pcap devices opened with open_dead()
    class DeadWrapper < CommonWrapper
      attr_reader :datalink

      def initialize(pcap, opts={}, &block)
        @datalink = opts[:datalink]

        super(pcap, opts, &block)
      end
    end
  end
end
