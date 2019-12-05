wget -O part1.json https://api.github.com/user/17045522/repos?per_page=100&page=1
wget -O part2.json https://api.github.com/user/17045522/repos?per_page=100&page=2
wget -O part3.json https://api.github.com/user/17045522/repos?per_page=100&page=3
jq -s . part*.json >all_repos.json

fx all_repos.json 'x=>x.flat().filter(e=>!e.archived).map(e=>e.name).sort((a,b)=>a>b?1:-1)' >repo_names.json
