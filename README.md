# FreeLLMAPI for Home Assistant

A Home Assistant OS add-on for running FreeLLMAPI locally and connecting Open WebUI to it.

## Architecture

- Home Assistant IP: `192.168.0.0`
- FreeLLMAPI port: `3001`
- Open WebUI URL: `https://localhost.domain.local`
- API endpoint: `http://localhost:3001/v1`

FreeLLMAPI should remain accessible only on your trusted local network. Do not expose port 3001 through a public reverse proxy.

## Installation

1. Add this repository to the Home Assistant Add-on Store.
2. Install the FreeLLMAPI add-on.
3. Start the add-on and open its dashboard.
4. Configure your AI provider keys in FreeLLMAPI.
5. Copy the unified API key from the FreeLLMAPI dashboard.
6. In Open WebUI, configure an OpenAI-compatible connection:
   - Base URL: `http://localhost:3001/v1`
   - API key: your FreeLLMAPI unified API key

## Persistence

The database and encryption key must survive restarts and updates. Keep the encryption key unchanged to retain access to stored provider credentials.

## Status

This project is under development. Do not install until the add-on has been built and tested.
