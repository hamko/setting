import sys
import os
import argparse
from playsound import playsound

parser = argparse.ArgumentParser(description='Answer a question.')
parser.add_argument('prompt', metavar='prompt', help='A prompt to ask')
parser.add_argument('--model', dest='model', action='store',
                    default='tts-1',
                    choices=['tts-1', 'tts-1-hd'],
                    help='The model to use. tts-1, tts-1-hd (default: tts-1)')

args = parser.parse_args()

from openai import OpenAI
client = OpenAI()

response = client.audio.speech.create(
    model=args.model,
    voice="alloy",
    input=args.prompt,
)

response.stream_to_file("output.mp3")
playsound("output.mp3")
