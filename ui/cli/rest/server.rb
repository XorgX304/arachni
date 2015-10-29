=begin
    Copyright 2010-2015 Tasos Laskos <tasos.laskos@arachni-scanner.com>

    This file is part of the Arachni Framework project and is subject to
    redistribution and commercial restrictions. Please see the Arachni Framework
    web site for more information on licensing and terms of use.
=end

require_relative 'server/option_parser'

module Arachni

require Options.paths.lib + 'rest/server'
require_relative '../utilities'

module UI::CLI
module Rest

# @author Tasos "Zapotek" Laskos<tasos.laskos@arachni-scanner.com>
class Server

    def initialize
        OptionParser.new.parse

        Arachni::Rest::Server.run!(
            port: Arachni::Options.rpc.server_port,
            bind: Arachni::Options.rpc.server_address
        )
    end

end

end
end
end
