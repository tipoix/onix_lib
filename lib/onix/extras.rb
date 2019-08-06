module Onix
  class Logger
    NONE = 0
    ERROR = 1
    WARN = 2
    LOG = 3
    INFO = 4
    DEBUG = 5

    @@log_level = INFO
    cattr_accessor :log_level

    def self.error(message = nil, &block)
      return if @@log_level < ERROR
      message = block.call if block_given?
      message message.to_s, :red
    end

    def self.warn(message = nil, &block)
      return if @@log_level < WARN
      message = block.call if block_given?
      message message.to_s, :yellow
    end

    def self.log(message = nil, &block)
      return if @@log_level < LOG
      message = block.call if block_given?
      message message.to_s, :white
    end

    def self.info(message = nil, &block)
      return if @@log_level < INFO
      message = block.call if block_given?
      message message.to_s, :cyan
    end

    def self.debug(message = nil, &block)
      return if @@log_level < DEBUG
      message = block.call if block_given?
      message message.to_s, :magenta
    end

    def self.message(message, color)
      puts "[#{Time.now}] #{ message.colorize(color) }"
    end
  end
end

class FoundNode
  @@names = {}

  def self.add(name, path)
    @@names[name] ||= { count: 0, paths: {} }
    @@names[name][:count] += 1
    @@names[name][:paths][path] ||= 0
    @@names[name][:paths][path] += 1
  end

  def self.pp
    total = 0
    Logger.log "# #{ @@names.size } found nodes"
    @@names.each do |name, values|
      Logger.log "# - #{ name } (#{values[:count]})"
      values[:paths].each do |path, count|
        Logger.log "#   => #{ path } (#{count})"
      end
      total += values[:count]
    end
    Logger.log "# #{ total } nodes treated"
  end
end

class MissingNode
  @@names = {}

  def self.add(name, path)
    @@names[name] ||= { count: 0, paths: {} }
    @@names[name][:count] += 1
    @@names[name][:paths][path] ||= 0
    @@names[name][:paths][path] += 1
  end

  def self.pp
    total = 0
    Logger.error "# #{ @@names.size } missing nodes"
    @@names.each do |name, values|
      Logger.error "# - #{ name } (#{values[:count]})"
      values[:paths].each do |path, count|
        Logger.error "#   => #{ path } (#{count})"
      end
      total += values[:count]
    end
    Logger.error "# #{ total } nodes ignored"
  end
end
