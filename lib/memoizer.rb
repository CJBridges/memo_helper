require 'memoizer/version'

module Memoizer
  def memo(method_name, &block)
    self.class_eval do
      define_method "unmemoized_#{method_name}", block

      define_method method_name do
        inst_var = "@#{method_name}"
        return instance_variable_get(inst_var) if instance_variable_defined?(inst_var)
        instance_variable_set(inst_var, send("unmemoized_#{method_name}"))
      end
    end
  end
end
