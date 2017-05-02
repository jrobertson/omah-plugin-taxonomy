#!/usr/bin/env ruby

# file: omah-plugin-taxonomy.rb


class PluginException < Exception
end

class OmahPluginTaxonomy

  def initialize(settings: {}, variables: {})
    
    lookupfile = settings[:lookupfile]
    
    unless File.exists? lookupfile then
      raise PluginException, "lookup file %[lookupfile} not found"  
    end
      
    dx = Dynarex.new
    dx.import lookupfile
    @a = dx.all          

  end

  def on_newmessage(h)

    # attempt to match a recipient address or subject keyword with with 1 or more tags

    matched = @a.select do |item| 

      %i(from subject).detect do |x|
        
        val = item.method(x).call
        next if val.empty? 
        
        h[x] =~ Regexp.new(val) 
        
      end

    end    
    
    h[:tags] = matched.inject('') {|r,x| r << x.tags}
    
  end

end
