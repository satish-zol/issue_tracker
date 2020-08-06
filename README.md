# issue_tracker
Issue tracker sample code

# Required query parameters for paginated search result 
  default page size = 50
# list of query parameters
  summary
  reporter
  assignee
  page_size
  page
  sort_order

# url endpoint:
  api/v1/issues?page_size=10&page=1&sort_order=DESC&summary="any string"&reporter="username"&assignee="username"
