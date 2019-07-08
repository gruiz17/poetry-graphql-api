# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Poem.destroy_all
Stanza.destroy_all
PoemLine.destroy_all

authors = Author.create(
  [
    {first_name: 'William', last_name: 'Shakespeare'},
    {first_name: 'John', last_name: 'Donne'},
    # {first_name: 'Samuel', last_name: 'Coleridge'},
    # {first_name: 'John', last_name: 'Keats'}
  ])

poems = Poem.create(
  [
    {title: 'Sonnet I', author: authors.first},
    {title: 'Sonnet II', author: authors.first},
    {title: 'Lovers Infiniteness', author: authors.second},
  ])

stanzas = Stanza.create(
  [
    {stanza_number: 1, poem: poems.first},
    {stanza_number: 1, poem: poems.second},
    {stanza_number: 1, poem: poems.third},
    {stanza_number: 2, poem: poems.third},
    {stanza_number: 3, poem: poems.third},
  ])

poem_lines = PoemLine.create(
  [
    {content: "FROM fairest creatures we desire increase,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 1, line_number_for_poem: 1},
    {content: "That thereby beauty's rose might never die,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 2, line_number_for_poem: 2},
    {content: "But as the riper should by time decease,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 3, line_number_for_poem: 3},
    {content: "His tender heir might bear his memory:", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 4, line_number_for_poem: 4},
    {content: "But thou, contracted to thine own bright eyes,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 5, line_number_for_poem: 5},
    {content: "Feed'st thy light'st flame with self-substantial fuel,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 6, line_number_for_poem: 6},
    {content: "Making a famine where abundance lies,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 7, line_number_for_poem: 7},
    {content: "Thyself thy foe, to thy sweet self too cruel.", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 8, line_number_for_poem: 8},
    {content: "Thou that art now the world's fresh ornament", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 9, line_number_for_poem: 9},
    {content: "And only herald to the gaudy spring,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 10, line_number_for_poem: 10},
    {content: "Within thine own bud buriest thy content", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 11, line_number_for_poem: 11},
    {content: "And, tender churl, makest waste in niggarding.", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 12, line_number_for_poem: 12},
    {content: "Pity the world, or else this glutton be,", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 13, line_number_for_poem: 13},
    {content: "To eat the world's due, by the grave and thee.", poem: poems.first, stanza: stanzas.first, line_number_for_stanza: 14, line_number_for_poem: 14},

    {content: "When forty winters shall beseige thy brow,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 1, line_number_for_poem: 1},
    {content: "And dig deep trenches in thy beauty's field,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 2, line_number_for_poem: 2},
    {content: "Thy youth's proud livery, so gazed on now,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 3, line_number_for_poem: 3},
    {content: "Will be a tatter'd weed, of small worth held:", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 4, line_number_for_poem: 4},
    {content: "Then being ask'd where all thy beauty lies,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 5, line_number_for_poem: 5},
    {content: "Where all the treasure of thy lusty days,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 6, line_number_for_poem: 6},
    {content: "To say, within thine own deep-sunken eyes,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 7, line_number_for_poem: 7},
    {content: "Were an all-eating shame and thriftless praise.", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 8, line_number_for_poem: 8},
    {content: "How much more praise deserved thy beauty's use,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 9, line_number_for_poem: 9},
    {content: "If thou couldst answer 'This fair child of mine", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 10, line_number_for_poem: 10},
    {content: "Shall sum my count and make my old excuse,'", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 11, line_number_for_poem: 11},
    {content: "Proving his beauty by succession thine!", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 12, line_number_for_poem: 12},
    {content: "This were to be new made when thou art old,", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 13, line_number_for_poem: 13},
    {content: "And see thy blood warm when thou feel'st it cold.", poem: poems.second, stanza: stanzas.second, line_number_for_stanza: 14, line_number_for_poem: 14},

    # infiniteness

    {content: "If yet I have not all thy love, ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 1, line_number_for_poem: 1},
    {content: "Dear, I shall never have it all; ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 2, line_number_for_poem: 2},
    {content: "I cannot breathe one other sigh, to move, ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 3, line_number_for_poem: 3},
    {content: "Nor can intreat one other tear to fall; ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 4, line_number_for_poem: 4},
    {content: "And all my treasure, which should purchase thee— ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 5, line_number_for_poem: 5},
    {content: "Sighs, tears, and oaths, and letters—I have spent. ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 6, line_number_for_poem: 6},
    {content: "Yet no more can be due to me, ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 7, line_number_for_poem: 7},
    {content: "Than at the bargain made was meant; ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 8, line_number_for_poem: 8},
    {content: "If then thy gift of love were partial, ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 9, line_number_for_poem: 9},
    {content: "That some to me, some should to others fall, ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 10, line_number_for_poem: 10},
    {content: "Dear, I shall never have thee all. ", poem: poems.third, stanza: stanzas.third, line_number_for_stanza: 11, line_number_for_poem: 11},

    {content: "Or if then thou gavest me all, ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 1, line_number_for_poem: 12},
    {content: "All was but all, which thou hadst then; ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 2, line_number_for_poem: 13},
    {content: "But if in thy heart, since, there be or shall ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 3, line_number_for_poem: 14},
    {content: "New love created be, by other men, ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 4, line_number_for_poem: 15},
    {content: "Which have their stocks entire, and can in tears, ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 5, line_number_for_poem: 16},
    {content: "In sighs, in oaths, and letters, outbid me, ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 6, line_number_for_poem: 17},
    {content: "This new love may beget new fears, ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 7, line_number_for_poem: 18},
    {content: "For this love was not vow'd by thee. ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 8, line_number_for_poem: 19},
    {content: "And yet it was, thy gift being general; ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 9, line_number_for_poem: 20},
    {content: "The ground, thy heart, is mine; whatever shall ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 10, line_number_for_poem: 21},
    {content: "Grow there, dear, I should have it all. ", poem: poems.third, stanza: stanzas.fourth, line_number_for_stanza: 11, line_number_for_poem: 22},

    {content: "Yet I would not have all yet, ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 1, line_number_for_poem: 23},
    {content: "He that hath all can have no more; ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 2, line_number_for_poem: 24},
    {content: "And since my love doth every day admit ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 3, line_number_for_poem: 25},
    {content: "New growth, thou shouldst have new rewards in store; ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 4, line_number_for_poem: 26},
    {content: "Thou canst not every day give me thy heart, ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 5, line_number_for_poem: 27},
    {content: "If thou canst give it, then thou never gavest it; ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 6, line_number_for_poem: 28},
    {content: "Love's riddles are, that though thy heart depart, ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 7, line_number_for_poem: 29},
    {content: "It stays at home, and thou with losing savest it; ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 8, line_number_for_poem: 30},
    {content: "But we will have a way more liberal, ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 9, line_number_for_poem: 31},
    {content: "Than changing hearts, to join them; so we shall ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 10, line_number_for_poem: 32},
    {content: "Be one, and one another's all. ", poem: poems.third, stanza: stanzas.fifth, line_number_for_stanza: 11, line_number_for_poem: 33},
  ])
