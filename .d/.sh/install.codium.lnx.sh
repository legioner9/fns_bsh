#!/usr/bin/bash

if ! [[ -f "~/.config/VSCodium/product.json" ]]; then
	codium ~/.config/VSCodium/product.json
	cat >~/.config/VSCodium/product.json <<'EOF'
{
"extensionsGallery": {
"serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
"itemUrl": "https://marketplace.visualstudio.com/items",
"cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
"controlUrl": ""
}
} 
EOF
fi
