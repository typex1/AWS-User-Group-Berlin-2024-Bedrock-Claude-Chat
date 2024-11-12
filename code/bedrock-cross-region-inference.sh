#!/bin/bash
#
set -x
# https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html
# Anthropic 	Claude 3.5 Sonnet 	1.0 	anthropic.claude-3-5-sonnet-20240620-v1:0
# Anthropic 	Claude 3.5 Sonnet v2 	1.0 	anthropic.claude-3-5-sonnet-20241022-v2:0
# --model-id anthropic.claude-3-5-sonnet-20240620-v1:0 \
# --model-id anthropic.claude-3-5-sonnet-20241022-v2:0 \
#REGION=eu-west-3
REGION=eu-central-1
#MODEL_ID=anthropic.claude-3-5-sonnet-20240620-v1:0
#MODEL_ID=arn:aws:bedrock:eu-west-3:527704779651:inference-profile/eu.anthropic.claude-3-5-sonnet-20240620-v1:0
MODEL_ID=arn:aws:bedrock:eu-central-1:527704779651:inference-profile/eu.anthropic.claude-3-5-sonnet-20240620-v1:0

aws bedrock-runtime invoke-model \
 --model-id ${MODEL_ID} \
--body "{\"messages\":[{\"role\":\"user\",\"content\":[{\"type\":\"text\",\"text\":\"For an AWS proof of concept project, point out what could be missing to make it a real world working solution.\"}]}],\"anthropic_version\":\"bedrock-2023-05-31\",\"max_tokens\":200,\"temperature\":1,\"top_k\":250,\"top_p\":0.999,\"stop_sequences\":[]}" \
--cli-binary-format raw-in-base64-out \
--region ${REGION} \
--profile yt \
invoke-model-output.txt

cat invoke-model-output.txt
