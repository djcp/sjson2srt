module Sjson2srt
  class Converter

    def initialize(content)
      @json = JSON.parse(content)
    end

    def convert
      output = []
      json['text'].each_with_index do |line, i|
        start_time = json['start'][i]
        end_time = json['end'][i]

        output << i + 1
        output << "#{format_time(start_time)} --> #{format_time(end_time)}"
        if line.length > 0
          output << "#{line}\n"
        else
          output << ''
        end
      end

      output.join("\n")
    end

    private

    def format_time(raw_milliseconds)
      milliseconds = raw_milliseconds % 1000
      zero_padded_milliseconds = sprintf('%03d', (milliseconds % 1000))
      seconds = ((raw_milliseconds - milliseconds) / 1000)
      Time.at(seconds).gmtime.strftime('%R:%S') + ",#{zero_padded_milliseconds}"
    end

    attr_reader :json
  end
end
