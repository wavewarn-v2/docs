# API Spec (v0.1)

## GET /live-risk?lat&lon
Returns:
{
  "score": number,
  "tier": "Safe|Caution|High|Extreme",
  "drivers": { "wbgt": number, "hi": number, "anomaly": number, "wind": number, "solar": number, "persistence": number }
}
