module Stardust
  module GraphQL
    module Types
      class DSL

        class << self
          def object(type, &block)
            Collector.add_type( type, block, Object)
          end

          def interface(type, &block)
            Collector.add_type( type, block, Interface)
          end

          def input_object(type, &block)
            Collector.add_type( type, block, InputObject )
          end

          def scalar(type, &block)
            Collector.add_type( type, block, Scalar )
          end

          def union(type, &block)
            Collector.add_type( type, block, Union )
          end
        end

      end
    end
  end
end
