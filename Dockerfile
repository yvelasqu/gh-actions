FROM alpine:latest

LABEL repository="http://github.com/yvelasqu/gh-actions"
LABEL homepage="http://github.com/yvelasqu/gh-actions"
LABEL "com.github.actions.name"="GH Actions"
LABEL "com.github.actions.description"="Automatically merge branch upon '/merge $branch' comment."
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add jq bash curl git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
