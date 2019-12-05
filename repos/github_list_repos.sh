wget -O repos.json https://api.github.com/users/Artsdatabanken/repos?per_page=150
fx repos.json 'x=>x.map(e=>e.name)' >repo_names.json
