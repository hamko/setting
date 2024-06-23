import sys
import os
import argparse

parser = argparse.ArgumentParser(description='Answer a question.')
parser.add_argument('prompt', metavar='prompt', help='A prompt to ask')
parser.add_argument('--model', dest='model', action='store',
                    default='gpt-3.5-turbo',
                    choices=['gpt-4o', 'gpt-4', 'gpt-3.5-turbo'],
                    help='The model to use. gpt-3.5-turbo, gpt-4o, gpt-4 (default: gpt-3.5-turbo)')

args = parser.parse_args()

from openai import OpenAI
client = OpenAI()

completion = client.chat.completions.create(
  model=args.model,
  messages=[
    {"role": "system", "content": "あなたは一回だけ返答するアシスタントです。helpful な回答をしてください。"},
    {"role": "user", "content": args.prompt}
  ]
)

print(completion.choices[0].message.content)
