echo Preparando Ambiente: $(date)

brew install node
brew install npm
brew install carthage
npm install -g appium
npm install -g appium-doctor
git config core.hooksPath .githooks;

find .git/hooks -type l -exec rm {} \;
find .githooks -type f -exec ln -sf ../../{} .git/hooks/ \;

brew install imagemagick@6 && brew link imagemagick@6 --force
brew install tesseract
brew install tesseract --all-languages

bundle install 

appium-doctor 

echo Fim da execução: $(date)

