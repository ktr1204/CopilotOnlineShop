# Django 仮想環境の起動
cd C:\Users\kotar\GithubCopilotTrial
Write-Host "Activating Django virtual environment..."
.\venv\Scripts\activate

# Django マイグレーション
cd C:\Users\kotar\GithubCopilotTrial\backend
Write-Host "Running Django migrations..."
python manage.py migrate

# Django サーバーの起動
Write-Host "Starting Django server..."
Start-Process powershell -ArgumentList "cd C:\Users\kotar\GithubCopilotTrial\backend; python manage.py runserver"

# React 依存関係のインストール
cd C:\Users\kotar\GithubCopilotTrial\frontend
Write-Host "Installing React dependencies..."
npm install

# React サーバーの起動
Write-Host "Starting React server..."
Start-Process powershell -ArgumentList "cd C:\Users\kotar\GithubCopilotTrial\frontend; npm start"

Write-Host "All processes started successfully."
