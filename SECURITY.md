# Security Policy

This tap distributes Homebrew formulae and casks for projects maintained by
Amer Alimanovic. Security-sensitive issues may include compromised release
assets, incorrect checksums, malicious or unsafe install behavior, suspicious
download URLs, or supply-chain concerns in packaged projects.

## Reporting A Vulnerability

Please do not open a public issue for suspected vulnerabilities.

Report security concerns privately using GitHub private vulnerability reporting
for this repository if it is available. If it is not available, use the contact
information listed at https://amer8.dev/.

Please include:

- The affected formula or cask.
- The version and platform.
- A clear description of the issue.
- Any logs, checksums, URLs, or reproduction steps that help verify the report.

## Scope

This repository controls Homebrew packaging metadata. Vulnerabilities in an
upstream project may need to be fixed in that upstream repository first, but
reports about unsafe tap metadata are in scope here.

## Response

Security reports will be reviewed as soon as practical. If a packaging issue is
confirmed, the affected formula or cask may be corrected, disabled, or removed
until a safe release is available.
