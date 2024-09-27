.PHONY: all Pint Larastan git husky commitlint
# Laravel PintとLarastanによるformatterとlinterの初期設定
all: Pint Larastan git husky commitlint

Pint: # no set up

Larastan:
	composer require --dev "larastan/larastan:^2.0"
	touch phpstan.neon
# phpstan.neonは以下の公式GitHubを参照
# https://github.com/larastan/larastan

git:
	git init

husky:
	npm install --save-dev husky
	npx husky init
# .husky/pre-commitに実行したいformatter,linterのコマンドを書く。

commitlint:
	npm install --save-dev @commitlint/{cli,config-conventional}
	echo "export default { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
	echo "npx --no -- commitlint --edit \$$1" > .husky/commit-msg
