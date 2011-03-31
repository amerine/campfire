require 'tinder'

module Campfire
  class Runner
    def self.run(args)
      Campfire::Config.load_config
      abort "No Config" if Campfire::Config.config_value('account').blank?
      campfire = Tinder::Campfire.new Campfire::Config.config_value('account'),
        :ssl => true, :token => Campfire::Config.config_value('token')
      room = campfire.find_room_by_name Campfire::Config.config_value('room')
      if args.length > 0
        room.speak "#{args.first}"
      else
        room.speak $stdin.read
      end
    end
  end

  class Config
    def self.config
      @config ||= {}
    end

    def self.config_value(value)
      value = value.to_s
      config[value] || ENV[value]
    end

    def self.load_config
      IO.foreach(File.join(Dir.home, '.campfirerc')) do |conf|
        k,v = conf.split("=")
        config[k.strip]=v.strip
      end rescue Errno::ENOENT
    end
  end
end
