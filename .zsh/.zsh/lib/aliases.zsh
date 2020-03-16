alias la='ls -lah'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gdn='git diff --name-only'
alias gp='git push origin master'
alias gl='git log'
alias ll='ls -la'
alias lh='ls -lah'
alias gpom='git pull origin master'
alias gppom='git pull origin master && git push origin master'
alias gpof='git pull origin families'
alias gppof='git pull origin families && git push origin families'
alias gpos='git pull origin staging'
alias gppos='git pull origin staging && git push origin staging'
alias ...='cd ../..'
alias bi_kafka_one_two="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@test-kafka-one.krd.wooga.com deploy@test-kafka-two.krd.wooga.com'"
alias bi_kafka="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@test-kafka-one.krd.wooga.com deploy@test-kafka-two.krd.wooga.com deploy@test-kafka-three.krd.wooga.com deploy@test-kafka-four.krd.wooga.com deploy@test-kafka-five.krd.wooga.com'"
alias bi_producer="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@144.76.234.130 deploy@144.76.234.135'"
alias bi_consumer="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@144.76.234.132 deploy@144.76.234.138'"
alias bi_2xconsumer="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@144.76.234.132 deploy@144.76.234.138 deploy@144.76.234.132 deploy@144.76.234.138'"
alias bi_4xproducer="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@144.76.234.130 deploy@144.76.234.135 deploy@144.76.234.130 deploy@144.76.234.135 deploy@144.76.234.130 deploy@144.76.234.135 deploy@144.76.234.130 deploy@144.76.234.135'"
alias bi_2xproducer="tmux new 'exec ~/.zsh/lib/cluster.zsh deploy@144.76.234.130 deploy@144.76.234.135 deploy@144.76.234.130 deploy@144.76.234.135'"
alias dssh='ssh -o "ProxyCommand ssh -q -A deploy@host-01.8ball.wooga.com nc %h %p" -A -l deploy'
alias dscp='scp -o "ProxyCommand ssh -q -A deploy@host-01.8ball.wooga.com nc %h %p"'
alias utest='MIX_ENV=test mix TestWithDB'
alias itest='MIX_ENV=test mix IntegrationTests'
alias atest='MIX_ENV=test mix TestAll'
alias ascii='cat /usr/share/misc/ascii'
