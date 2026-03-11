# Truist Account Notification Email Template

## View the template

**Option 1: Run the preview script**
```bash
./open-preview.sh
```

**Option 2: Manual**
```bash
python3 -m http.server 8888
```
Then open http://localhost:8888/ in your browser.

**Option 3: GitHub Pages** (if enabled)
https://bethelhills.github.io/email-template-replication-trial-2/

## Email deliverability (avoiding spam folder)

The template includes:
- Preheader text for inbox preview
- Mobile-responsive logo (table layout, max-width)
- Softer language to reduce spam triggers

**Server-side steps** (configure with your email provider):
- Set up **SPF** and **DKIM** records for your sending domain
- Use a reputable sending service (SendGrid, Mailgun, etc.)
- Warm up new domains gradually
