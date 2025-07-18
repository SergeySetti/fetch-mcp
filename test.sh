echo '{"jsonrpc": "2.0", "method": "initialize", "params": {"protocolVersion": "0.1.0", "capabilities": {}, "clientInfo": {"name": "test-client", "version": "1.0.0"}}, "id": 1}' | \
  uvx mcp-server-fetch  2>&1 | \
  grep -q 'serverInfo' && echo "Server initialized successfully" || echo "Server initialization failed"
