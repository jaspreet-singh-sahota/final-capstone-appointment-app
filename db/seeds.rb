# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Facility.create!(name: "Yoga",
                image_url: 'https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_485,ar_485:323,c_fit/dpr_2/v1/cult-media/v2web/workouts/1_id/PRODUCT_BNR_2020-02-04T13:19:29.014Z.png',
                brief_description: "Physical, Mental & Emotional Well Being | Strength | Flexibility | Stress reduction | Endurance",
                detailed_description: "Every class has an array of breathing techniques, a variety of asanas and meditation techniques. Helps in improving confidence & balance while gaining a stronger body in the process. ",
                free_trial: "3 days", 
                three_months_package: "100$",
                six_months_package: "180$",
                annual_package: "270$"
)

Facility.create!(name: "Boxing",
                image_url: 'https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_600,c_fit/dpr_2/v1/cult-media/v2web/workouts/4_id/PRODUCT_BNR_2020-07-21T18:32:59.441Z.png',
                brief_description: "Fat burn | Learn boxing | Stamina | Core strength",
                detailed_description: "Simple yet effective cardio and core workout designed to sweat away those calories, burn fat and learn Boxing at the same time.",
                free_trial: "3 days", 
                three_months_package: "100$",
                six_months_package: "180$",
                annual_package: "270$"
)

Facility.create!(name: "Dance Fitness",
                image_url: 'https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_600,c_fit/dpr_2/v1/cult-media/v2web/workouts/84_id/PRODUCT_BNR_2020-02-04T13:04:53.343Z.png',
                brief_description: "Stress reduction | Calorie Burning | Cardiovascular endurance",
                detailed_description: "A full body aerobic workout, divided into different genres of music providing peaks and troughs of intensity.",
                free_trial: "3 days", 
                three_months_package: "100$",
                six_months_package: "180$",
                annual_package: "270$"
)

Facility.create!(name: "cross fit",
                image_url: 'https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_485,ar_485:323,c_fit/dpr_2/v1/cult-media/v2web/workouts/5_id/PRODUCT_BNR_2020-02-04T13:17:06.754Z.png',
                brief_description: "Strength | Endurance | Mobility | Stamina",
                detailed_description: "A training methodology that creates stimulus for improved strength & endurance while helping participants build a great physique, improved range of motion and all round functional fitness.",
                free_trial: "3 days", 
                three_months_package: "100$",
                six_months_package: "180$",
                annual_package: "270$"
)

Facility.create!(name: "Workout",
                image_url: 'https://cdn-images.cure.fit/www-curefit-com/image/upload/fl_progressive,f_auto,q_auto:eco,w_485,ar_485:323,c_fit/dpr_2/v1/cult-media/v2web/workouts/22_id/PRODUCT_BNR_2020-03-04T11:36:46.263Z.png',
                brief_description: "Core Strength | Full body strength | Muscle Gain | Mobility",
                detailed_description: "A combination of primal movements, zero momentum reps & conditioning routines designed to improve muscle endurance and building lasting fitness.",
                free_trial: "3 days", 
                three_months_package: "100$",
                six_months_package: "180$",
                annual_package: "270$"
)

p "Seeding Completed"
