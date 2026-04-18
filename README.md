# Digital Sovereignty: Lessons from the EU and the Path for India

**James Reilly** · [reilly.asia](https://reilly.asia) · [linkedin.com/in/jreilly112](https://linkedin.com/in/jreilly112)

International Conference on Cybersecurity Law & Governance
Atal Bihari Vajpayee School of Legal Studies, CSJMU, Kanpur · April 2026

---

## About the talk

India's 1.4 billion people conduct their financial, social, and political lives through messaging and social media platforms headquartered in California. The question of whether India can exercise meaningful sovereignty over this digital infrastructure is no longer theoretical — it is already urgent.

This talk traces the EU's decade-long effort to build a regulatory shield through GDPR and the Digital Markets Act, and asks what India can learn from it. It argues that legal frameworks alone are insufficient: sovereignty requires open protocols, domestic infrastructure, and the political will to mandate interoperability — the same ingredients India already deployed to build UPI, the world's most successful open payments protocol.

The talk draws on direct practitioner experience from inside the open-source messaging ecosystem, including work on Matrix protocol interoperability with WhatsApp under the DMA, and makes the case that India is better positioned than any other democracy to lead the next phase of digital sovereignty — if it finishes the job it started.

**Duration:** 30 minutes · **Format:** Hybrid

---

## Downloads

> Built automatically from source on every push to main.

| File | Description |
|------|-------------|
| [slides-4-3.pdf](./slides-4-3.pdf) | Slides — 4:3 light |
| [slides-16-9.pdf](./slides-16-9.pdf) | Slides — 16:9 light |
| [slides-dark-4-3.pdf](./slides-dark-4-3.pdf) | Slides — 4:3 dark |
| [slides-dark-16-9.pdf](./slides-dark-16-9.pdf) | Slides — 16:9 dark |
| [slides.pptx](./slides.pptx) | Slides — PowerPoint (16:9 light) |
| [slides.html](./slides.html) | Slides — interactive HTML slideshow (16:9 light) |
| [script.pdf](./script.pdf) | Speaker script |
| [script.html](./script.html) | Speaker script — HTML |

## Source

| File | Description |
|------|-------------|
| `slides-content.typ` | All slide content (edit this) |
| `themes.typ` | Light and dark colour themes |
| `slides.typ` | Wrapper — 4:3 light |
| `slides-16-9.typ` | Wrapper — 16:9 light |
| `slides-dark.typ` | Wrapper — 4:3 dark |
| `slides-dark-16-9.typ` | Wrapper — 16:9 dark |
| `script.typ` | Speaker script |

## Building locally

```sh
just setup   # install typst, fonts, activate pre-commit hook (once)
just build   # compile all PDFs
just pptx    # build slides.pptx
just html    # build slides.html
just lint    # check all files compile
```
