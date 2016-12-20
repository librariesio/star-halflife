class Star < ApplicationRecord
  def self.download_for_repo(full_name)
    client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'], auto_paginate: true)
    client.stargazers(full_name, accept: 'application/vnd.github.v3.star+json').each do |star|
      Star.find_or_create_by({
        repository: full_name,
        starred_at: star.starred_at,
        user:       star.user.login
        })
    end
  end
end
