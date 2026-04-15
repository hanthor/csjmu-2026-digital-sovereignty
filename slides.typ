// ── Digital Sovereignty: Lessons from the EU and the Path for India ──
// James Reilly · CSJMU Conference · April 2026

// ── Page setup ──────────────────────────────────────────────────────
#set page(
  paper: "presentation-16-9",
  margin: (x: 2.4cm, y: 1.8cm),
  fill: white,
)
#set text(font: "Linux Libertine", size: 14pt, fill: rgb("#1a1a1a"))
#set par(leading: 0.75em)

// ── Colour palette ───────────────────────────────────────────────────
#let navy      = rgb("#042C53")
#let blue      = rgb("#185FA5")
#let lightblue = rgb("#E6F1FB")
#let midblue   = rgb("#85B7EB")
#let teal      = rgb("#0F6E56")
#let lightteal = rgb("#E1F5EE")
#let amber     = rgb("#BA7517")
#let lightamb  = rgb("#FAEEDA")
#let coral     = rgb("#993C1D")
#let lightcor  = rgb("#FAECE7")
#let green     = rgb("#3B6D11")
#let lightgrn  = rgb("#EAF3DE")
#let muted     = rgb("#6B6B6B")
#let subtle    = rgb("#E8E8E8")
#let border    = rgb("#D0D0D0")

// ── Helpers ──────────────────────────────────────────────────────────
#let tag(content) = text(size: 9pt, fill: muted, weight: "bold", 
  upper(content))

#let slide-title(content) = text(size: 24pt, weight: "bold", 
  fill: rgb("#111111"), content)

#let subtitle(content) = text(size: 13pt, fill: muted, content)

#let divider(col: blue) = {
  v(0.3em)
  line(length: 2.4cm, stroke: 1.5pt + col)
  v(0.4em)
}

#let bullet(dot-color: blue, body, sub: none) = {
  grid(
    columns: (10pt, 1fr),
    gutter: 9pt,
    align(top + left)[
      #v(5pt)
      #circle(radius: 3pt, fill: dot-color)
    ],
    [
      #text(size: 13pt)[#body]
      #if sub != none [
        #linebreak()
        #text(size: 11pt, fill: muted)[#sub]
      ]
    ]
  )
  v(0.5em)
}

#let badge(label, fill-col, text-col) = box(
  fill: fill-col,
  inset: (x: 7pt, y: 3pt),
  radius: 10pt,
  text(size: 9pt, weight: "bold", fill: text-col, label)
)

#let win-badge()     = badge("India leads globally", lightgrn, green)
#let gap-badge()     = badge("Mandate needed",       lightcor,  coral)
#let partial-badge() = badge("Exists, adoption patchy", lightamb, amber)

#let hline() = line(length: 100%, stroke: 0.5pt + border)

// ── SLIDE 1 · Title ──────────────────────────────────────────────────
#block(
  width: 100%, height: 100%,
  fill: navy,
  inset: (x: 2.4cm, y: 2.2cm),
)[
  #text(size: 9pt, fill: midblue, weight: "bold")[
    INTERNATIONAL CONFERENCE ON CYBERSECURITY LAW & GOVERNANCE · APRIL 2026
  ]
  #line(length: 2.4cm, stroke: 1.5pt + midblue)
  #v(0.6em)
  #text(size: 28pt, weight: "bold", fill: white)[
    Digital Sovereignty:\
    Lessons from the EU\
    and the Path for India
  ]
  #v(1.2em)
  #text(size: 13pt, fill: midblue)[
    James Reilly · Open Source Advocate & IT Consultant\
    FOSS United · AlmaLinux · formerly Beeper / Element
  ]
]

#pagebreak()

// ── SLIDE 2 · The Utility Question ───────────────────────────────────
#tag[Opening · 0–3 min]
#v(0.5em)
#slide-title[The utility question]
#subtitle[When did messaging become infrastructure?]
#divider()

#bullet(dot-color: blue, [In 1850, a British court ruled that a telegraph company could not discriminate between senders.], sub: [The first infrastructure law for communications.])
#bullet(dot-color: blue, [In 2024, the EU's Digital Markets Act forced WhatsApp to open its doors to competing apps.], sub: [The same principle, 174 years later.])
#bullet(dot-color: blue, [India's 1.4 billion people conduct their financial, social, and political lives through platforms headquartered in California.], sub: [The sovereignty question isn't theoretical. It's already here.])

#pagebreak()

// ── SLIDE 3 · Definition ─────────────────────────────────────────────
#tag[Definition · 3–5 min]
#v(0.5em)
#slide-title[What sovereignty actually means]
#subtitle[Not isolation. Strategic autonomy.]
#divider()

#grid(
  columns: (1fr, 1fr),
  gutter: 1.4em,
  block(fill: lightcor, radius: 6pt, inset: 14pt)[
    #text(size: 9pt, weight: "bold", fill: coral)[WHAT IT IS NOT]
    #v(0.5em)
    #for item in ("Building a Great Firewall", "Banning foreign platforms", "Technological isolationism", "Nationalist protectionism") {
      bullet(dot-color: coral, item)
    }
  ],
  block(fill: lightteal, radius: 6pt, inset: 14pt)[
    #text(size: 9pt, weight: "bold", fill: teal)[WHAT IT IS]
    #v(0.5em)
    #for item in ("The right to audit infrastructure", "Legal jurisdiction over user data", "Ability to switch providers", "Domestic capacity to build alternatives") {
      bullet(dot-color: teal, item)
    }
  ]
)

#pagebreak()

// ── SLIDE 4 · EU Case Study ───────────────────────────────────────────
#tag[EU Case Study · 5–10 min]
#v(0.5em)
#slide-title[How Europe built its regulatory shield]
#subtitle[Two instruments. One decade. Global impact.]
#divider()

#bullet(dot-color: teal, [*GDPR (2018):* Exported European values globally], sub: [Every company serving EU users must comply — regardless of where they're headquartered. India adopted a similar framework with the DPDP Act 2023.])
#bullet(dot-color: teal, [*Digital Markets Act (2022):* Targeted 'Gatekeepers'], sub: [Apple, Google, Meta, Amazon, Microsoft, ByteDance — forced to open APIs and enable interoperability. Fines up to 10% of global turnover.])
#bullet(dot-color: teal, [*DMA interoperability in practice:* WhatsApp forced open], sub: [In March 2024, WhatsApp was legally required to allow third-party apps to connect. My former employer Element successfully bridged Matrix to WhatsApp with full E2EE.])

#pagebreak()

// ── SLIDE 5 · Incidents ───────────────────────────────────────────────
#tag[Security Risk · 10–15 min]
#v(0.5em)
#slide-title[Two incidents that changed the conversation]
#subtitle[Even 'secure' foreign platforms carry sovereignty risk.]
#divider()

#block(
  width: 100%,
  inset: (left: 10pt, right: 12pt, top: 10pt, bottom: 10pt),
  radius: (right: 6pt),
  fill: rgb("#FEF2F2"),
  stroke: (left: 3pt + rgb("#E24B4A")),
)[
  #text(size: 9pt, weight: "bold", fill: rgb("#A32D2D"))[INCIDENT A · GERMANY 2024]
  #v(0.25em)
  #text(size: 13pt, weight: "bold")[The Taurus Leak (Webex)]
  #v(0.2em)
  #text(size: 12pt)[Senior German military officers discussed classified weapons strategy on a Webex call. Russian intelligence intercepted it — not by breaking encryption, but because one officer dialled in from an insecure consumer line. The failure wasn't cryptographic. It was operational and infrastructural.]
]

#v(0.6em)

#block(
  width: 100%,
  inset: (left: 10pt, right: 12pt, top: 10pt, bottom: 10pt),
  radius: (right: 6pt),
  fill: rgb("#FEF2F2"),
  stroke: (left: 3pt + rgb("#E24B4A")),
)[
  #text(size: 9pt, weight: "bold", fill: rgb("#A32D2D"))[INCIDENT B · USA 2025]
  #v(0.25em)
  #text(size: 13pt, weight: "bold")[Signalgate (Hegseth / Signal)]
  #v(0.2em)
  #text(size: 12pt)[The US Defence Secretary shared sensitive war plans in a Signal group chat that accidentally included a journalist. Signal is technically excellent — but it's a consumer app with no audit trail, no access controls, and no sovereign oversight.]
]

#pagebreak()

// ── SLIDE 6 · The Stack ───────────────────────────────────────────────
#tag[The Core Argument · 15 min]
#v(0.5em)
#slide-title[The sovereignty stack]
#subtitle[Law without infrastructure is a promise you can't keep.]
#divider()

#let stack-layers = (
  (num: "04", name: "Law & Regulation",  note: "DPDP Act, DMA, GDPR — India has this",               fill-col: lightblue, text-col: rgb("#0C447C")),
  (num: "03", name: "Data localisation", note: "Where data physically lives",                        fill-col: lightteal, text-col: rgb("#085041")),
  (num: "02", name: "Infrastructure",    note: "Who runs the servers, clouds, networks",             fill-col: lightamb,  text-col: rgb("#633806")),
  (num: "01", name: "Open Protocols",    note: "Matrix, UPI, SMTP, ActivityPub — the foundation",    fill-col: lightcor,  text-col: rgb("#712B13")),
)

#for layer in stack-layers {
  block(
    width: 100%, inset: (x: 14pt, y: 10pt), radius: 5pt,
    fill: layer.fill-col,
  )[
    #grid(
      columns: (28pt, 1fr, auto),
      align: horizon,
      text(size: 10pt, fill: layer.text-col, weight: "bold")[#layer.num],
      text(size: 14pt, weight: "bold", fill: layer.text-col)[#layer.name],
      text(size: 11pt, fill: layer.text-col)[#layer.note],
    )
  ]
  v(0.4em)
}

#text(size: 11pt, fill: muted)[← India has Layer 4. UPI proved Layer 1 works in payments. The gap is messaging and social media.]

#pagebreak()

// ── SLIDE 7 · India's Wins ────────────────────────────────────────────
#tag[India's Existing Wins · 15–17 min]
#v(0.5em)
#slide-title[India already invented this playbook]
#subtitle[UPI, Aadhaar, ONDC — India's open protocol advantage.]
#divider()

#bullet(dot-color: green, [*UPI:* the world's most successful open payments protocol], sub: [20.01 billion transactions in a single month (August 2025). Built on open standards — any bank, any app, true interoperability. Now expanding internationally.])
#bullet(dot-color: green, [*ONDC:* open e-commerce, not a marketplace], sub: [A set of open standards for commerce — the same logic as UPI, applied to retail. Any seller, any buyer app, no gatekeeper.])
#bullet(dot-color: green, [*The EU envies this. Now apply it to communications.* ], sub: [India pioneered open protocols for payments and identity. The gap is messaging and social media — exactly what the DMA is forcing in Europe.])

#pagebreak()

// ── SLIDE 8 · Protocol Map ────────────────────────────────────────────
#tag[Open Protocols · 17–22 min]
#v(0.5em)
#slide-title[The protocol map: India's wins and gaps]
#subtitle[Where open standards exist — and where mandate is still needed.]
#v(0.6em)

#let proto-rows = (
  (domain: "Messaging",    protocol: "Matrix / XMPP",              proto-sub: "Federated, E2EE, open standard",        status: "gap",     india: "No sovereign stack",      india-sub: "WhatsApp dominates entirely"),
  (domain: "Social media", protocol: "ActivityPub / AT Protocol",  proto-sub: "Fediverse, Mastodon, Bluesky, Threads", status: "gap",     india: "No open alternative",     india-sub: "EU expanding DMA here in 2026"),
  (domain: "Payments",     protocol: "UPI",                        proto-sub: "Open, interoperable, sovereign",        status: "win",     india: "20.01B txns/month",       india-sub: "World's best open payments protocol"),
  (domain: "E-commerce",   protocol: "ONDC",                       proto-sub: "Open Network for Digital Commerce",     status: "partial", india: "Live since 2022",          india-sub: "Same logic as UPI, applied to retail"),
  (domain: "Identity",     protocol: "W3C DID / Verifiable Creds", proto-sub: "Decentralised identifiers standard",    status: "partial", india: "DigiLocker partial",       india-sub: "Portable credential standard needed"),
  (domain: "Mobility",     protocol: "Beckn Protocol",             proto-sub: "Open discovery & transaction engine",   status: "win",     india: "Namma Yatri / ONDC",      india-sub: "Beating Uber/Ola via open standards"),
  (domain: "Credit",       protocol: "OCEN",                       proto-sub: "Open Credit Enablement Network",        status: "partial", india: "Live for MSMEs",          india-sub: "Breaking the lending gatekeepers"),
  (domain: "Healthcare",   protocol: "HL7 FHIR",                   proto-sub: "Fast Healthcare Interoperability Resources", status: "partial", india: "ABDM / UHI",            india-sub: "Portable health records & services"),
  (domain: "Information",  protocol: "HTTP / HTML (Open Web)",     proto-sub: "The original level playing field",      status: "win",     india: "Losing to silos",         india-sub: "94% time in apps, 6% in browser"),
  (domain: "Email",        protocol: "SMTP / IMAP",                proto-sub: "The original open protocol",           status: "win",     india: "The baseline example",    india-sub: "Gmail ↔ Outlook works. WhatsApp ↔ Signal doesn't — yet."),
)

// Header
#block(width: 100%, inset: (x: 8pt, y: 6pt), fill: subtle, radius: (top: 5pt))[
  #grid(
    columns: (18%, 26%, 22%, 34%),
    gutter: 8pt,
    ..("Domain", "Open protocol", "Status", "India position").map(h =>
      text(size: 9pt, weight: "bold", fill: muted, upper(h))
    )
  )
]

#for row in proto-rows {
  let badge-el = if row.status == "win" { win-badge() }
    else if row.status == "gap" { gap-badge() }
    else { partial-badge() }
  
  block(width: 100%, inset: (x: 8pt, y: 7pt), stroke: (bottom: 0.5pt + border))[
    #grid(
      columns: (18%, 26%, 22%, 34%),
      gutter: 8pt,
      align: top,
      text(size: 12pt, weight: "bold")[#row.domain],
      [
        #text(size: 12pt, weight: "bold")[#row.protocol]
        #linebreak()
        #text(size: 10pt, fill: muted)[#row.proto-sub]
      ],
      badge-el,
      [
        #text(size: 12pt, weight: "bold")[#row.india]
        #linebreak()
        #text(size: 10pt, fill: muted)[#row.india-sub]
      ],
    )
  ]
}

#v(0.5em)
#block(fill: lightblue, radius: 5pt, inset: (x: 12pt, y: 9pt), width: 100%)[
  #text(size: 11pt, fill: rgb("#0C447C"))[India proved open protocols beat proprietary gatekeepers in payments. The same playbook — mandate interoperability, fund open infrastructure — applies directly to messaging and social media.]
]

#pagebreak()

// ── SLIDE 9 · DPDP vs GDPR ───────────────────────────────────────────
#tag[India's Opportunity · 22–24 min]
#v(0.5em)
#slide-title[India's DPDP Act vs GDPR]
#subtitle[Strong law — but enforcement infrastructure is missing.]
#divider()

#grid(
  columns: (1fr, 1fr),
  gutter: 1.4em,
  block(fill: lightcor, radius: 6pt, inset: 14pt)[
    #text(size: 9pt, weight: "bold", fill: coral)[GDPR (EU, 2018)]
    #v(0.5em)
    #for item in ("Right to access, erasure, portability", "Data Protection Officer mandatory", "Fines up to 4% global revenue", "Extraterritorial reach", "Independent supervisory authorities") {
      bullet(dot-color: coral, item)
    }
  ],
  block(fill: lightteal, radius: 6pt, inset: 14pt)[
    #text(size: 9pt, weight: "bold", fill: teal)[DPDP ACT (INDIA, 2023)]
    #v(0.5em)
    #for item in ("Consent-based framework, similar rights", "Data Protection Board (not yet operational)", "Fines up to ₹250 crore", "Applies to Indian data globally", "Government exemptions remain broad") {
      bullet(dot-color: teal, item)
    }
  ]
)

#pagebreak()

// ── SLIDE 10 · Human Capital ──────────────────────────────────────────
#tag[India's Opportunity · 24–26 min]
#v(0.5em)
#slide-title[The human capital advantage]
#subtitle[India has the talent. The obstacle is cultural, not technical.]
#divider()

#bullet(dot-color: amber, [*Remote work changed the calculus for Indian developers*], sub: [A senior engineer at a European open-source firm can earn €80–100k from Lucknow or Pune — family intact, no migration.])
#bullet(dot-color: amber, [*The Brand Gap:* a real cultural obstacle], sub: [Working at 'Infosys' carries marriage market prestige. Working at 'LocalSovereignApp.in' does not — yet. This social cost is real and underacknowledged in tech policy.])
#bullet(dot-color: amber, [*Open source as the equaliser*], sub: [Skills learned contributing to Matrix, Linux, or Kubernetes at a foreign firm are portable. A developer who returns can build sovereign infrastructure using exactly those skills.])
#bullet(dot-color: amber, [*The Startup Multiplier: Permissionless Innovation*], sub: [A 3-person team in Kanpur shouldn't need an API key from California to reach Indian users. Open standards level the playing field.])
#bullet(dot-color: amber, [*Bridging the Digital Divide: Offline-First FOSS*], sub: [Endless OS & OLPC model. Pre-loading knowledge (Wikipedia/Kiwix) on refurbished hardware for rural education.])

#pagebreak()

// ── SLIDE 11 · Concrete Steps ─────────────────────────────────────────
#tag[What India Should Do · 26–28 min]
#v(0.5em)
#slide-title[Concrete steps, not aspirations]
#subtitle[Each one has a working precedent.]
#divider()

#bullet(dot-color: blue, [*Constitute the Data Protection Board — now*], sub: [The DPDP Act exists. Enforcement without an operational board is theatre.])
#bullet(dot-color: blue, [*Mandate Matrix & ActivityPub for large platforms*], sub: [Require interoperability for any SSMI with 10M+ Indian users. Break the network effect lock-in.])
#bullet(dot-color: blue, [*Sovereign Govt Infrastructure: Tchap/BundesMessenger model*], sub: [Move all public service communications to an auditable, domestic Matrix-based stack.])
#bullet(dot-color: blue, [*Upgrade DigiLocker to W3C Verifiable Credentials*], sub: [Move from "fetching PDFs" to cryptographically portable, privacy-preserving identity tokens.])
#bullet(dot-color: blue, [*Sovereign Education: Mandate FOSS in curricula*], sub: [Stop training customers for foreign firms. Kerala's KITE model saved ₹3,000 Cr via open standards.])

#pagebreak()

// ── SLIDE 12 · Conclusion ─────────────────────────────────────────────
#tag[Conclusion · 28–30 min]
#v(0.5em)
#slide-title[Beyond preaching]
#subtitle[Sovereignty is built, not declared.]
#divider()
#v(1em)

#block(
  width: 100%,
  inset: (left: 14pt, right: 16pt, top: 14pt, bottom: 14pt),
  stroke: (left: 3pt + blue),
)[
  #text(size: 18pt, style: "italic", fill: rgb("#111111"))[
    "India doesn't need to ask permission to participate in the global digital economy on its own terms. It has already proven it can build the foundations — with UPI, with Aadhaar, with ONDC. The question is whether it finishes the job."
  ]
]

#pagebreak()

// ── SLIDE 13 · Thank You ──────────────────────────────────────────────
#block(
  width: 100%, height: 100%,
  fill: white,
  inset: (x: 2.4cm, y: 2.4cm),
)[
  #v(2em)
  #align(center)[
    #text(size: 9pt, weight: "bold", fill: muted)[THANK YOU]
    #v(0.6em)
    #text(size: 30pt, weight: "bold")[James Reilly]
    #line(length: 2.4cm, stroke: 1.5pt + blue)
    #v(0.4em)
    #text(size: 13pt, fill: muted)[
      Open Source Advocate & IT Consultant\
      FOSS United · AlmaLinux\
      formerly Beeper (now Automattic) · Element
    ]
    #v(2em)
    #text(size: 12pt, fill: muted)[Questions welcome]
  ]
]

#pagebreak()

// ── SLIDE 14 · Key References ────────────────────────────────────────
#tag[Bibliography]
#v(0.5em)
#slide-title[Key references & sources]
#subtitle[Selected legal and technical foundations.]
#divider()

#set text(size: 10pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    *Legal Foundations* \
    #v(0.4em)
    - *Electric Telegraph Company Act 1850* (13 & 14 Vict. c. lxxxvi).
    - *Digital Markets Act (DMA)*, Regulation (EU) 2022/1925.
    - *GDPR*, Regulation (EU) 2016/679.
    - *India DPDP Act*, Act No. 40 of 2023.
    - *RBI Directive* on Payment Data Storage (2018).
    
    #v(1em)
    *Technical Standards* \
    #v(0.4em)
    - *Matrix protocol* (matrix.org) - IETF/W3C candidate.
    - *ActivityPub* (W3C Social Web Working Group).
    - *SMTP* (RFC 821/5321).
    - *UPI API Specifications* (NPCI).
  ],
  [
    *Reports & Incidents* \
    #v(0.4em)
    - *German MoD*, Taurus Leak Investigation (March 2024).
    - *US DoD IG*, Signalgate Report (December 2025).
    - *NPCI*, UPI Monthly Statistics (August 2025).
    - *Meta Newsroom*, Threads ActivityPub Interop (2024).
    
    #v(1em)
    *Sovereign Deployments* \
    #v(0.4em)
    - *Tchap* (French Government).
    - *BundesMessenger* (German Public Administration).
    - *BwMessenger* (German Armed Forces).
    - *TI-Messenger* (German Healthcare).
  ]
)
