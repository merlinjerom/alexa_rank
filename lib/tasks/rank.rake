namespace :rank do
  desc "TODO"
  task get_rank: :environment do
    @domain = Domain.all
    @domain.each do |domain|
      doc = Nokogiri::HTML(open("http://www.alexa.com/siteinfo/"+domain.name))
      rank = doc.css('.metrics-data')[0].text.gsub(/[^\d]/, '')
      ranking = Ranking.new(domain_id: domain.id, rank: rank )
      ranking.save
    end
  end
end
