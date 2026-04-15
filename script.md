# Speaker Script
## Digital Sovereignty: Lessons from the EU and the Path for India

**James Reilly** · CSJMU Conference, Kanpur · April 17–18, 2026  
**30-minute talk** · Hybrid mode

---

> **How to use this document**  
> Each section corresponds to one slide. The main body text is your spoken script. *Italic notes* are stage directions. Timing targets are approximate — trust the room.

---

## Slide 1 — Title slide

*Allow the title to sit for a moment. Make eye contact. Don't rush.*

Good morning — and thank you to the Atal Bihari Vajpayee School of Legal Studies and CSJMU for having me. It's a privilege to be here alongside so many distinguished legal scholars and policymakers.

I want to be upfront: I'm not primarily a lawyer. I've spent the last several years building software inside the open-source messaging world — specifically at Beeper, which is now part of Automattic, and at Element, which is the primary client for the Matrix protocol. That work put me right in the middle of the EU's Digital Markets Act debates, watching interoperability mandates land in real code in real time.

So my perspective today is a practitioner's perspective: what does digital sovereignty actually look like from inside the technology stack? And what does India need to do to get there?

---

## Slide 2 — The utility question
**0–3 min**

Most of us in this room think of WhatsApp as an app. I want you to think of it as a utility — like water, or electricity, or the telephone network.

In 1850, a British court ruled that a telegraph company could not discriminate between senders. It was the first infrastructure law for communications. The logic was simple: if something becomes essential to how society functions, it can't be left entirely to the discretion of its owner.

In 2024, the EU's Digital Markets Act forced WhatsApp to open its doors to competing messaging apps. The same principle — 174 years later.

Meanwhile, India's 1.4 billion people conduct their financial lives, their social lives, and increasingly their political lives through platforms headquartered in California. The data about who Indians talk to, what they buy, what they read, what they believe — that data sits on foreign servers, subject to foreign law, governed by foreign companies.

The sovereignty question isn't theoretical. It's already here.

---

## Slide 3 — What sovereignty actually means
**3–5 min**

Before I go further, I want to define the term carefully — because "digital sovereignty" means very different things to different people, and the wrong version of it is a disaster.

*Pause on the two-column slide. Point to the left column first.*

The wrong version is what China did: build a firewall, ban foreign platforms, create a closed national internet. That's not sovereignty — that's isolation. It cuts your citizens off from global knowledge flows, it protects incumbents from competition, and it doesn't actually make you more secure.

*Point to the right column.*

The right version — the EU version — is what I'd call strategic autonomy. It means: the right to audit the infrastructure your citizens depend on. Legal jurisdiction over data about your people. The practical ability to switch providers if one misbehaves. And domestic capacity to build credible alternatives.

That last point is crucial. Sovereignty without the ability to build alternatives is just a legal fiction. The law says you have rights; the technology determines whether you can exercise them.

---

## Slide 4 — How Europe built its regulatory shield
**5–10 min**

Europe built its digital regulatory framework through two instruments over roughly a decade.

The first was GDPR in 2018. The key insight of GDPR wasn't the rules themselves — it was extraterritoriality. If you process data about EU citizens, you comply with EU law. Full stop. It doesn't matter if your servers are in California or Singapore. Europe exported its legal values through data protection, and the rest of the world had to respond. India's DPDP Act of 2023 follows the same logic — and I'll come back to that comparison.

The second instrument was the Digital Markets Act in 2022. The DMA identified what it called "Gatekeepers" — platforms so large and so entrenched that normal competition law couldn't touch them. Apple, Google, Meta, Amazon, Microsoft, ByteDance. It imposed binding obligations on all of them: open your APIs, allow interoperability, let users switch.

*This is where I can speak from direct experience.*

My former employer, Element, was one of the first companies to formally request interoperability with WhatsApp under the DMA. We successfully built a bridge between the Matrix protocol and WhatsApp — maintaining full end-to-end encryption. I watched this happen in the engineering rooms. It was messy, it was technically difficult, and there are still open questions. But it worked. The law created the opening; the technology delivered it.

---

## Slide 5 — Two incidents that changed the conversation
**10–15 min**

I want to show you two recent incidents that illustrate exactly why foreign platform dependency is a sovereign risk — even for the most powerful nations in the world.

*Read each incident card slowly. Let the irony land.*

**First: the Taurus Leak, Germany, 2024.** Senior German military officers were discussing classified details of weapons systems on a Webex call. Russian intelligence intercepted it. Not by breaking encryption — the encryption was fine. They intercepted it because one officer dialled in from an insecure consumer line on a platform with no sovereign oversight. The failure wasn't cryptographic. It was operational and infrastructural. Germany was using a consumer product for a government function, with no audit trail, no access controls, no ability to know who was on that call.

**Second: Signalgate, USA, 2025.** The US Defence Secretary was sharing sensitive military planning in a Signal group chat — and accidentally included a journalist. Now, Signal is technically excellent. I have enormous respect for the Signal protocol. But Signal is a consumer app. It has no access controls, no audit trail, no mechanism for an institution to verify who is in a conversation. It was the wrong tool for the use case.

The lesson from both incidents is the same: even technically excellent foreign platforms carry sovereignty risk when they're not part of a controlled, auditable, sovereign stack. A law requiring data localisation means nothing if there's no domestic stack to localise *to*.

---

## Slide 6 — The sovereignty stack
**15 min**

*Pause here. This is the conceptual heart of the talk.*

I want to offer a simple mental model. Think of digital sovereignty as a stack — four layers, each one depending on the one below it.

At the top: **law and regulation**. The DPDP Act, the DMA, the GDPR. India has this. It's genuinely good law.

Below that: **data localisation**. Where does the data physically sit? Whose servers? Which jurisdiction? India has some of this — data localisation requirements exist. But enforcement is incomplete.

Below that: **infrastructure**. Who actually runs the servers, the cloud platforms, the network? Here India is heavily dependent on AWS, Google Cloud, Microsoft Azure — all American companies.

And at the foundation: **open protocols**. The standards that determine whether anyone can build alternatives at all. Matrix for messaging. SMTP for email. ActivityPub for social networks. If you don't have open protocols at the foundation, all the law in the world can't force real competition.

Here's the key insight: **India has the top layer. The gaps are in layers one and two.** And the reason I'm optimistic is that India has already proven it can build sovereign open protocols — with UPI. That's the story I want to tell on the next slide.

---

## Slide 7 — India already invented this playbook
**15–17 min**

*This should feel like a gear change — shift to an optimistic register.*

Here's something I think doesn't get said enough in these conversations: India doesn't need to copy Europe. India invented this model.

UPI — the Unified Payments Interface — is the most successful open payments protocol in the world. In August 2025, it processed over 20 billion transactions in a single month. Think about what that means. Any bank. Any app. True interoperability. No gatekeeper. You can pay from a PhonePe wallet to a Google Pay account to a bank account — seamlessly — because they all speak the same open standard.

The EU has been trying to build something like this for years and is nowhere close.

ONDC — the Open Network for Digital Commerce — applies the same logic to e-commerce. It's not a marketplace. It's not an app. It's a set of open standards that any seller and any buyer app can plug into. No Amazon required.

So when I say India needs open protocol mandates for messaging and social media — I'm not asking India to invent something new. I'm asking India to extend something it already invented and already proved works. The logic of UPI applied to communications.

---

## Slide 8 — The protocol map: India's wins and gaps
**17–22 min**

*Walk the table row by row. Don't rush this slide — it rewards attention.*

Let me make this concrete. Here's a map of the key domains, the open protocols that exist for each, and where India stands.

**Messaging.** The open protocols are Matrix and XMPP — federated, end-to-end encrypted, open standards. France, Germany, and the UK government all run their own Matrix deployments. India has no sovereign messaging stack. WhatsApp dominates entirely. This is the most urgent gap.

**Social media.** ActivityPub is the W3C standard behind Mastodon — and now Threads. Meta has actually implemented ActivityPub interoperability, which means posts from Mastodon can federate with Threads. Bluesky uses AT Protocol, a newer approach with stronger identity portability. India has no open alternative at all. And importantly — the EU is expected to extend DMA requirements to social networks in the 2026 review. India could get ahead of that.

**Payments.** UPI. India leads the world. Nothing more to say here.

**E-commerce.** ONDC exists and is live. Adoption is still patchy but the foundation is there.

**Identity.** This is partial. DigiLocker and Aadhaar cover a lot of ground — but a portable, interoperable credential standard built on W3C Decentralised Identifiers is still needed.

**Email.** This is the baseline example I always use for legal audiences. You can send an email from Gmail to Outlook. You always could. That's because email runs on SMTP — an open protocol from 1982. You cannot WhatsApp from WhatsApp to Signal. That's because WhatsApp is a closed, proprietary system. The DMA is trying to fix that in Europe. The DPDP Act could do the same in India.

*Acknowledge the security objection before anyone raises it.*

I know what some of you are thinking: doesn't forcing interoperability weaken security? It's a legitimate concern. When different encryption protocols must communicate, maintaining true end-to-end encryption is genuinely hard — messages can sometimes need to be decrypted and re-encrypted at bridge points. My answer, from direct experience at Element and Beeper, is that protocol-level interoperability handles this far better than API-level bridging. Matrix was designed for federation from day one. That's precisely why the EU looked to it as the technical foundation for DMA compliance.

---

## Slide 9 — India's DPDP Act vs GDPR
**22–24 min**

Let me spend a couple of minutes on the law that India already has — because it's genuinely good, and it deserves to be taken seriously.

The DPDP Act of 2023 is a consent-based framework with real teeth. It creates rights to access, correction, and erasure. It establishes a Data Protection Board with enforcement powers. It applies to Indian data globally — that extraterritorial reach is exactly right.

*Point to the right column of the comparison.*

But there are three gaps worth naming. First, the Data Protection Board hasn't been constituted yet. The law exists; the enforcement body doesn't. That's the most urgent thing to fix. Second, the fines — up to ₹250 crore — are significant in absolute terms but small relative to the revenues of the platforms they're meant to regulate. Meta's India revenue dwarfs that number. And third, the government exemptions are broad. The GDPR's power came partly from its independence — supervisory authorities that could challenge even government data processing. India's framework doesn't yet have that.

None of this is fatal. These are fixable gaps. But they need to be named honestly.

---

## Slide 10 — The human capital advantage
**24–26 min**

*This is your most original section. Slow down and let it land.*

I want to talk about something that almost never comes up in tech policy discussions but is, I think, one of the most important factors in whether India achieves digital sovereignty: the Brand Gap.

Remote work has created a genuinely new situation for Indian developers. A senior engineer contributing to a European open-source firm can earn €80,000 to €100,000 a year from Lucknow, from Pune, from anywhere — without leaving their family, without migrating, without uprooting their life. That's new. That's significant. It means the talent that would previously have had to leave India to access global compensation can now stay.

But here's the cultural obstacle that nobody talks about: the marriage market. Working at Infosys or TCS or Wipro carries social prestige in ways that working at a local open-source startup simply doesn't — yet. There is a real social cost, borne especially by young engineers and their families, to choosing sovereign infrastructure work over MNC employment. I've seen this firsthand in conversations with developers in this community.

*Pause.*

The good news — and this is genuinely good news — is that open source is the equaliser. The skills you develop contributing to Matrix, to Linux, to Kubernetes, to ActivityPub at a foreign firm are completely portable. A developer who spends three years at a European tech company learning federated systems architecture comes back to India with exactly the skills needed to build sovereign communications infrastructure. The knowledge transfer is built into the model.

The question is whether India's institutions create the environment to make that worth doing.

---

## Slide 11 — Concrete steps, not aspirations
**26–28 min**

*Shift to action mode. Be direct.*

Let me be concrete about what I think India should actually do. Not aspirations — steps, each of which has a working precedent somewhere in the world.

**First: constitute the Data Protection Board now.** This is the most urgent and most straightforward. The DPDP Act is good law. Enforcement without an operational board is theatre. France's CNIL, the UK's ICO, Germany's BfDI — these bodies have real teeth. India needs its equivalent operational.

**Second: add an interoperability mandate to the DPDP Act — or introduce standalone legislation.** A DMA-style clause requiring messaging platforms above a threshold of users to open their APIs and support standard protocols. India has 600 million smartphone users. That's enormous leverage. Use it.

**Third: government-first sovereign infrastructure.** Don't ban WhatsApp for citizens — but require that government communications use auditable, domestically-hosted, open infrastructure. France deployed Matrix for exactly this purpose. The German federal government uses it. This creates both a security improvement and a domestic market for sovereign technology companies.

**Fourth: extend India Stack logic into communications.** UPI was built by NPCI with government backing, open standards, and a mandate that banks participate. The same model — call it a Messaging Public Infrastructure layer — could be built on Matrix or XMPP. Fund it. Back it. Mandate participation by platforms above a user threshold.

---

## Slide 12 — Beyond preaching
**28–30 min**

*Slow down for the close. This is the note you want to leave them on.*

I want to end with something that I think gets lost in these conversations.

Digital sovereignty isn't about fear. It's not about building walls. It's not about punishing foreign companies for being successful.

It's about building the foundations that allow India to participate in the global digital economy on its own terms — as a builder, not just a consumer. As a rule-setter, not just a rule-taker.

*Pause on the quote.*

India has already proved it can do this. UPI didn't happen by accident. It happened because NPCI made a deliberate choice to build open infrastructure instead of letting private platforms fragment the payments market. Aadhaar happened because the government decided that digital identity was too important to outsource. ONDC is happening because someone looked at what Amazon was doing to Indian retail and decided to build an alternative rather than just regulate the problem.

The question now is whether India applies that same instinct — build the open foundation, then mandate that everyone uses it — to the domains where foreign platforms still hold unchecked power.

Messaging. Social media. The communications infrastructure of 1.4 billion people.

India has the law. India has the talent. India has the playbook. The question is whether it finishes the job.

Thank you.

---

## Anticipated questions

**Q: Is a Matrix or messaging mandate actually realistic in India?**  
The precedent is strong. France and Germany have already deployed Matrix for government use without a legislative mandate — purely on security grounds. The DMA has now created legal precedent in the EU. India's Competition Commission has already fined Google twice. The institutional appetite is there. The missing piece is connecting competition policy to technical standards, which is what a DMA-equivalent would do.

**Q: How does the Data Protection Board differ from an independent supervisory authority like the ICO or CNIL?**  
The key differences are: (1) appointment process — GDPR supervisory authorities have independence protections; India's board appointment mechanism is more executive-controlled; (2) scope — European authorities can challenge government data processing; India's exemptions for government are broader; (3) track record — the ICO and CNIL have decades of enforcement history and institutional credibility. None of this is insurmountable. It's a design choice, and design choices can be revisited.

**Q: What actually happened with Beeper, Apple, and iMessage?**  
Beeper built a bridge that allowed iMessage — Apple's proprietary messaging protocol — to work on Android. Apple killed it, technically and legally, within weeks. The lesson: proprietary protocols are a sovereignty risk because a single company decision can turn off your access. Open protocols like Matrix survive because no single entity controls them. The DMA is a direct response to exactly this dynamic — it would have required Apple to allow that bridge.

**Q: Doesn't interoperability mandate weaken encryption?**  
It can, if done badly. API-level bridging — where one platform exposes an API and another platform calls it — can create points where messages are decrypted in transit. But protocol-level interoperability, where both platforms speak the same cryptographic standard natively, preserves end-to-end encryption. Matrix was designed for exactly this. Element's work with WhatsApp under the DMA maintained full E2EE by implementing Signal protocol compatibility at the bridge layer. It's hard engineering, but it's solved engineering.

---

*End of script. Total estimated delivery time: 28–32 minutes at a measured pace.*
