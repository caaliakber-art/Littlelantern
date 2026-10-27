# Little Lantern weekly content

Each week the scheduled helper adds **one bundle file** to `content/weekly/` and lists it in `content/index.json`. The app loads these files when it opens, on the GitHub Pages version. **Nothing in a bundle reaches the children until Daddy taps "Approve all"** in the Parents' corner, under "New this week".

## Rules for the content

- Audience: children aged about 6 to 10. Use short sentences and simple words. Be warm and encouraging.
- Manhaj: Ahl as-Sunnah wal-Jama'ah, following the salaf. Match the approach of abdurrahman.org's children's section and Dr. Saleh as-Saleh's *Tawheed for Children*.
- Sources: only the Qur'an, Sahih al-Bukhari and Sahih Muslim. Every gem and story slide that quotes something gives its reference, for example `Surah Yusuf 12:4` or `Sahih al-Bukhari 6018, Sahih Muslim 47`. Never invent wording or a reference. If you are not sure of a reference, leave that item out.
- Stories tell only what the Qur'an and the authentic Sunnah say. No Isra'iliyyat, no made-up dialogue, and no details that aren't in the sources.
- Pictures: stories are drawn only with the `sc` scene options below. Scenes show places, skies, the sea, buildings, plants and objects. **Never a Prophet, an angel, a person or a face.** Animals only when the Qur'an names them in that story, and even then prefer showing the place.
- Always write "alayhis salaam" after a Prophet's name in story text, and "ﷺ" after Prophet Muhammad.
- No em dashes. Use commas, colons or full stops instead.

## File: `content/weekly/YYYY-MM-DD.json`

```json
{
  "id": "w-2026-10-29",
  "title": "Week of 29 October 2026",
  "notes": "One line for Daddy: what is new, what sources were used, anything to check carefully.",
  "stories": [ STORY ],
  "gems": [ GEM, GEM, ... 21 of them ],
  "quiz": [ QUESTION, ... 10 of them ]
}
```

Add the file name to `content/index.json`, for example `{"bundles":["weekly/2026-10-29.json"]}`. Keep the older entries in the list.

### STORY

```json
{
  "id": "st-yusuf",
  "pid": "yusuf",
  "title": "Prophet Yusuf and the dream",
  "ar": "يُوسُف عَلَيْهِ السَّلَام",
  "sub": "One short line on the lesson of the story",
  "slides": [
    {"sc": {"label": "A night sky full of stars", "sky": ["#0E1A2E","#1E3150"], "stars": true, "moon": true},
     "text": "One to three short sentences.",
     "ay": {"ar": "إِذْ قَالَ يُوسُفُ لِأَبِيهِ", "en": "When Yusuf said to his father...", "ref": "Surah Yusuf 12:4"}}
  ],
  "quiz": [ QUESTION, QUESTION, QUESTION, QUESTION ]
}
```

- `pid` must be one of the Prophets below that **does not have a story yet**: check the existing ones by searching `src/little-lantern.html` and earlier bundles for `pid:'...'` or `"pid": "..."`.
- Prophet ids, in order: adam, idris, nuh, huud, saaleh, ibrahim, lut, ismail, ishaq, yaqub, yusuf, ayyub, shuayb, musa, harun, dhulkifl, dawud, sulayman, ilyas, alyasa, yunus, zakariyya, yahya, isa, muhammad. Choose the **earliest** one in this order that is still missing.
- 8 to 11 slides. The last slide is "What do we learn?", with `{"sky": ["#1E2A4A","#3D4E7A"], "stars": true, "lantern": [90,104], "book": true, "dunes": ["#B88A5A","#A67848","#946639"]}`.
- `ay` is optional. When present, the Arabic must be copied exactly from the mushaf, with harakat, and the reference must be exact.

### Scene options (`sc`)

The picture is 400 wide and 240 tall. `label` (a plain description for screen readers) and `sky` (two colours, top and bottom) are required. Everything else is optional:

| Option | Value | Draws |
|---|---|---|
| `stars` | `true` | small stars |
| `moon` | `true` or `[x,y,r]` | crescent moon |
| `fullmoon` | `[x,y,r]` | full moon with glow |
| `sun` | `[x,y,r]`, plus optional `sunC` colour | sun with glow |
| `bigstar` | `[x,y]` | one bright star |
| `cloud` | `[x,y,scale,colour]` | cloud |
| `rain` | `true` | rain lines |
| `wind` | `true` | blowing wind lines |
| `mountains` | `{"c":"#B9876A","d":"#946649"}`, add `"carved":true` for homes cut into rock | mountains |
| `peak` | colour | one tall mountain |
| `pillars` | `{}` or `{"c":..,"t":..}` | city of tall pillars |
| `town` | `{}` or `{"lit":true}` | small town, lit windows at night |
| `river` | `true` | river |
| `sea` | `["#4F8FB4","#3C7698"]` | sea with waves (replaces the ground) |
| `noGround` | `true` | no sand or ground |
| `dunes` | three colours, top to bottom | sand hills (the default ground) |
| `ark` | `[x,y,scale]` | big wooden ark |
| `ship` | `[x,y,scale]` | sailing ship |
| `blocks` | `true` | broken stone blocks |
| `fire` | `true` or `"cool"` | fire, or cool blue flames |
| `flowers` | `true` | flowers on the ground |
| `tree` | `[x, glow]` | a tree, optional glow |
| `garden` | `true` | two trees |
| `well` | `true` | a well |
| `leaves` | `true` | big green leaves |
| `palms` | `[[x,scale],...]` | palm trees |
| `cracks` | `true` | cracked dry ground |
| `water` | `true` | spring water |
| `glow` | `[x,y]` | a soft glow of light |
| `lantern` | `[x,y]` | a glowing lantern |
| `book` | `true` | an open book |
| `dark` | `true` | darken the whole scene |

Look at the existing stories in `src/little-lantern.html` (search `MORE_STORIES`) to see how scenes are combined.

### GEM

```json
{"id": "w-2026-10-29-g1", "kind": "Ayah", "pic": "🌙", "ar": "فَاذْكُرُونِي أَذْكُرْكُمْ", "text": "Remember Me, and I will remember you.", "src": "Surah al-Baqarah 2:152"}
```

- `kind` is one of `Ayah`, `Hadith`, `Prophets`, `Did you know?`. Mix them: about 6 ayat, 7 hadith, 4 Prophets, 4 Did you know.
- `pic` is one emoji. Never a face, a person or a hand gesture made to look like a person.
- `ar` is optional. Use it only for short ayat or short, well-known hadith wording you are certain of.
- `text` is one or two simple sentences.
- Before adding a gem, check that it isn't already in the app (search `src/little-lantern.html` and earlier bundles for the same reference).
- ids: `w-YYYY-MM-DD-g1` to `-g21`.

### QUESTION

```json
{"q": "What did Prophet Yusuf see in his dream?", "o": ["Eleven stars, the sun and the moon", "A big ship", "A tall mountain"], "why": "He saw eleven stars, the sun and the moon bowing down."}
```

- The **first** option in `o` is always the correct one. The app shuffles them.
- 3 options. Short. Only one is clearly right.
- Bundle-level `quiz` questions go into the Friday Jumu'ah quiz pool. Make them about this week's story and gems.
