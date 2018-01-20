# Hugo template Static Website for portfolio
https://www.yoolbinum.me/

## Automatic Deployment Pipeline

1. Git to push my project files to GitHub.
2. Travs CI sets up a task that runs every time I make change or add a file to my project.
3. This will build the site files using Hugo and then push the contents of the public folder to Amazon S3.
4. Amazon S3 will store the site files and act as a web server too.
5. Amazon CloudFront will replicate and distribute my site to multiple regions so it loads as fast as possible for my visitors.
