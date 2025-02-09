#!/bin/bash

# Set canister IDs from your deployment
CONTEXT_ID="b77ix-eeaaa-aaaaa-qaada-cai"
PROXY_ID="aovwi-4maaa-aaaaa-qaagq-cai"
DESUITE_BACKEND_ID="by6od-j4aaa-aaaaa-qaadq-cai"

# Initialize the context with your backend canister
dfx canister call $CONTEXT_ID initialize_context "($DESUITE_BACKEND_ID)"

# Set up proxy contract
dfx canister call $CONTEXT_ID deploy_proxy "($PROXY_ID)"

# Configure proxy permissions
dfx canister call $CONTEXT_ID configure_proxy "()"