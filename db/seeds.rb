# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Suppression des données existantes
puts "destruction des utilisateurs, des articles et des commentaires"

User.destroy_all
Post.destroy_all

puts "destruction faite"

# Creation des utilisateurs

# Creation des articles
puts "creation des articles"

posts =[{ title: "30 basiques à avoir dans sa garde-robe à l’automne",
            subtitle: "Alors que les températures ne vont pas tarder à se rafraîchir, il est temps de repenser sa garde-robe automnale.",
            content: "Imprimé serpent, denim en all-over, empiècements en cuir, carreaux de toutes sortes, parkas démesurées… Si l’automne s’annonce singulier et audacieux, pas question d’y mettre un pied sans armer son vestiaire anti-frimas d’incontournables de saison. Un tailleur bien coupé pour s’affirmer, une veste en jean parce qu’elle est indémodable, un denim beige pour briller, une blouse fleurie pour conter fleurette, un blazer XXL pour se la jouer désinvolte, une peau lainée pour s’y lover, des mocassins tendances pour battre le pavé… Un dressing qui s’annonce cocon à travers un prisme de pièces complices, familières, à l’allure rassurante et assurée. Et pourtant, les tendances mode automne-hiver 2023-2024 ne manquent pas de dresser un florilège d'envies stylistiques pointues, rétro, pile dans l’air du temps. L’occasion de passer en revue les 30 basiques à avoir dans sa garde-robe à l’automne. À bon entendeur.",
            category: "blabla",
            image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.hubspot.com%2Fwebsite%2Fcss-margin-vs-padding&psig=AOvVaw3CXS_tsWphl-6pi1UICOcI&ust=1712326108562000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOiD-PzdqIUDFQAAAAAdAAAAABAE",
            created_at: DateTime.now - 15.days},
            {title: "L'oeil de la styliste : pourquoi votre miroir vous ment un peu, beaucoup",
            subtitle: "Même si vous passez peu de temps devant la glace, vous ne pouvez pas éviter totalement votre reflet. Miroir d’ascenseur, vitrine, rétroviseur, selfie, réunion en visio… Et ce que vous voyez ne correspond pas toujours au réel.",
            content: "Cuisses rondes, jambes arquées, cernes marquées… Miroir, mon beau miroir, et si tu arrêtais de me trouver des complexes ? Contrairement au miroir de la sorcière de Blanche-Neige, le nôtre nous voit rarement comme on est. Normal, les miroirs ne reflètent qu’une représentation d’une réalité parmi d’autres. Déjà, d’un point de vue technique, lorsque vous vous regardez, vous vous voyez en image inversée : pour vous, le côté droit de votre visage et de votre corps se placent à gauche. Et puis, vous avez sûrement remarqué que les miroirs ne sont pas tous aussi amicaux. Selon leur épaisseur, l’éclairage et la façon dont ils ont été posés, ils vous reflètent avec plus ou moins de fidélité. Ils déforment, grossissent ou allongent subtilement ou carrément grossièrement. Leurs dimensions aussi transforment votre image. Entre une étroite et longue glace rectangulaire, un vaste miroir de château et un carré qui s’arrête à mi-cuisses, vous ne verrez pas la même personne mais une femme avec trois silhouettes différentes. Et puis, contrairement à la vraie vie où on vous regarde en 4 D, face aux miroirs, vous avez une vision de vous en 2 D. Avouez que c’est réducteur ! Et surtout, au-delà des apparences, il y a votre perception à vous et tout ce que vous pensez voir et qui n’appartient qu’à votre histoire personnelle.",
            category: "blabla",
            image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hostinger.co.uk%2Ftutorials%2Fpadding-vs-margin&psig=AOvVaw3CXS_tsWphl-6pi1UICOcI&ust=1712326108562000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOiD-PzdqIUDFQAAAAAdAAAAABAJ",
            created_at: DateTime.now - 10.days},
            {title: "Voici l’astuce facile pour des belles ondulations selon le champion du monde de coiffure",
            subtitle: "Le chef de cabine coiffure Diogo Pereira-Nunès, sacré champion du monde la coiffure, nous révèle les secrets de la mise en beauté du défilé Victoria Tomas printemps – été 2024.",
            content: "Pour le début de la semaine de la mode parisienne, Victoria Tomas a posé ses valises au Palais de la Femme dans le 11ème arrondissement de Paris. Quelques heures avant le début des festivités, nous nous sommes infiltrés dans les coulisses du show. Notre objectif ? Rencontrer Diogo Pereira-Nunès, formateur chez Jean-Louis David, élu double champion du monde de la coiffure en 2022. Chef de cabine coiffure du défilé, l’expert a imaginé en collaboration avec Victoria Feldman et Tomas Berzins et aidé d'une armée de coiffeurs Jean-Louis David une mise en beauté ultra naturelle. « Le naturel était vraiment le maitre-mot pour cette saison. C’est un look travaillé, mais qui ne dénature pas le mannequin. On a gardé l’identité de chaque nature de cheveux », nous explique le hairstylist. Au menu : les cheveux lisses ont été sublimés tandis que les ondulations des cheveux bouclés ont été parfaitement définies.",
            category: "blabla",
            image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.hostinger.co.uk%2Ftutorials%2Fpadding-vs-margin&psig=AOvVaw3CXS_tsWphl-6pi1UICOcI&ust=1712326108562000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOiD-PzdqIUDFQAAAAAdAAAAABAJ",
            created_at: DateTime.now - 5.days}],

posts.each do |post|
  Post.create!(
    title: post[:title],
    content: post[:content],
    category: post[:category],
    image: post[:image]  )
end
puts "les  articles sont crees"

#creation des commentaires
puts "Les seeds sont terminées!!"
