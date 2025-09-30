# API Spec v0.1

## GET /health
→ { "ok": true }

## GET /live-risk?lat&lon
→ {
  "score": number,
  "tier": "Safe|Caution|High|Extreme",
  "drivers": { "wbgt": number, "hi": number, "anomaly": number, "wind": number, "solar": number, "persistence": number }
}

### Sample
curl "http://localhost:8000/live-risk?lat=12.97&lon=77.59"
