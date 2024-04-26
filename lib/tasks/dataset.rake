namespace :dataset do
  desc 'it-life-hackのテキストファイルからItemを作成する'
  task create_items_from_txt: :environment do |_task, _args|
    Dir.glob('./lib/tasks/text/it-life-hack/it-life-hack-*.txt').each do |file_path|
      File.open(file_path, 'r') do
        content = _1.read.split("\n")
        Item.create!(url: content[0], date: content[1], body: content[2..].join)
      end
    end
  end
end
