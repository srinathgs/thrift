#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift/protocol'

module SpecNamespace
    class Hello
      include Thrift::Struct
      attr_accessor :greeting
      FIELDS = {
        1 => {:type => Thrift::Types::STRING, :name => 'greeting', :default => 'hello world'}
      }
    end

    class Foo
      include Thrift::Struct
      attr_accessor :simple, :words, :hello, :ints, :complex, :shorts
      FIELDS = {
        1 => {:type => Thrift::Types::I32, :name => 'simple', :default => 53},
        2 => {:type => Thrift::Types::STRING, :name => 'words', :default => 'words'},
        3 => {:type => Thrift::Types::STRUCT, :name => 'hello', :default => Hello.new({
          'greeting' => 'hello, world!',
        }), :class => Hello},
        4 => {:type => Thrift::Types::LIST, :name => 'ints', :default => [
          1,
          2,
          2,
          3,
        ], :element => {:type => Thrift::Types::I32}},
        5 => {:type => Thrift::Types::MAP, :name => 'complex', :key => {:type => Thrift::Types::I32}, :value => {:type => Thrift::Types::MAP, :key => {:type => Thrift::Types::STRING}, :value => {:type => Thrift::Types::DOUBLE}}},
        6 => {:type => Thrift::Types::SET, :name => 'shorts', :default => Set.new([          5,
          17,
          239,
        ]), :element => {:type => Thrift::Types::I16}}
      }
    end

    class BoolStruct
      include Thrift::Struct
      attr_accessor :yesno
      FIELDS = {
        1 => {:type => Thrift::Types::BOOL, :name => 'yesno', :default => true}
      }
    end

  end