const String landingViewStyles = '''
:root {
  --color-primary: #000319;
  --color-panel: #0c0e23;
  --color-panel-soft: #06091f;
  --color-border: rgba(105, 113, 162, 0.4);
  --color-muted: #c1c2d3;
  --color-accent: #cbacf9;
  --color-heading: #e4ecff;
}

body {
  margin: 0;
  background: radial-gradient(circle at top, #170d3d 0%, #030014 50%, #02000a 100%);
  color: white;
  font-family: Inter, Arial, sans-serif;
}

.landing-view { width: min(1120px, calc(100% - 32px)); margin: 36px auto; }

.shell-card {
  background: linear-gradient(145deg, rgba(4, 7, 29, 0.95), rgba(12, 14, 35, 0.95));
  border: 1px solid var(--color-border);
  border-radius: 16px;
  padding: 24px;
}

.tabs-nav { display: flex; flex-wrap: wrap; gap: 10px; justify-content: center; margin-bottom: 20px; }
.tabs-nav button {
  background: transparent;
  border: 1px solid transparent;
  color: var(--color-muted);
  border-radius: 999px;
  padding: 10px 16px;
  cursor: pointer;
}
.tabs-nav button.active { color: white; border-color: var(--color-accent); }

.section-title { font-size: 2.1rem; line-height: 1.15; margin: 6px 0 14px; color: var(--color-heading); }
.section-subtitle { color: var(--color-accent); text-transform: uppercase; letter-spacing: .08em; font-size: .8rem; }
.section-copy { color: var(--color-muted); line-height: 1.7; }

.cards-grid { display: grid; grid-template-columns: repeat(2, minmax(0,1fr)); gap: 16px; }
.skill { margin-bottom: 12px; }
.skill-track { height: 8px; background: rgba(255,255,255,.08); border-radius: 999px; }
.skill-fill { height: 100%; border-radius: inherit; background: linear-gradient(90deg, #7562e0, #cbacf9); }

.project-card, .experience-card {
  padding: 16px;
  border-radius: 14px;
  background: linear-gradient(140deg, rgba(22,26,49,.8), rgba(6,9,31,.8));
  border: 1px solid rgba(193,194,211,.25);
}

.contact-actions { display: flex; gap: 12px; flex-wrap: wrap; margin-top: 16px; }
.cta-btn {
  border: 1px solid var(--color-border);
  background: rgba(255,255,255,.02);
  color: white;
  text-decoration: none;
  border-radius: 10px;
  padding: 10px 14px;
}

@media (max-width: 768px) {
  .landing-view { width: calc(100% - 20px); margin: 20px auto; }
  .shell-card { padding: 16px; }
  .section-title { font-size: 1.65rem; }
  .cards-grid { grid-template-columns: 1fr; }
}
''';
