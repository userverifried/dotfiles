#!/bin/bash

function lsp {
    echo -e ${PATH//:/\\n}
}