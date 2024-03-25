import os
from openai import OpenAI

client = OpenAI(api_key=os.environ.get('OPENAI_API_KEY'))

try:
  response = client.audio.speech.create(
    model='tts-1', 
    voice='alloy',
    input='Hello world! This is a streaming test.',
  )

  response.stream_to_file('output.mp3')
except Exception as err:
  print(err)
