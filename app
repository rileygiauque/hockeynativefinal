from flask import Flask, render_template_string

app = Flask(__name__)

PRIVACY_POLICY_HTML = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Privacy Policy - Hockey Native</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            line-height: 1.6;
            background-color: #f9f9f9;
        }
        h1, h2 {
            color: #1e3a5f;
        }
        .container {
            max-width: 900px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Privacy Policy</h1>
    <p>Last updated: April 2026</p>

    <h2>1. Introduction</h2>
    <p>Welcome to Hockey Native. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you use our website.</p>

    <h2>2. Information We Collect</h2>
    <p>We may collect personal information such as:</p>
    <ul>
        <li>Name and email address (if you contact us)</li>
        <li>Usage data (pages visited, time spent on site)</li>
        <li>Cookies and tracking technologies</li>
    </ul>

    <h2>3. How We Use Your Information</h2>
    <p>We use the information to:</p>
    <ul>
        <li>Improve our website and user experience</li>
        <li>Respond to inquiries</li>
        <li>Analyze traffic and usage trends</li>
    </ul>

    <h2>4. Cookies</h2>
    <p>We may use cookies to enhance your experience. You can disable cookies through your browser settings.</p>

    <h2>5. Third-Party Services</h2>
    <p>We may use third-party tools (like analytics providers) that collect, monitor, and analyze usage data.</p>

    <h2>6. Data Security</h2>
    <p>We take reasonable measures to protect your information, but no method of transmission over the Internet is 100% secure.</p>

    <h2>7. Children's Privacy</h2>
    <p>Our website is not intended for children under 13. We do not knowingly collect personal data from children.</p>

    <h2>8. Changes to This Policy</h2>
    <p>We may update this Privacy Policy from time to time. Changes will be posted on this page.</p>

    <h2>9. Contact Us</h2>
    <p>If you have any questions, contact us at: support@hockeynative.com</p>
</div>
</body>
</html>
"""

@app.route("/")
def privacy_policy():
    return render_template_string(PRIVACY_POLICY_HTML)

if __name__ == "__main__":
    app.run(debug=True)
