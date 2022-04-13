desc "Run migration scripts in db/migrate"

Rake::Task["db:structure:dump"].clear

namespace :db do
  namespace :fixtures do
    # Sourced from https://raw.githubusercontent.com/thams/db_fixtures_dump
    # Original from http://snippets.dzone.com/posts/show/4468 by MichaelBoutros
    #
    # Optimized version which uses to_yaml for content creation and checks
    # that models are ActiveRecord::Base models before trying to fetch
    # them from database.

    # Then forked from https://gist.github.com/iiska/1527911
    #
    # fixed obsolete use of RAILS_ROOT, glob
    # allow to specify output directory by FIXTURES_PATH

    desc 'Dumps all models into fixtures.'
    task :dump => :environment do
      models = Dir.glob(Rails.root + 'app/models/**.rb').map do |s|
        Pathname.new(s).basename.to_s.gsub(/\.rb$/,'').camelize
      end

      begin
        active_storage_classes = ['ActiveStorage::Attachment', 'ActiveStorage::Blob']
        active_storage_classes.each do |klass|
          klass.constantize
          models << klass
        end
      rescue NameError
        puts 'ActiveStorage disabled'
      end

      # specify FIXTURES_PATH to test/fixtures if you do test:unit
      dump_dir = ENV['FIXTURES_PATH'] || "test/fixtures/"

      excludes = YAML.load_file(File.join(Rails.root, 'config', 'excluded_fixtures.yml'))

      puts "Found models: " + models.join(', ')
      puts "Excluding: " + excludes.join(', ')
      puts "Dumping to: " + dump_dir

      models.each do |m|
        unless excludes.include?(m)
          model = m.constantize
          next unless model.ancestors.include?(ActiveRecord::Base)

          ids = model.column_names.select{ |k| k.ends_with?('_id') }.sort

          entries = if model.column_names.include?('id')
            model.unscoped.order(:id).all
          elsif ids.any?
            model.unscoped.order(ids).all
          else
            model.unscoped.all
          end

          puts "Dumping model: #{m} (#{entries.length} entries)"

          model_file = File.join(Rails.root, dump_dir, model.table_name + '.yml')
          output = {}

          entries.each do |a|
            attrs = Hash[a.attributes.sort]
            attrs.delete_if{ |k,v| v.nil? }

            id = if attrs.include?('id')
              [a.id]
            elsif ids.any?
              attrs.slice(*ids).values
            else
              [0]
            end

            attrs.each do |key, value|
              if value.is_a? ActiveSupport::TimeWithZone
                # Time.at(id.compact.inject(:+) * 100000).utc
                attrs[key] = value.utc
              elsif value.is_a? ActiveSupport::HashWithIndifferentAccess
                attrs[key] = value.to_json
              end
            end

            output["#{m}_#{id.join('_')}"] = attrs
          end

          file = File.open(model_file, 'w')
          file << output.to_yaml
          file.close
        end
      end
    end
  end
end