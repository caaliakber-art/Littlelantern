# Little Lantern

A family learning game for Islamic basics, built for one 8-year-old and her cousins.

- **Knowing Allah**: six lessons adapted from *Tawheed for Children, Level One* by Dr. Saleh as-Saleh (abdurrahman.org)
- **My daily duas**: ten adhkar with Arabic, transliteration, meaning and source (Hisn al-Muslim)
- **Arabic letters**: alif to yaa in seven levels
- **Duel with Daddy**: two-player, one-phone letter games (Letter Slap, Dot Catcher, Tug of War)
- **Be the storyteller**: children record the Prophets' stories page by page, alone or with a grown-up. A parent approves each page, then cousins hear it on their own devices ("Narrated by Inaaya, with Ummi") and can send thanks. Unrecorded pages use the phone voice. Audio is stored in Firestore, so no paid storage plan is needed.
- **Parents' corner**: approve lessons before they unlock, confirm good deeds, see progress

Progress syncs across the family through Firebase (Firestore, Mumbai). A grown-up on the family list signs in with Google once per device; children just pick their name. Without signing in, progress stays on that device.

Access rules live in `firestore.rules`. `build.sh` rebuilds `index.html` from the game source.
