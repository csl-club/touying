#import "/lib.typ": *
#import themes.toying: *

#import "@preview/numbly:0.1.0": numbly

#set text(lang: "es", font: "DepartureMono Nerd Font Mono")
#let logo = block(
  radius: 50%,
  clip: true,
  image("resources/full logo.jpg", width: 4cm, height: 4cm)
)
#let mini_logo = image("resources/mini_logo.png", width: 1.5cm, height: 1.5cm)

#show: toying-theme.with(
  aspect-ratio: "16-9",
  footer: self => self.info.title,
  header-prefix: self => {
    align(horizon, mini_logo)
    /*
    grid(
      inset: 0.1em,
      columns: (auto, auto),
      column-gutter: 0.3em,
      align(horizon, mini_logo),
      text(size: 0.6em, [Club de Software Libre @ UTEC])
    )**/
  },
  config-info(
    organization: [Club de Software Libre],
    description: [Organización de desarrolladores & Software Libre],
    title: [CSL Post-mortem 2026.1],
    date: datetime.today(),
    institution: [UTEC],
    contact: [csl\@utec.edu.pe],
    logo: logo,
  ),
  config-colors(
    primary: rgb("#2a95e7"),
    secondary: rgb("#5079c6b9"),
    tertiary: rgb("#0a2d68b9"),

    background-slide: gradient.linear(
      angle: 45deg,
      rgb("#5b80c7"),
      rgb("#00072e"),
      black
    ),
    background-section: gradient.linear(
      angle: 45deg,
      rgb("#5b80c7"),
      rgb("#00072e"),
      black
    ),
    background-focus: gradient.radial(
      rgb("#2e58a8"),
      rgb("#00072e"),
    ),

    neutral-lightest: rgb("#fafafa"),
    neutral-dark: rgb("#23373b"),
    neutral-darkest: rgb("#ffffff"),
  )
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide(
  config: config-page(
    background: {
      place(image("resources/blur_flisol.jpg", width: 100%, height: 100%))
      place(
        rect(
          width: 100%,
          height: 100%,
          fill: gradient.linear(
            black,
            black.transparentize(80%),
            black.transparentize(100%)
          )
        )
      )
    }
  )
)

#outline-slide(indent: (1em,), depth: 1, title: "Capítulos")

= Nueva dirección

== Testing

A slide with equation:

$ x_(n+1) = x_n + f(x_n) / (f'(x_n))$


= Debug

Hallo

#focus-slide[
  Wake up!
]

== Simple Animation

We can use `#pause` to #pause display something later.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to display other content synchronously.

#speaker-note[
  + This is a speaker note.
  + You won't see it unless you use `config-common(show-notes-on-second-screen: right)`
]

#show: appendix

= Appendix

Please pay attention to the current slide number.
