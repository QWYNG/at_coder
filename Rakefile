# frozen_string_literal: true

require 'fileutils'
PAST_CONTEST_DIR = 'past/'

task :clean_up do
  Dir.glob('*/').each do |dir|
    next if dir == PAST_CONTEST_DIR

    FileUtils.mv(dir, PAST_CONTEST_DIR)
  end
end
