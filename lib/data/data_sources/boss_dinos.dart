// boss_dinos.dart (CORREGIDO: Rutas de Artefactos)

import '../models/dinosaur.dart';
import '../models/boss_info.dart';

final List<Dinosaur> bossDinos = [
  // ----------------------------------------------------------------------
  // 1. EL DRAGÓN (THE ISLAND)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'El Dragón',
    categories: ['boses', 'the_island', 'volaores'],
    imagePaths: ['assets/images/Dinos/Boss/Dragon.webp'],
    description: 'Uno de los jefes más desafiantes. Su ataque de fuego es letal contra dinos con alta salud. Se invoca en un obelisco.',

    isMountable: false,
    damageBase: 99999,
    healthBase: 432000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 55,
          healthBase: 432000,
          elementReward: 200,
          requiredTributes: [
            // PARTES DE DINOS (RUTA PADRE: /Tributos/)
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Sauropod_Vertebra.webp'),
            // ARTEFACTOS (RUTA HIJA: /Tributos/Artifact/)
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Cunning.webp'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Immune.webp'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Skylord.webp'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Strong.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 864000,
          elementReward: 400,
          requiredTributes: [
            // PARTES DE DINOS (RUTA PADRE: /Tributos/)
            TributeRequirement(itemName: 'Allosaurus Brain', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Allosaurus_Brain.webp'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilosaurus_Blubber.webp'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Giganotosaurus_Heart.webp'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalodon_Tooth.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Yutyrannus_Lungs.webp'),
            // ARTEFACTOS (RUTA HIJA: /Tributos/Artifact/)
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Cunning.webp'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Immune.webp'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Skylord.webp'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Strong.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 1296000,
          elementReward: 500,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Allosaurus Brain', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Allosaurus_Brain.webp'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilosaurus_Blubber.webp'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Giganotosaurus_Heart.webp'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalodon_Tooth.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Yutyrannus_Lungs.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Cunning.webp'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Immune.webp'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Skylord.webp'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Strong.webp'),
          ],
        ),
      ],
    ),
  ),

  // ----------------------------------------------------------------------
  // 2. BROODMOTHER LYSIX (THE ISLAND)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'Broodmother Lysrix',
    categories: ['boses', 'the_island'],
    imagePaths: ['assets/images/Dinos/Boss/Broodmother.webp'],
    description: 'Una araña gigante que invoca hordas de Araneos. Es uno de los primeros jefes que los supervivientes suelen enfrentar.',

    isMountable: false,
    damageBase: 100,
    healthBase: 216000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 50,
          healthBase: 216000,
          elementReward: 200,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Sarcosuchus Skin', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Sarcosuchus_Skin.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Hunter.webp'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Clever.webp'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Massive.webp'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Pack.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 70,
          healthBase: 432000,
          elementReward: 400,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Argentavis Talon', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Argentavis_Talon.webp'),
            TributeRequirement(itemName: 'Megalania Toxin', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalania_Toxin.webp'),
            TributeRequirement(itemName: 'Spinosaurus Sail', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Spinosaurus_Sail.webp'),
            TributeRequirement(itemName: 'Therizino Claws', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Therizino_Claws.webp'),
            TributeRequirement(itemName: 'Titanoboa Venom', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Titanoboa_Venom.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Hunter.webp'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Clever.webp'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Massive.webp'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Pack.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 95,
          healthBase: 648000,
          elementReward: 500,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Argentavis Talon', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Argentavis_Talon.webp'),
            TributeRequirement(itemName: 'Megalania Toxin', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalania_Toxin.webp'),
            TributeRequirement(itemName: 'Spinosaurus Sail', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Spinosaurus_Sail.webp'),
            TributeRequirement(itemName: 'Therizino Claws', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Therizino_Claws.webp'),
            TributeRequirement(itemName: 'Titanoboa Venom', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Titanoboa_Venom.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Hunter.webp'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Clever.webp'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Massive.webp'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Pack.webp'),
          ],
        ),
      ],
    ),
  ),

  // ----------------------------------------------------------------------
  // 3. MEGAPITHECUS (THE ISLAND)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'Megapithecus',
    categories: ['boses', 'the_island'],
    imagePaths: ['assets/images/Dinos/Boss/Megapithecus.webp'],
    description: 'Un gorila gigante y poderoso que lanza rocas y tiene una gran salud. Se invoca en un obelisco.',

    isMountable: false,
    damageBase: 300,
    healthBase: 180000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 60,
          healthBase: 180000,
          elementReward: 200,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Sauropod_Vertebra.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Brute.webp'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Lower_Caverns.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 80,
          healthBase: 360000,
          elementReward: 400,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Allosaurus Brain', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Allosaurus_Brain.webp'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilosaurus_Blubber.webp'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Giganotosaurus_Heart.webp'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalodon_Tooth.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Yutyrannus_Lungs.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Brute.webp'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Lower_Caverns.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 540000,
          elementReward: 500,
          requiredTributes: [
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Allosaurus Brain', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Allosaurus_Brain.webp'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilosaurus_Blubber.webp'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Giganotosaurus_Heart.webp'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Megalodon_Tooth.webp'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Tyrannosaurus_Arm.webp'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Yutyrannus_Lungs.webp'),
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Brute.webp'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Lower_Caverns.webp'),
          ],
        ),
      ],
    ),
  ),

  // ----------------------------------------------------------------------
  // 4. OVERSEER (THE ISLAND - Jefe final)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'Overseer',
    categories: ['boses', 'the_island', 'final'],
    imagePaths: ['assets/images/Dinos/Boss/Overseer.webp'],
    description: 'El jefe final de The Island. Sólo se puede acceder después de vencer a los otros tres jefes en la misma dificultad.',

    isMountable: false,
    damageBase: 1000,
    healthBase: 100000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 70,
          healthBase: 100000,
          elementReward: 1500,
          requiredTributes: [
            // TROFEOS (RUTA DE BOSSES)
            TributeRequirement(itemName: 'Dossier Rockwell', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dossier_Rockwell.webp'),
            TributeRequirement(itemName: 'Broodmother Trophy (Gamma)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Broodmother.webp'),
            TributeRequirement(itemName: 'Megapithecus Trophy (Gamma)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Megapithecus.webp'),
            TributeRequirement(itemName: 'Dragon Trophy (Gamma)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dragon.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 90,
          healthBase: 200000,
          elementReward: 3000,
          requiredTributes: [
            // TROFEOS (RUTA DE BOSSES)
            TributeRequirement(itemName: 'Dossier Rockwell', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dossier_Rockwell.webp'),
            TributeRequirement(itemName: 'Broodmother Trophy (Beta)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Broodmother.webp'),
            TributeRequirement(itemName: 'Megapithecus Trophy (Beta)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Megapithecus.webp'),
            TributeRequirement(itemName: 'Dragon Trophy (Beta)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dragon.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 300000,
          elementReward: 5000,
          requiredTributes: [
            // TROFEOS (RUTA DE BOSSES)
            TributeRequirement(itemName: 'Dossier Rockwell', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dossier_Rockwell.webp'),
            TributeRequirement(itemName: 'Broodmother Trophy (Alpha)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Broodmother.webp'),
            TributeRequirement(itemName: 'Megapithecus Trophy (Alpha)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Megapithecus.webp'),
            TributeRequirement(itemName: 'Dragon Trophy (Alpha)', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Dragon.webp'),
          ],
        ),
      ],
    ),
  ),

  // ----------------------------------------------------------------------
  // 5. MANTICORE (SCORCHED EARTH)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'Manticore',
    categories: ['boses', 'scorched_earth', 'volaores'],
    imagePaths: ['assets/images/Dinos/Boss/Manticora.webp'],
    description: 'El jefe final de Scorched Earth. Una criatura híbrida que ataca con proyectiles paralizantes y ataques aéreos.',

    isMountable: false,
    damageBase: 300,
    healthBase: 120000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 55,
          healthBase: 120000,
          elementReward: 200,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Crag.webp'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Mantis Claw', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Mantis_Claw.webp'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Deathworm_Horn.webp'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Thylacoleo_Hook-Claw.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 240000,
          elementReward: 400,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Crag.webp'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Mantis Claw', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Mantis_Claw.webp'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Deathworm_Horn.webp'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Thylacoleo_Hook-Claw.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 360000,
          elementReward: 500,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Crag.webp'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Destroyer.webp'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Gatekeeper.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Mantis Claw', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Mantis_Claw.webp'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Deathworm_Horn.webp'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Thylacoleo_Hook-Claw.webp'),
          ],
        ),
      ],
    ),
  ),

  // ----------------------------------------------------------------------
  // 6. ROCKWELL (ABERRATION)
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'Rockwell',
    categories: ['boses', 'aberration', 'final'],
    imagePaths: ['assets/images/Dinos/Boss/Rockwell.webp'],
    description: 'El jefe final de Aberration. Requiere una estrategia compleja para exponer su corazón.',

    isMountable: false,
    damageBase: 1000,
    healthBase: 150000,
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 55,
          healthBase: 150000,
          elementReward: 200,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Depths.webp'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Shadows.webp'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Stalker.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilisk_Scale.webp'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Karkinos_Claw.webp'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 5, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Reaper_King_Barb.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 300000,
          elementReward: 400,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Depths.webp'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Shadows.webp'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Stalker.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilisk_Scale.webp'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Karkinos_Claw.webp'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 10, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Reaper_King_Barb.webp'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 450000,
          elementReward: 500,
          requiredTributes: [
            // ARTEFACTOS
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Depths.webp'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Shadows.webp'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/images/Dinos/Boss/Tributos/Artifact/Artifact_of_the_Stalker.webp'),
            // PARTES DE DINOS
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Basilisk_Scale.webp'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Karkinos_Claw.webp'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 20, imagePath: 'assets/images/Dinos/Boss/Tributos/Alpha_Reaper_King_Barb.webp'),
          ],
        ),
      ],
    ),
  ),
];