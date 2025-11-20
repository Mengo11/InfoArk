import '../models/dinosaur.dart';
import '../models/boss_info.dart';

final List<Dinosaur> bossDinos = [
  // ----------------------------------------------------------------------
  // 1. EL DRAGÓN (THE ISLAND) - Mantenido como referencia
  // ----------------------------------------------------------------------
  Dinosaur(
    name: 'El Dragón',
    categories: ['boses', 'the_island'],
    imagePaths: ['assets/images/Dinos/Bosses/Dragon.webp'],
    description: 'Uno de los jefes más desafiantes. Su ataque de fuego es letal contra dinos con alta salud. Se invoca en un obelisco.',

    // Configuración de Tameo y Combate
    isMountable: false,
    damageBase: 99999, // Daño muy alto
    healthBase: 432000, // HP del nivel Gamma
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
            TributeRequirement(itemName: 'Allosaur Brain', quantity: 1, imagePath: 'assets/icons/tribute/allosaur_brain.png'),
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/icons/tribute/artifact_cunning.png'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/icons/tribute/artifact_immune.png'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/icons/tribute/artifact_skylord.png'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/icons/tribute/artifact_strong.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 864000,
          elementReward: 400,
          requiredTributes: [
            TributeRequirement(itemName: 'Allosaur Brain', quantity: 5, imagePath: 'assets/icons/tribute/allosaur_brain.png'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 5, imagePath: 'assets/icons/tribute/basilo_blubber.png'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 5, imagePath: 'assets/icons/tribute/giga_heart.png'),
            TributeRequirement(itemName: 'Tusoteuthis Tentacle', quantity: 5, imagePath: 'assets/icons/tribute/tuso_tentacle.png'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 5, imagePath: 'assets/icons/tribute/rex_arm.png'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 5, imagePath: 'assets/icons/tribute/yuty_lungs.png'),
            // Artefactos (se mantienen en 1)
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/icons/tribute/artifact_cunning.png'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/icons/tribute/artifact_immune.png'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/icons/tribute/artifact_skylord.png'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/icons/tribute/artifact_strong.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 1296000,
          elementReward: 500,
          requiredTributes: [
            TributeRequirement(itemName: 'Allosaur Brain', quantity: 10, imagePath: 'assets/icons/tribute/allosaur_brain.png'),
            TributeRequirement(itemName: 'Basilosaurus Blubber', quantity: 20, imagePath: 'assets/icons/tribute/basilo_blubber.png'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 10, imagePath: 'assets/icons/tribute/giga_heart.png'),
            TributeRequirement(itemName: 'Tusoteuthis Tentacle', quantity: 10, imagePath: 'assets/icons/tribute/tuso_tentacle.png'),
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 15, imagePath: 'assets/icons/tribute/rex_arm.png'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 10, imagePath: 'assets/icons/tribute/yuty_lungs.png'),
            // Artefactos (se mantienen en 1)
            TributeRequirement(itemName: 'Artifact of the Cunning', quantity: 1, imagePath: 'assets/icons/tribute/artifact_cunning.png'),
            TributeRequirement(itemName: 'Artifact of the Immune', quantity: 1, imagePath: 'assets/icons/tribute/artifact_immune.png'),
            TributeRequirement(itemName: 'Artifact of the Skylord', quantity: 1, imagePath: 'assets/icons/tribute/artifact_skylord.png'),
            TributeRequirement(itemName: 'Artifact of the Strong', quantity: 1, imagePath: 'assets/icons/tribute/artifact_strong.png'),
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
    imagePaths: ['assets/images/Dinos/Bosses/Broodmother.webp'],
    description: 'Una araña gigante que invoca hordas de Araneos. Es uno de los primeros jefes que los supervivientes suelen enfrentar.',

    // Configuración de Combate
    isMountable: false,
    damageBase: 100,
    healthBase: 216000, // HP del nivel Gamma
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
            TributeRequirement(itemName: 'Titanoboa Venom', quantity: 1, imagePath: 'assets/icons/tribute/titanoboa_venom.png'),
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/icons/tribute/artifact_hunter.png'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/icons/tribute/artifact_clever.png'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/icons/tribute/artifact_massive.png'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/icons/tribute/artifact_pack.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 70,
          healthBase: 432000,
          elementReward: 400,
          requiredTributes: [
            TributeRequirement(itemName: 'Sarcosuchus Skin', quantity: 5, imagePath: 'assets/icons/tribute/sarco_skin.png'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 5, imagePath: 'assets/icons/tribute/megalodon_tooth.png'),
            TributeRequirement(itemName: 'Argentavis Talon', quantity: 5, imagePath: 'assets/icons/tribute/argie_talon.png'),
            TributeRequirement(itemName: 'Revenant Bone', quantity: 5, imagePath: 'assets/icons/tribute/revenant_bone.png'),
            TributeRequirement(itemName: 'Titanoboa Venom', quantity: 5, imagePath: 'assets/icons/tribute/titanoboa_venom.png'),
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 5, imagePath: 'assets/icons/tribute/sauropod_vertebra.png'),
            // Artefactos
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/icons/tribute/artifact_hunter.png'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/icons/tribute/artifact_clever.png'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/icons/tribute/artifact_massive.png'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/icons/tribute/artifact_pack.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 95,
          healthBase: 648000,
          elementReward: 500,
          requiredTributes: [
            TributeRequirement(itemName: 'Sarcosuchus Skin', quantity: 10, imagePath: 'assets/icons/tribute/sarco_skin.png'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 10, imagePath: 'assets/icons/tribute/megalodon_tooth.png'),
            TributeRequirement(itemName: 'Argentavis Talon', quantity: 10, imagePath: 'assets/icons/tribute/argie_talon.png'),
            TributeRequirement(itemName: 'Revenant Bone', quantity: 10, imagePath: 'assets/icons/tribute/revenant_bone.png'),
            TributeRequirement(itemName: 'Titanoboa Venom', quantity: 10, imagePath: 'assets/icons/tribute/titanoboa_venom.png'),
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 10, imagePath: 'assets/icons/tribute/sauropod_vertebra.png'),
            // Artefactos
            TributeRequirement(itemName: 'Artifact of the Hunter', quantity: 1, imagePath: 'assets/icons/tribute/artifact_hunter.png'),
            TributeRequirement(itemName: 'Artifact of the Clever', quantity: 1, imagePath: 'assets/icons/tribute/artifact_clever.png'),
            TributeRequirement(itemName: 'Artifact of the Massive', quantity: 1, imagePath: 'assets/icons/tribute/artifact_massive.png'),
            TributeRequirement(itemName: 'Artifact of the Pack', quantity: 1, imagePath: 'assets/icons/tribute/artifact_pack.png'),
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
    imagePaths: ['assets/images/Dinos/Bosses/Megapithecus.webp'],
    description: 'Un gorila gigante y poderoso que lanza rocas y tiene una gran salud. Se invoca en un obelisco.',

    // Configuración de Combate
    isMountable: false,
    damageBase: 300,
    healthBase: 180000, // HP del nivel Gamma
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
            TributeRequirement(itemName: 'Tusoteuthis Tentacle', quantity: 1, imagePath: 'assets/icons/tribute/tuso_tentacle.png'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/icons/tribute/artifact_brute.png'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/icons/tribute/artifact_lower_caverns.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 80,
          healthBase: 360000,
          elementReward: 400,
          requiredTributes: [
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 5, imagePath: 'assets/icons/tribute/rex_arm.png'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 5, imagePath: 'assets/icons/tribute/megalodon_tooth.png'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 5, imagePath: 'assets/icons/tribute/giga_heart.png'),
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 5, imagePath: 'assets/icons/tribute/sauropod_vertebra.png'),
            TributeRequirement(itemName: 'Tusoteuthis Tentacle', quantity: 5, imagePath: 'assets/icons/tribute/tuso_tentacle.png'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 5, imagePath: 'assets/icons/tribute/yuty_lungs.png'),
            // Artefactos
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/icons/tribute/artifact_brute.png'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/icons/tribute/artifact_lower_caverns.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 540000,
          elementReward: 500,
          requiredTributes: [
            TributeRequirement(itemName: 'Tyrannosaurus Arm', quantity: 10, imagePath: 'assets/icons/tribute/rex_arm.png'),
            TributeRequirement(itemName: 'Megalodon Tooth', quantity: 10, imagePath: 'assets/icons/tribute/megalodon_tooth.png'),
            TributeRequirement(itemName: 'Giganotosaurus Heart', quantity: 10, imagePath: 'assets/icons/tribute/giga_heart.png'),
            TributeRequirement(itemName: 'Sauropod Vertebra', quantity: 10, imagePath: 'assets/icons/tribute/sauropod_vertebra.png'),
            TributeRequirement(itemName: 'Tusoteuthis Tentacle', quantity: 10, imagePath: 'assets/icons/tribute/tuso_tentacle.png'),
            TributeRequirement(itemName: 'Yutyrannus Lungs', quantity: 10, imagePath: 'assets/icons/tribute/yuty_lungs.png'),
            // Artefactos
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Artifact of the Brute', quantity: 1, imagePath: 'assets/icons/tribute/artifact_brute.png'),
            TributeRequirement(itemName: 'Artifact of the Lower Caverns', quantity: 1, imagePath: 'assets/icons/tribute/artifact_lower_caverns.png'),
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
    imagePaths: ['assets/images/Dinos/Bosses/Overseer.webp'],
    description: 'El jefe final de The Island. Sólo se puede acceder después de vencer a los otros tres jefes en la misma dificultad.',

    // Configuración de Combate
    isMountable: false,
    damageBase: 1000,
    healthBase: 100000, // Su HP varía según la fase, este es un valor base simbólico.
    preferredFoods: [],
    torporDrainInfo: 'Inmune',
    isShoulderPet: false,
    isPassiveTame: false,

    bossInfo: BossInfo(
      difficulties: [
        BossDifficulty(
          difficultyName: 'Gamma',
          levelUnlocked: 70, // Nivel de Engram final
          healthBase: 100000,
          elementReward: 1500, // Recompensa alta por el jefe final
          requiredTributes: [
            TributeRequirement(itemName: 'Trofeo de Broodmother (Gamma)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_broodmother_gamma.png'),
            TributeRequirement(itemName: 'Trofeo de Megapithecus (Gamma)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_megapithecus_gamma.png'),
            TributeRequirement(itemName: 'Trofeo del Dragón (Gamma)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_dragon_gamma.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 90,
          healthBase: 200000,
          elementReward: 3000,
          requiredTributes: [
            TributeRequirement(itemName: 'Trofeo de Broodmother (Beta)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_broodmother_beta.png'),
            TributeRequirement(itemName: 'Trofeo de Megapithecus (Beta)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_megapithecus_beta.png'),
            TributeRequirement(itemName: 'Trofeo del Dragón (Beta)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_dragon_beta.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 300000,
          elementReward: 5000,
          requiredTributes: [
            TributeRequirement(itemName: 'Trofeo de Broodmother (Alpha)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_broodmother_alpha.png'),
            TributeRequirement(itemName: 'Trofeo de Megapithecus (Alpha)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_megapithecus_alpha.png'),
            TributeRequirement(itemName: 'Trofeo del Dragón (Alpha)', quantity: 1, imagePath: 'assets/icons/tribute/trophy_dragon_alpha.png'),
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
    categories: ['boses', 'scorched_earth'],
    imagePaths: ['assets/images/Dinos/Bosses/Manticora.webp'],
    description: 'El jefe final de Scorched Earth. Una criatura híbrida que ataca con proyectiles paralizantes y ataques aéreos.',

    // Configuración de Combate
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
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/icons/tribute/artifact_crag.png'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 5, imagePath: 'assets/icons/tribute/thyla_claw.png'),
            TributeRequirement(itemName: 'Mantis Claw', quantity: 5, imagePath: 'assets/icons/tribute/mantis_claw.png'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 5, imagePath: 'assets/icons/tribute/deathworm_horn.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 240000,
          elementReward: 400,
          requiredTributes: [
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/icons/tribute/artifact_crag.png'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 10, imagePath: 'assets/icons/tribute/thyla_claw.png'),
            TributeRequirement(itemName: 'Mantis Claw', quantity: 10, imagePath: 'assets/icons/tribute/mantis_claw.png'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 10, imagePath: 'assets/icons/tribute/deathworm_horn.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 360000,
          elementReward: 500,
          requiredTributes: [
            TributeRequirement(itemName: 'Artifact of the Crag', quantity: 1, imagePath: 'assets/icons/tribute/artifact_crag.png'),
            TributeRequirement(itemName: 'Artifact of the Destroyer', quantity: 1, imagePath: 'assets/icons/tribute/artifact_destroyer.png'),
            TributeRequirement(itemName: 'Artifact of the Gatekeeper', quantity: 1, imagePath: 'assets/icons/tribute/artifact_gatekeeper.png'),
            TributeRequirement(itemName: 'Thylacoleo Hook-Claw', quantity: 20, imagePath: 'assets/icons/tribute/thyla_claw.png'),
            TributeRequirement(itemName: 'Mantis Claw', quantity: 20, imagePath: 'assets/icons/tribute/mantis_claw.png'),
            TributeRequirement(itemName: 'Deathworm Horn', quantity: 20, imagePath: 'assets/icons/tribute/deathworm_horn.png'),
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
    imagePaths: ['assets/images/Dinos/Bosses/Rockwell.webp'],
    description: 'El jefe final de Aberration. Requiere una estrategia compleja para exponer su corazón.',

    // Configuración de Combate
    isMountable: false,
    damageBase: 1000,
    healthBase: 150000, // HP del nivel Gamma
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
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/icons/tribute/artifact_depths.png'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/icons/tribute/artifact_shadows.png'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/icons/tribute/artifact_stalker.png'),
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 5, imagePath: 'assets/icons/tribute/basilisk_scale.png'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 5, imagePath: 'assets/icons/tribute/karkinos_claw.png'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 5, imagePath: 'assets/icons/tribute/reaper_barb.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Beta',
          levelUnlocked: 75,
          healthBase: 300000,
          elementReward: 400,
          requiredTributes: [
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/icons/tribute/artifact_depths.png'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/icons/tribute/artifact_shadows.png'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/icons/tribute/artifact_stalker.png'),
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 10, imagePath: 'assets/icons/tribute/basilisk_scale.png'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 10, imagePath: 'assets/icons/tribute/karkinos_claw.png'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 10, imagePath: 'assets/icons/tribute/reaper_barb.png'),
          ],
        ),
        BossDifficulty(
          difficultyName: 'Alpha',
          levelUnlocked: 100,
          healthBase: 450000,
          elementReward: 500,
          requiredTributes: [
            TributeRequirement(itemName: 'Artifact of the Depths', quantity: 1, imagePath: 'assets/icons/tribute/artifact_depths.png'),
            TributeRequirement(itemName: 'Artifact of the Shadows', quantity: 1, imagePath: 'assets/icons/tribute/artifact_shadows.png'),
            TributeRequirement(itemName: 'Artifact of the Stalker', quantity: 1, imagePath: 'assets/icons/tribute/artifact_stalker.png'),
            TributeRequirement(itemName: 'Basilisk Scale', quantity: 20, imagePath: 'assets/icons/tribute/basilisk_scale.png'),
            TributeRequirement(itemName: 'Karkinos Claw', quantity: 20, imagePath: 'assets/icons/tribute/karkinos_claw.png'),
            TributeRequirement(itemName: 'Reaper King Barb', quantity: 20, imagePath: 'assets/icons/tribute/reaper_barb.png'),
          ],
        ),
      ],
    ),
  ),
];