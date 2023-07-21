import exrex
import os
import lorem
import random

# Mapping of secret types to regular expressions
secrets = {
    "AWS Key": "AKIA[A-Z0-9]{16}",
    "Facebook Access Token": "EA[A-Za-z0-9]{80}",
    "Generic Password": "[A-Za-z0-9]{40}",
    "GitHub": "[A-Za-z0-9]{40}",
    "Google OAuth": "ya29\\.[A-Za-z0-9\\-_]+",
    "Heroku API Key": "[h|H][e|E][r|R][o|O][k|K][u|U].*[A-Za-z0-9]{20}",
    "MailGun API Key": "key-[0-9a-zA-Z]{32}",
    "PayPal Braintree Access Token": "access_token\\$production\\$[0-9a-z]{16}\\$[0-9a-f]{32}",
    "Picatic API Key": "sk_live_[0-9a-z]{32}",
    "Slack API Key": "xox[baprs]-([0-9a-zA-Z]{10,48})?",
    "Stripe API Key": "sk_live_[0-9a-zA-Z]{24}",
    "Square Access Token": "sq0atp-[A-Za-z0-9-_]{22}",
    "Square OAuth Secret": "sq0csp-[A-Za-z0-9-_]{43}",
    "UK National Insurance Number": "[A-CEGHJ-PR-TW-Z][A-CEGHJ-NPR-TW-Z][0-9]{6}[A-D ]",
    "Twilio API Key": "SK[0-9a-fA-F]{32}",
    "Twitter Access Token": "[t|T][w|W][i|I][t|T][t|T][e|E][r|R].*[1-9][0-9]+-[0-9a-zA-Z]{40}",
    "IBAN (International Bank Account Number)": "[A-Z]{2}[0-9]{2}[A-Z]{4}[0-9]{10}",
    "VAT Identification Number (EU)": "[A-Z]{2}\\d{8,12}"
    # Add more secrets as needed
}


def embed_secret_in_text(text, secret):
    words = text.split(' ')
    insert_index = random.randint(0, len(words)-1)
    words.insert(insert_index, secret)
    return ' '.join(words)


# Generate 300 dummy files
for i in range(1, 150):
    # Generate a random paragraph of Lorem Ipsum text
    lorem_ipsum = lorem.paragraph()

    with open(f"dummy{i}.txt", "w") as f:
        num_secrets = min(21, len(secrets))
        selected_secrets = random.sample(list(secrets.items()), num_secrets)

        for secret_type, regex in selected_secrets:
            # Generate a random string that matches the regex
            secret = exrex.getone(regex)
            f.write(f"{secret_type}: {secret}\n")

        # Now, let's randomly embed one or two secrets within the Lorem Ipsum text
        for _ in range(random.randint(2, 4)):
            secret_type, regex = random.choice(list(secrets.items()))
            secret = exrex.getone(regex)
            lorem_ipsum = embed_secret_in_text(lorem_ipsum, secret)

        f.write(lorem_ipsum + '\n')
