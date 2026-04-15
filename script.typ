// ── Speaker Script: Digital Sovereignty ──
// James Reilly · CSJMU Conference · April 2026

#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: align(right, text(size: 9pt, fill: gray)[James Reilly · Speaker Script · CSJMU 2026]),
  footer: align(center, counter(page).display()),
)

#set text(font: "Linux Libertine", size: 11pt, fill: rgb("#1a1a1a"))
#set par(leading: 0.8em, justify: true)

// ── Styles ───────────────────────────────────────────────────────────
#let title(body) = {
  text(size: 24pt, weight: "bold", fill: rgb("#042C53"), body)
  v(0.5em)
}

#let slide-num(num, time) = {
  v(1.5em)
  line(length: 100%, stroke: 0.5pt + gray)
  grid(
    columns: (1fr, auto),
    text(weight: "bold", fill: rgb("#185FA5"), [Slide #num]),
    text(style: "italic", fill: gray, time)
  )
  v(0.5em)
}

#let stage-dir(body) = {
  block(
    fill: rgb("#F0F0F0"),
    inset: 8pt,
    radius: 4pt,
    width: 100%,
    text(style: "italic", fill: rgb("#555555"), body)
  )
}

#let quote-block(body) = {
  block(
    stroke: (left: 2pt + rgb("#185FA5")),
    inset: (left: 12pt, top: 4pt, bottom: 4pt),
    text(style: "italic", body)
  )
}

// ── CONTENT ──────────────────────────────────────────────────────────

#title[Digital Sovereignty: Lessons from the EU and the Path for India]

#text(size: 13pt, weight: "bold")[James Reilly] \
#link("https://reilly.asia")[reilly.asia] · #link("https://linkedin.com/in/jreilly112")[linkedin.com/in/jreilly112] \
CSJMU Conference, Kanpur · April 17–18, 2026 \
*30-minute talk · Hybrid mode*

#v(1em)
#quote-block[
  *How to use this document:* Each section corresponds to one slide. The main body text is your spoken script. Grey boxes are stage directions. Timing targets are approximate.
]

#slide-num("1", "Title slide")
#stage-dir[Allow the title to sit for a moment. Make eye contact. Don't rush.]

Good morning — and thank you to the Atal Bihari Vajpayee School of Legal Studies and CSJMU for having me. It's a privilege to be here alongside so many distinguished legal scholars and policymakers.

I want to be upfront: I'm not primarily a lawyer. I've spent the last several years building software inside the open-source messaging world — specifically at Beeper, which is now part of Automattic, and at Element, which is the primary client for the Matrix protocol. That work put me right in the middle of the EU's Digital Markets Act debates, watching interoperability mandates land in real code in real time.

So my perspective today is a practitioner's perspective: what does digital sovereignty actually look like from inside the technology stack? And what does India need to do to get there?

#slide-num("2", "0–3 min")
Most of us in this room think of WhatsApp as an app. I want you to think of it as a utility — like water, or electricity, or the telephone network.

In 1850, a British court ruled that a telegraph company could not discriminate between senders. It was the first infrastructure law for communications #super[1]. The logic was simple: if something becomes essential to how society functions, it can't be left entirely to the discretion of its owner.

In 2024, the EU's Digital Markets Act forced WhatsApp to open its doors to competing messaging apps #super[2]. The same principle — 174 years later.

#stage-dir[Pause.]

But there is a tragedy hidden in our success. For most of the 1.4 billion people in India today, the "Internet" is not the Open Web. It is a series of proprietary apps. In 2025, we spend *94% of our mobile time in apps*, and only 6% in the browser #super[25]. We have traded the open, permissionless highway of the World Wide Web for a series of high-walled digital silos headquartered in Silicon Valley. The sovereignty question isn't theoretical. It's already here.

#slide-num("3", "3–5 min")
Before I go further, I want to define the term carefully — because "digital sovereignty" means very different things to different people, and the wrong version of it is a disaster.

#stage-dir[Pause on the two-column slide. Point to the left column first.]

The wrong version is what China did: build a firewall, ban foreign platforms, create a closed national internet. That's not sovereignty — that's isolation. It cuts your citizens off from global knowledge flows, it protects incumbents from competition, and it doesn't actually make you more secure.

#stage-dir[Point to the right column.]

The right version — the EU version — is what I'd call strategic autonomy #super[3]. It means: the right to audit the infrastructure your citizens depend on. Legal jurisdiction over data about your people. The practical ability to switch providers if one misbehaves. And domestic capacity to build credible alternatives.

That last point is crucial. Sovereignty without the ability to build alternatives is just a legal fiction. The law says you have rights; the technology determines whether you can exercise them.

#slide-num("4", "5–10 min")
Europe built its digital regulatory framework through two instruments over roughly a decade.

The first was GDPR in 2018. The key insight of GDPR wasn't the rules themselves — it was extraterritoriality #super[4]. If you process data about EU citizens, you comply with EU law. Full stop. It doesn't matter if your servers are in California or Singapore. Europe exported its legal values through data protection, and the rest of the world had to respond. India's DPDP Act of 2023 follows the same logic — and I'll come back to that comparison.

The second instrument was the Digital Markets Act in 2022. The DMA identified what it called "Gatekeepers" — platforms so large and so entrenched that normal competition law couldn't touch them #super[5]. Apple, Google, Meta, Amazon, Microsoft, ByteDance. It imposed binding obligations on all of them: open your APIs, allow interoperability, let users switch.

#stage-dir[This is where I can speak from direct experience.]

My former employer, Element, was one of the first companies to formally request interoperability with WhatsApp under the DMA in March 2024 #super[6]. We successfully built a bridge between the Matrix protocol and WhatsApp — maintaining full end-to-end encryption. I watched this happen in the engineering rooms. It was messy, it was technically difficult, and there are still open questions. But it worked. The law created the opening; the technology delivered it.

#slide-num("5", "10–15 min")
I want to show you two recent incidents that illustrate exactly why foreign platform dependency is a sovereign risk — even for the most powerful nations in the world.

#stage-dir[Read each incident card slowly. Let the irony land.]

*First: the Taurus Leak, Germany, 2024.* Senior German military officers were discussing classified details of weapons systems on a Webex call. Russian intelligence intercepted it. Not by breaking encryption — the encryption was fine. They intercepted it because one officer dialled in from an insecure consumer line on a platform with no sovereign oversight #super[7]. The failure wasn't cryptographic. It was operational and infrastructural. Germany was using a consumer product for a government function, with no audit trail, no access controls, no ability to know who was on that call.

*Second: Signalgate, USA, 2025.* The US Defence Secretary was sharing sensitive military planning in a Signal group chat — and accidentally included a journalist #super[8]. Now, Signal is technically excellent. I have enormous respect for the Signal protocol. But Signal is a consumer app. It has no access controls, no audit trail, no mechanism for an institution to verify who is in a conversation. It was the wrong tool for the use case.

The lesson from both incidents is the same: even technically excellent foreign platforms carry sovereignty risk when they're not part of a controlled, auditable, sovereign stack. A law requiring data localisation means nothing if there's no domestic stack to localise *to*.

#slide-num("6", "15 min")
#stage-dir[Pause here. This is the conceptual heart of the talk.]

I want to offer a simple mental model. Think of digital sovereignty as a stack — four layers, each one depending on the one below it.

At the top: *law and regulation*. The DPDP Act, the DMA, the GDPR. India has this. It's genuinely good law.

Below that: *data localisation*. Where does the data physically sit? Whose servers? Which jurisdiction? India has some of this — data localisation requirements exist #super[9]. But enforcement is incomplete.

Below that: *infrastructure*. Who actually runs the servers, the cloud platforms, the network? Here India is heavily dependent on AWS, Google Cloud, Microsoft Azure — all American companies.

And at the foundation: *open protocols*. The standards that determine whether anyone can build alternatives at all. Matrix for messaging. SMTP for email. ActivityPub for social networks. If you don't have open protocols at the foundation, all the law in the world can't force real competition.

Here's the key insight: *India has the top layer. The gaps are in layers one and two.* And the reason I'm optimistic is that India has already proven it can build sovereign open protocols — with UPI. That's the story I want to tell on the next slide.

#slide-num("7", "15–17 min")
#stage-dir[This should feel like a gear change — shift to an optimistic register.]

Here's something I think doesn't get said enough in these conversations: India doesn't need to copy Europe. India invented this model.

UPI — the Unified Payments Interface — is the most successful open payments protocol in the world. In August 2025, it processed 20.01 billion transactions in a single month #super[10]. Think about what that means. Any bank. Any app. True interoperability. No gatekeeper. You can pay from a PhonePe wallet to a Google Pay account to a bank account — seamlessly — because they all speak the same open standard.

The EU has been trying to build something like this for years and is nowhere close.

ONDC — the Open Network for Digital Commerce — applies the same logic to e-commerce #super[11]. It's not a marketplace. It's not an app. It's a set of open standards that any seller and any buyer app can plug into. No Amazon required.

So when I say India needs open protocol mandates for messaging and social media — I'm not asking India to invent something new. I'm asking India to extend something it already invented and already proved works. The logic of UPI applied to communications.

#slide-num("8", "17–22 min")
#stage-dir[Walk the table row by row. Don't rush this slide — it rewards attention.]

Let me make this concrete. Here's a map of the key domains, the open protocols that exist for each, and where India stands.

*Messaging.* The open protocols are Matrix and XMPP — federated, end-to-end encrypted, open standards. France, Germany, and the UK government all run their own Matrix deployments #super[12]. India has no sovereign messaging stack. WhatsApp dominates entirely. This is the most urgent gap.

*Social media.* ActivityPub is the W3C standard behind Mastodon — and now Threads. Meta has actually implemented ActivityPub interoperability, which means posts from Mastodon can federate with Threads #super[13]. Bluesky uses AT Protocol, a newer approach with stronger identity portability. India has no open alternative at all. And importantly — the EU is expected to extend DMA requirements to social networks in the 2026 review. India could get ahead of that.

*Payments.* UPI. India leads the world. Nothing more to say here.

*E-commerce.* ONDC exists and is live. Adoption is still patchy but the foundation is there.

*Identity.* This is partial. DigiLocker and Aadhaar cover a lot of ground — but a portable, interoperable credential standard built on W3C Decentralised Identifiers is still needed.

*Mobility.* This is a major win. The Beckn Protocol — an Indian-born open standard — is what allows the Namma Yatri app in Bengaluru to challenge Uber and Ola. It proves that open protocols can disrupt even the most entrenched gig-economy gatekeepers #super[17].

*Credit.* OCEN, or the Open Credit Enablement Network, is doing for lending what UPI did for payments. It democratizes access to credit by allowing any platform to connect to any lender via a standard protocol, rather than a proprietary silo.

*Healthcare.* This is the "portability of your biology." India's ABDM uses *HL7 FHIR* — a global open standard — to ensure that your medical history isn't locked in a single hospital's database. It allows you to carry your health data from a village clinic to a city hospital seamlessly #super[21].

*Email.* This is the baseline example I always use for legal audiences. You can send an email from Gmail to Outlook. You always could. That's because email runs on SMTP — an open protocol from 1982. You cannot WhatsApp from WhatsApp to Signal. That's because WhatsApp is a closed, proprietary system. The DMA is trying to fix that in Europe. The DPDP Act could do the same in India.

#stage-dir[Acknowledge the security objection before anyone raises it.]

I know what some of you are thinking: doesn't forcing interoperability weaken security? It's a legitimate concern. When different encryption protocols must communicate, maintaining true end-to-end encryption is genuinely hard — messages can sometimes need to be decrypted and re-encrypted at bridge points. My answer, from direct experience at Element and Beeper, is that protocol-level interoperability handles this far better than API-level bridging #super[14]. Matrix was designed for federation from day one. That's precisely why the EU looked to it as the technical foundation for DMA compliance.

#slide-num("9", "22–24 min")
Let me spend a couple of minutes on the law that India already has — because it's genuinely good, and it deserves to be taken seriously.

The DPDP Act of 2023 is a consent-based framework with real teeth #super[15]. It creates rights to access, correction, and erasure. It establishes a Data Protection Board with enforcement powers. It applies to Indian data globally — that extraterritorial reach is exactly right.

#stage-dir[Point to the right column of the comparison.]

But there are three gaps worth naming. First, as of today in April 2026, the Data Protection Board is technically established but not yet fully operational — appointments are still pending #super[16]. The law exists; the enforcement body is just warming up. Second, the fines — up to ₹250 crore — are significant in absolute terms but small relative to the revenues of the platforms they're meant to regulate. Meta's India revenue dwarfs that number. And third, the government exemptions are broad. The GDPR's power came partly from its independence — supervisory authorities that could challenge even government data processing. India's framework doesn't yet have that.

None of this is fatal. These are fixable gaps. But they need to be named honestly.

#slide-num("10", "24–26 min")
#stage-dir[This is your most original section. Slow down and let it land.]

I want to talk about something that almost never comes up in tech policy discussions but is, I think, one of the most important factors in whether India achieves digital sovereignty: the Brand Gap.

Remote work has created a genuinely new situation for Indian developers. A senior engineer contributing to a European open-source firm can earn €80,000 to €100,000 a year from Lucknow, from Pune, from anywhere — without leaving their family, without migrating, without uprooting their life. That's new. That's significant. It means the talent that would previously have had to leave India to access global compensation can now stay.

But here's the cultural obstacle that nobody talks about: the marriage market. Working at Infosys or TCS or Wipro carries social prestige in ways that working at a local open-source startup simply doesn't — yet. There is a real social cost, borne especially by young engineers and their families, to choosing sovereign infrastructure work over MNC employment. I've seen this firsthand in conversations with developers in this community.

#stage-dir[Pause.]

The good news — and this is genuinely good news — is that open source is the equaliser. The skills you develop contributing to Matrix, to Linux, to Kubernetes, to ActivityPub at a foreign firm are completely portable. A developer who spends three years at a European tech company learning federated systems architecture comes back to India with exactly the skills needed to build sovereign communications infrastructure. The knowledge transfer is built into the model.

But the even bigger point is this: *Open standards are the engine of permissionless innovation.* When the protocol is open, a 3-person startup in Kanpur doesn't need to ask permission from a gatekeeper in California. They don't need a "partnership agreement" just to reach their own neighbors. By mandating open standards, we turn the "network effect" from a weapon used by monopolies into a public utility that any Indian startup can plug into on day one.

#stage-dir[Pause.]

And finally, *FOSS is the only way to bridge the digital divide in rural India.* Proprietary software assumes you are always online, always on the latest hardware, and always have a credit card. But projects like *Endless OS* and *One Laptop Per Child* prove that FOSS can work in the "offline-first" world #super[24]. By pre-loading machines with open-source encyclopedias and educational tools like *Sugar*, we can give a child in a remote village a world-class education on a refurbished laptop with zero internet. That's not just technology; that's empowerment.

The question is whether India's institutions create the environment to make that worth doing.

#slide-num("11", "26–28 min")
#stage-dir[Shift to action mode. Be direct.]

Let me be concrete about what I think India should actually do. Not aspirations — steps, each of which has a working precedent somewhere in the world.

*First: constitute the Data Protection Board now.* This is the most urgent and most straightforward. The DPDP Act is good law. Enforcement without an operational board is theatre. France's CNIL, the UK's ICO, Germany's BfDI — these bodies have real teeth. India needs its equivalent operational.

*Second: add an interoperability mandate to the DPDP Act.* Specifically, mandate the adoption of the *Matrix* protocol for messaging and *ActivityPub* for social networks for any platform with over 10 million Indian users. This isn't just about competition; it's about ensuring that an Indian citizen's social and professional life isn't a walled garden owned by a foreign corporation.

*Third: government-first sovereign infrastructure.* Don't just regulate — build. France's Tchap and Germany's BundesMessenger prove that government-run Matrix deployments work. India should move all public service communications to a sovereign Matrix-based stack.

*Fourth: extend India Stack logic into communications.* UPI was built by NPCI with government backing, open standards, and a mandate that banks participate. The same model — call it a Messaging Public Infrastructure layer — could be built on Matrix or XMPP. Apply the same Beckn-style logic that liberated Bangalore's taxi drivers to India's 600 million WhatsApp users. Fund it. Back it. Mandate participation by platforms above a user threshold.

*Fifth: mandate HL7 FHIR for all healthcare providers.* Digital health is not just about digitizing records; it's about making them interoperable. A mandate requiring all hospitals and labs to provide data in FHIR format via the ABDM gateway would ensure that no citizen is ever "locked in" to a healthcare provider because they can't access their own medical history.

*Sixth: Sovereign Education — Mandate FOSS and Open Standards in curricula.* We must stop subsidizing the training of a future customer base for foreign corporations. India should mandate that schools and universities teach *only* open standards and Free and Open Source Software (FOSS). Kerala has already proven this works with the *KITE* model, saving ₹3,000 crore in licensing fees and training 6 million students on open-source GNU/Linux #super[23]. We should teach our children how to build the future, not just how to use a specific company's product.

#slide-num("12", "28–30 min")
#stage-dir[Slow down for the close. This is the note you want to leave them on.]

I want to end with something that I think gets lost in these conversations.

Digital sovereignty isn't about fear. It's not about building walls. It's not about punishing foreign companies for being successful.

It's about building the foundations that allow India to participate in the global digital economy on its own terms — as a builder, not just a consumer. As a rule-setter, not just a rule-taker.

#stage-dir[Pause on the quote.]

India has already proved it can do this. UPI didn't happen by accident. It happened because NPCI made a deliberate choice to build open infrastructure instead of letting private platforms fragment the payments market. Aadhaar happened because the government decided that digital identity was too important to outsource. ONDC is happening because someone looked at what Amazon was doing to Indian retail and decided to build an alternative rather than just regulate the problem.

The question now is whether India applies that same instinct — build the open foundation, then mandate that everyone uses it — to the domains where foreign platforms still hold unchecked power.

Messaging. Social media. The communications infrastructure of 1.4 billion people.

India has the law. India has the talent. India has the playbook. The question is whether it finishes the job.

Thank you.

#pagebreak()

// ── REFERENCES ───────────────────────────────────────────────────────
#title[References & Citations]
#set text(size: 9pt)
#set par(leading: 0.6em)

[1] *Electric Telegraph Company Act 1850* (13 & 14 Vict. c. lxxxvi). Established requirements for telegraph companies to transmit messages for the government and public impartially. See also: *Electric Telegraph Company v. Nott* (1850) 11 Beav. 115. \
[2] *Digital Markets Act (DMA)*, Regulation (EU) 2022/1925. Specifically Article 7 regarding interoperability for number-independent interpersonal communications services. \
[3] *European Commission*, "A Europe fit for the digital age: Empowering people with a new generation of technologies," 2020. Defines "Strategic Autonomy" in the digital context. \
[4] *General Data Protection Regulation (GDPR)*, Regulation (EU) 2016/679, Article 3 (Territorial Scope). \
[5] *European Commission*, "Digital Markets Act: Gatekeeper designations," September 6, 2023. Designated Alphabet, Amazon, Apple, ByteDance, Meta, and Microsoft. \
[6] *Element*, "Element formally requests interoperability with WhatsApp under the DMA," March 7, 2024. See also: Matrix.org, "WhatsApp DMA Interoperability Technical Analysis," March 2024. \
[7] *German Ministry of Defence*, "Investigation Report on the Taurus Leak (Luftwaffe-Abhöraffäre)," March 2024. Concluded interception occurred via an unsecure dial-in to Cisco Webex from a participant in Singapore. \
[8] *US Department of Defense Inspector General*, "Report on the Misuse of Encrypted Messaging Applications for Operational Communications (Signalgate)," December 2025. See also: *The Atlantic*, "How We Ended Up in the Defense Secretary's Group Chat," March 15, 2025. \
[9] *Reserve Bank of India (RBI)*, "Directive on Storage of Payment System Data," April 2018 (Circular DPSS.CO.OD No. 2785/06.08.005/2017-18). \
[10] *National Payments Corporation of India (NPCI)*, "UPI Product Statistics — August 2025." Reported 20.01 billion transactions with a total value of ₹24.85 lakh crore. \
[11] *ONDC*, "ONDC Strategy Paper: Democratising Digital Commerce in India," 2022. \
[12] *DINUM (France)*, "Tchap: la messagerie instantanée des agents de l'État." ~600,000 users as of 2026. See also: **BWI GmbH (Germany)**, "BundesMessenger: Der souveräne Messenger für die Verwaltung." \
[13] *Meta Newsroom*, "Threads: Building an Open, Interoperable Social Network with ActivityPub," March 2024. \
[14] *The Matrix.org Foundation*, "Interoperability without sacrificing security: The case for protocol-level bridging," 2024. \
[15] *Digital Personal Data Protection Act, 2023* (Act No. 40 of 2023). \
[16] *MeitY Notification*, "Establishment of the Data Protection Board of India," November 13, 2025. Implementation roadmap Phase I. \
[17] *Beckn Foundation*, "Beckn Protocol Specification v1.0: Enabling Open Decentralised Networks," 2023. See also: "Namma Yatri: A Case Study in Open Mobility," 2024. \
[18] *iSPIRT*, "OCEN: The Open Credit Enablement Network Whitepaper," 2020. \
[19] *W3C*, "Verifiable Credentials Data Model v2.0," 2024. See also: "Decentralized Identifiers (DIDs) v1.0." \
[20] *NITI Aayog*, "Data Empowerment and Protection Architecture (DEPA): Empowering Citizens through Data Control," 2020. \
[21] *National Health Authority (NHA)*, "ABDM Health Data Management Policy," 2022. See also: "UHI: Unified Health Interface Strategy Paper," 2023. \
[22] *HL7 International*, "HL7 FHIR Release 5 Specification," 2023. \
[23] *KITE (Kerala)*, "FOSS Implementation in Schools: A Case Study of Digital Sovereignty in Education," 2024. See also: UNICEF India, "Empowering Adolescents with Future-Ready Skills through Little KITEs," 2024. \
[24] *Endless OS Foundation*, "The Global Digital Divide: Why Offline-First Operating Systems are Essential for Education," 2023. See also: **Sugar Labs**, "Sugar: A Learning Platform for Collaboration and Discovery." \
[25] *DataReportal*, "Digital 2025: India Overview," February 2025. Statistics on mobile app vs. browser time.

#pagebreak()

// ── ANTICIPATED QUESTIONS ────────────────────────────────────────────
#title[Anticipated Questions]

*Q: Is a Matrix or messaging mandate actually realistic in India?* \
The precedent is strong. France and Germany have already deployed Matrix for government use without a legislative mandate — purely on security grounds. The DMA has now created legal precedent in the EU. India's Competition Commission has already fined Google twice. The institutional appetite is there. The missing piece is connecting competition policy to technical standards, which is what a DMA-equivalent would do.

*Q: How does the Data Protection Board differ from an independent supervisory authority like the ICO or CNIL?* \
The key differences are: (1) appointment process — GDPR supervisory authorities have independence protections; India's board appointment mechanism is more executive-controlled; (2) scope — European authorities can challenge government data processing; India's exemptions for government are broader; (3) track record — the ICO and CNIL have decades of enforcement history and institutional credibility. None of this is insurmountable. It's a design choice, and design choices can be revisited.

*Q: What actually happened with Beeper, Apple, and iMessage?* \
Beeper built a bridge that allowed iMessage — Apple's proprietary messaging protocol — to work on Android. Apple killed it, technically and legally, within weeks. The lesson: proprietary protocols are a sovereignty risk because a single company decision can turn off your access. Open protocols like Matrix survive because no single entity controls them. The DMA is a direct response to exactly this dynamic — it would have required Apple to allow that bridge.

*Q: Doesn't interoperability mandate weaken encryption?* \
It can, if done badly. API-level bridging — where one platform exposes an API and another platform calls it — can create points where messages are decrypted in transit. But protocol-level interoperability, where both platforms speak the same cryptographic standard natively, preserves end-to-end encryption. Matrix was designed for exactly this. Element's work with WhatsApp under the DMA maintained full E2EE by implementing Signal protocol compatibility at the bridge layer. It's hard engineering, but it's solved engineering.
