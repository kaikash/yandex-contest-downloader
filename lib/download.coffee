packageFile = require '../package.json'
program = require 'commander'
Downloader = require './components/downloader.coffee'

program
  .version packageFile.version, '-v, --version'
  .option '-e, --extension [extension]', 'Specify file extension', 'py'
  .option '-u, --username [username]', 'Specify yandex contest username'
  .option '-p, --password [password]', 'Specify yandex contest password'
  .option '-s, --session [session]', 'Specify yandex contest session'
  .option '-i, --id [n]', 'Specify yandex contest number'
  .option '-R, --no-readme', 'Do not create readme files'
  .option '-d, --domain [domain]', 'Yandex contest domain', 'official.contest.yandex.ru'
  .option '-o, --outputDir [dirname]', 'Output dirname'
  .option '-T, --no-tests', 'Do not create tests'
  .parse process.argv

downloader = new Downloader
  username: program.username
  password: program.password
  session: program.session
  extension: program.extension
  contestId: program.id
  readme: program.readme
  tests: program.tests
  domain: program.domain
  outputDir: program.outputDir
do downloader.run