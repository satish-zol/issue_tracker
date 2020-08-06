class Issue < ApplicationRecord
	scope :summary, lambda { |summary|
    return all unless summary.present?
    where(summary: summary)
  }

  scope :reporter, lambda { |reporter|
    return all unless reporter.present?
    where(reporter: reporter)
  }

  scope :assignee, lambda { |assignee|
    return all unless assignee.present?
    where(assignee: assignee)
  }

	def self.query_db(params)
		self.summary(params[:summary]).reporter(params[:reporter]).assignee(params[:assignee])
	end
end
