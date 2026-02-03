resource "github_repository" "repository" {
  name        = "reference-documentation"
  description = "Showcase of modern documentation tooling"
  visibility  = "public"
}

output "repository_url" {
  description = "The HTTP URL of the repository"
  value       = github_repository.repository.html_url
  sensitive   = false
}
