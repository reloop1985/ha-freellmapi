# FreeLLMAPI Home Assistant Add-on

FreeLLMAPI provides an OpenAI-compatible API for Open WebUI.

## Configuration

The add-on runs on port 3001.

The API endpoint is:

http://HOME_ASSISTANT_IP:3001/v1

Replace HOME_ASSISTANT_IP with the local IP address of your Home Assistant installation.

## Open WebUI

Configure an OpenAI-compatible connection using:

- Base URL: http://localhost:3001/v1
- API key: your FreeLLMAPI API key

Do not expose port 3001 to the public internet.

## Troubleshooting

Check the add-on logs if the application fails to start.
