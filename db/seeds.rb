# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
paintings = [
  {
    name: "The Starry Night",
    artist: "Vincent van Gogh",
    movement: "Post-Impressionism",
    technique: "Oil on Canvas",
    year: 1889,
    price: rand(100..999),
    description: "The Starry Night is an oil on canvas painting by Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an idealized village."
  },
   {
    name: "Mona Lisa",
    artist: "Leonardo da Vinci",
    movement: "Renaissance",
    technique: "Oil on Poplar Panel",
    year: 1503,
    price: rand(100..999),
    description: "The Mona Lisa is a half-length portrait painting by Italian artist Leonardo da Vinci. It has been acclaimed as 'the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world.'"
  },
  {
    name: "The Persistence of Memory",
    artist: "Salvador Dalí",
    movement: "Surrealism",
    technique: "Oil on Canvas",
    year: 1931,
    price: rand(100..999),
    description: "The Persistence of Memory is a seminal work by Salvador Dalí, showcasing his surrealist style. The painting features melting clocks draped over various objects in a barren landscape, representing the fluidity of time and the unconscious mind."
  },
  {
  name: "The Scream",
  artist: "Edvard Munch",
  movement: "Expressionism",
  technique: "Oil, tempera, and pastel on cardboard",
  year: 1893,
  price: rand(100..999),
  description: "The Scream is a well-known series of expressionist paintings and prints by Norwegian artist Edvard Munch. The works show a figure with an agonized expression against a landscape with a tumultuous orange sky. The painting's evocative imagery has made it one of the most famous icons of art history."
  },
  {
  name: "The Birth of Venus",
  artist: "Sandro Botticelli",
  movement: "Renaissance",
  technique: "Tempera on canvas",
  year: 1486,
  price: rand(100..999),
  description: "The Birth of Venus is a painting by Italian artist Sandro Botticelli. It depicts the goddess Venus arriving at the shore after her birth, emerging from the sea foam on a shell. The painting is considered one of the masterpieces of the Early Renaissance."
  },
  {
  name: "The Garden of Earthly Delights",
  artist: "Hieronymus Bosch",
  movement: "Renaissance",
  technique: "Oil on Oak Panels",
  year: 1490,
  price: rand(100..999),
  description: "The Garden of Earthly Delights is a triptych painting by the Early Netherlandish artist Hieronymus Bosch. It depicts a paradise, earthly delights, and hell, each panel illustrating a different stage of human morality and the consequences of sin. The painting is rich in symbolic imagery and has fascinated viewers for centuries."
  },
  {
  name: "Girl with a Pearl Earring",
  artist: "Johannes Vermeer",
  movement: "Dutch Golden Age",
  technique: "Oil on Canvas",
  year: 1665,
  price: rand(100..999),
  description: "Girl with a Pearl Earring is an oil painting by Dutch artist Johannes Vermeer. It depicts a girl wearing a turban and a large pearl earring. The painting is renowned for its subtle use of color, delicate depiction of light, and enigmatic expression, making it one of Vermeer's most famous works."
  },
  {
  name: "Les Demoiselles d'Avignon",
  artist: "Pablo Picasso",
  movement: "Cubism",
  technique: "Oil on Canvas",
  year: 1907,
  price: rand(100..999),
  description: "Les Demoiselles d'Avignon is a large oil painting created by Pablo Picasso. It marked a radical break from traditional composition and perspective in art. Depicting five nude female figures in a brothel, the painting is considered a seminal work in the development of modern art."
  },
  {
  name: "The Night Watch",
  artist: "Rembrandt",
  movement: "Dutch Golden Age",
  technique: "Oil on Canvas",
  year: 1642,
  price: rand(100..999),
  description: "The Night Watch is a famous painting by Dutch artist Rembrandt van Rijn. It depicts a city guard company moving out, led by Captain Frans Banning Cocq and Lieutenant Willem van Ruytenburch. The painting is celebrated for its use of light and shadow and its dynamic composition."
  },
  {
  name: "Water Lilies",
  artist: "Claude Monet",
  movement: "Impressionism",
  technique: "Oil on Canvas",
  year: 1919,
  price: rand(100..999),
  description: "Water Lilies is a series of approximately 250 oil paintings by French Impressionist artist Claude Monet. These paintings depict Monet's flower garden at his home in Giverny and were the main focus of his artistic production during the last thirty years of his life. The series is celebrated for its immersive depictions of light, color, and reflections."
  },
  {
  name: "The Kiss",
  artist: "Gustav Klimt",
  movement: "Symbolism",
  technique: "Oil and gold leaf on canvas",
  year: 1907,
  price: rand(100..999),
  description: "The Kiss is a painting by Austrian Symbolist artist Gustav Klimt. It depicts a couple embracing, their bodies entwined in elaborate robes adorned with gold leaf. The painting is celebrated for its ornate style, rich symbolism, and depiction of love and intimacy."
  },
  {
    name: "Guernica",
    artist: "Pablo Picasso",
    movement: "Cubism",
    technique: "Oil on Canvas",
    year: 1937,
    price: rand(100..999),
    description: "Guernica is a mural-sized oil painting by Spanish artist Pablo Picasso, completed in June 1937. It is considered one of Picasso's most powerful political statements, created as a response to the bombing of Guernica, a Basque Country town in northern Spain, by Nazi Germany and Fascist Italy during the Spanish Civil War."
  },
  {
    name: "The Son of Man",
    artist: "René Magritte",
    movement: "Surrealism",
    technique: "Oil on Canvas",
    year: 1964,
    price: rand(100..999),
    description: "The Son of Man is a painting by the Belgian surrealist artist René Magritte. It depicts a man in a suit and bowler hat, standing in front of a low wall, with a green apple floating in front of his face, obscuring his features. The painting explores themes of identity, perception, and the hidden aspects of the self."
  },
  {
    name: "American Gothic",
    artist: "Grant Wood",
    movement: "Regionalism",
    technique: "Oil on Beaverboard",
    year: 1930,
    price: rand(100..999),
    description: "American Gothic is a painting by Grant Wood. It depicts a farmer holding a pitchfork and his daughter standing beside him in front of a house with a distinctive Gothic window. The painting is often interpreted as a representation of rural American values and the stoic character of Midwesterners."
  },
  {
    name: "Whistler's Mother",
    artist: "James McNeill Whistler",
    movement: "Realism",
    technique: "Oil on Canvas",
    year: 1871,
    price: rand(100..999),
    description: "Arrangement in Grey and Black No. 1, best known under its colloquial name Whistler's Mother, is a painting by James McNeill Whistler. It depicts the artist's mother, Anna McNeill Whistler, sitting in a chair against a gray wall. The painting is celebrated for its simplicity, composition, and the affectionate portrayal of the artist's mother."
  },
  {
    name: "The Night Cafe",
    artist: "Vincent van Gogh",
    movement: "Post-Impressionism",
    technique: "Oil on Canvas",
    year: 1888,
    price: rand(100..999),
    description: "The Night Cafe is a painting by Vincent van Gogh. It depicts the interior of a café in Arles, France, with contrasting colors and bold brushwork. The painting conveys van Gogh's emotional state and his fascination with light and color."
  },
  {
    name: "The Arnolfini Portrait",
    artist: "Jan van Eyck",
    movement: "Renaissance",
    technique: "Oil on Oak Panel",
    year: 1434,
    price: rand(100..999),
    description: "The Arnolfini Portrait is a painting by Jan van Eyck. It depicts a wealthy couple, Giovanni di Nicolao Arnolfini and his wife, standing in a room. The painting is celebrated for its meticulous detail, use of symbolism, and realistic depiction of the interior space."
  },
]
