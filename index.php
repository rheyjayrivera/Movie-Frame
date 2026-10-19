<?php
// Entry point. Apache serves this first; it hands back the static UI in index.html.
readfile(__DIR__ . '/index.html');
