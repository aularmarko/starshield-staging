# frozen_string_literal: true

# rubocop:disable Metrics/ClassLength
class Vin::ToyotaVinDecoder < Vin::VinDecoder
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/AbcSize
  def vin_associations
    [
      # 2012 - Yaris for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [375],
        part_numbers: []
      },
      # 2012 - Yaris NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [298],
        part_numbers: []
      },
      # Yaris 3D LB
      {
        vin_rules: [
          { position: 3, possible_characters: %w[J], equal: true },
          { position: 7, possible_characters: %w[3], equal: true }
        ],
        kit_ids: [14],
        part_numbers: []
      },
      # Yaris S LB
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[3], equal: true }
        ],
        kit_ids: [15],
        part_numbers: []
      },
      # Yaris Sedan
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[3], equal: true }
        ],
        kit_ids: [16],
        part_numbers: []
      },
      # 2008 - 2009 Highlander
      {
        vin_rules: [
          { position: 2, possible_characters: %w[E], equal: true },
          { position: 7, possible_characters: %w[A], equal: true },
          { position: 9, possible_characters: %w[8 9], equal: true }
        ],
        kit_ids: [5],
        part_numbers: []
      },
      # 2009 Venza
      {
        vin_rules: [
          { position: 2, possible_characters: %w[3], equal: true },
          { position: 7, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [20],
        part_numbers: []
      },
      # Sequoia
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [21],
        part_numbers: []
      },
      # HS - Supra?
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [47, 49],
        part_numbers: []
      },
      # RX 2010
      {
        vin_rules: [
          { position: 2, possible_characters: %w[2 J], equal: true },
          { position: 7, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [29, 40],
        part_numbers: []
      },
      # 2012- Camry for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [359],
        part_numbers: []
      },
      # 2012- Camry NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [283],
        part_numbers: []
      },
      # 2012- Camry NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [283],
        part_numbers: []
      },
      # Camry
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [1],
        part_numbers: []
      },
      # Camry
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [1],
        part_numbers: []
      },
      # 2010-2013 4Runner for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true },
          { position: 9, possible_characters: %w[A B C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [379],
        part_numbers: []
      },
      # 2010-2013 4Runner NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true },
          { position: 9, possible_characters: %w[A B C D], equal: true }
        ],
        kit_ids: [48],
        part_numbers: []
      },
      # 4Runner
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true }
        ],
        kit_ids: [10],
        part_numbers: []
      },
      # FJ Cruiser for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[E], equal: true },
          { position: 7, possible_characters: %w[F], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [368],
        part_numbers: []
      },
      # FJ Cruiser NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[E], equal: true },
          { position: 7, possible_characters: %w[F], equal: true }
        ],
        kit_ids: [11],
        part_numbers: []
      },
      # 2013- Lexus LS
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[D], equal: true }
        ],
        kit_ids: [349],
        part_numbers: []
      },
      # 2010-2012 Lexus LS
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[A B C], equal: true }
        ],
        kit_ids: [53, 54],
        part_numbers: []
      },
      # Lexus LS
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true }
        ],
        kit_ids: [30, 41],
        part_numbers: []
      },
      # 2013 Land Cruiser for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [377],
        part_numbers: []
      },
      # 2013 Land Cruiser NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[D], equal: true }
        ],
        kit_ids: [313, 314],
        part_numbers: []
      },
      # 2008-2012 Land Cruiser
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[8 9 A B C], equal: true }
        ],
        kit_ids: [12],
        part_numbers: []
      },
      # 2013 - 2017 RAV4 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[D E F G H], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [412],
        part_numbers: []
      },
      # 2013 - 2017 RAV4 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[D E F G H], equal: true }
        ],
        kit_ids: [344],
        part_numbers: []
      },
      # 2009-2012 Rav4 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [371],
        part_numbers: []
      },
      # 2009-2012 Rav4 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true }
        ],
        kit_ids: [13],
        part_numbers: []
      },
      # 2010-2017 Venza for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[3], equal: true },
          { position: 7, possible_characters: %w[B], equal: true },
          { position: 9, possible_characters: %w[A], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [363],
        part_numbers: []
      },
      # 2010-2017 Venza NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[3], equal: true },
          { position: 7, possible_characters: %w[B], equal: true },
          { position: 9, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [20],
        part_numbers: []
      },
      # Tundra for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [367],
        part_numbers: []
      },
      # Tundra NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        kit_ids: [23],
        part_numbers: []
      },
      # 2010 - Sequoia for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [362],
        part_numbers: []
      },
      # 2010 - Sequoia NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        kit_ids: [21],
        part_numbers: []
      },
      # Scion FRS for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1 A], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [365],
        part_numbers: []
      },
      # Scion FRS NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1 A], equal: true },
          { position: 7, possible_characters: %w[1], equal: true }
        ],
        kit_ids: [315],
        part_numbers: []
      },
      # Scion iQ for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[0], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [378],
        part_numbers: []
      },
      # Scion iQ NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[0], equal: true }
        ],
        kit_ids: [287],
        part_numbers: []
      },
      # 2011- Scion tC for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[7], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [366],
        part_numbers: []
      },
      # 2011- Scion tC NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[7], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        kit_ids: [59],
        part_numbers: []
      },
      # 2014 Scion tC for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[7], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [431],
        part_numbers: []
      },
      # 2014 Scion tC NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[7], equal: true }
        ],
        kit_ids: [423],
        part_numbers: []
      },
      # Scion xD for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[4], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [382],
        part_numbers: []
      },
      # Scion xD NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[4], equal: true }
        ],
        kit_ids: [26],
        part_numbers: []
      },
      # Lexus GS/GS F-Sport 2019
      {
        vin_rules: [
          { position: 4, possible_characters: %w[A Z], equal: true },
          { position: 7, possible_characters: %w[L], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-30190
          PT907-30190-FF
          PT907-30190-DC
          PT907-30190-MR
        ]
      },
      # Lexus GS-F 2019-2020
      {
        vin_rules: [
          { position: 4, possible_characters: %w[P], equal: true },
          { position: 7, possible_characters: %w[L], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-30191
          PT907-30191-FF
          PT907-30191-DC
          PT907-30191-MR
        ]
      },
      # 2013-2018 Lexus GS/GS F Sport
      {
        vin_rules: [
          { position: 7, possible_characters: %w[L], equal: true }
        ],
        kit_ids: [306, 307, 308],
        part_numbers: []
      },
      # 2009-2012 Lexus GS
      {
        vin_rules: [
          { position: 7, possible_characters: %w[S], equal: true }
        ],
        kit_ids: [27, 38],
        part_numbers: []
      },
      # 2009 Lexus ES
      {
        vin_rules: [
          { position: 7, possible_characters: %w[G], equal: true },
          { position: 9, possible_characters: %w[9], equal: true }
        ],
        kit_ids: [28, 39],
        part_numbers: []
      },
      # 2010-2012 ES
      {
        vin_rules: [
          { position: 7, possible_characters: %w[G], equal: true },
          { position: 9, possible_characters: %w[A B C], equal: true }
        ],
        kit_ids: [51, 52],
        part_numbers: []
      },
      # 2013-2015 Lexus ES
      {
        vin_rules: [
          { position: 7, possible_characters: %w[G], equal: true },
          { position: 9, possible_characters: %w[D E F], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-33130
          PT907-33130-FF
        ]
      },
      # Lexus LX
      {
        vin_rules: [
          { position: 7, possible_characters: %w[W], equal: true }
        ],
        kit_ids: [32, 43],
        part_numbers: []
      },
      # Scion SC
      {
        vin_rules: [
          { position: 7, possible_characters: %w[Y], equal: true }
        ],
        kit_ids: [36, 44],
        part_numbers: []
      },
      # Lexus IS-C
      {
        vin_rules: [
          { position: 3, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[2], equal: true }
        ],
        kit_ids: [33, 45],
        part_numbers: []
      },
      # Lexus IS-F
      {
        vin_rules: [
          { position: 4, possible_characters: %w[P], equal: true },
          { position: 7, possible_characters: %w[2], equal: true }
        ],
        kit_ids: [34, 46],
        part_numbers: []
      },
      # Lexus IS 2010+
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B C], equal: true },
          { position: 4, possible_characters: %w[F E], equal: true },
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[A B C D], equal: true }
        ],
        kit_ids: [33, 45],
        part_numbers: []
      },
      # Lexus IS
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B C], equal: true },
          { position: 4, possible_characters: %w[K E], equal: true },
          { position: 7, possible_characters: %w[2], equal: true }
        ],
        kit_ids: [33, 45],
        part_numbers: []
      },
      # Lexus IS 2014
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[E], equal: true }
        ],
        kit_ids: [430, 428],
        part_numbers: []
      },
      # Lexus IS300
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true }
        ],
        kit_ids: [35],
        part_numbers: []
      },
      # 2019-2021 Tundra
      {
        vin_rules: [
          { position: 2, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-34190
          PT907-34190-FF
          PT907-34190-DC
          PT907-34190-DD
          PT907-34190-MR
        ]
      },
      # Tundra 2014 - 2018
      {
        vin_rules: [
          { position: 2, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true }
        ],
        kit_ids: [432],
        part_numbers: []
      },
      # Lexus IS 2014-2015
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        kit_ids: [426, 425],
        part_numbers: []
      },
      # 2014 Camry for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[E], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [359],
        part_numbers: []
      },
      # 2014 Camry NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[E], equal: true }
        ],
        kit_ids: [283],
        part_numbers: []
      },
      # Land Cruiser 2014-2015 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-609SS-HD
        ]
      },
      # Land Cruiser 2014-2015 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60131
        ]
      },
      # Yaris S LB for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[3], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-528SS-HD
        ]
      },
      # Yaris S LB NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[3], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52121
        ]
      },
      # 2014 - 2018 Yaris for SET
      {
        vin_rules: [
          { position: 0, possible_characters: %w[V], equal: true },
          { position: 1, possible_characters: %w[N], equal: true },
          { position: 2, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true },
          { position: 10, possible_characters: %w[D A], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-528SS-HD
        ]
      },
      # 2014 - 2018 Yaris NON SET
      {
        vin_rules: [
          { position: 0, possible_characters: %w[V], equal: true },
          { position: 1, possible_characters: %w[N], equal: true },
          { position: 2, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true },
          { position: 10, possible_characters: %w[D A], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52121
        ]
      },
      # 2014 - 2017 Lexus LS
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[E F G H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-50138
        ]
      },
      # Lexus LS 2019-2021
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-50190
          PT907-50190-FF
          PT907-50190-DC
          PT907-50190-MR
        ]
      },
      # Lexus LS 2018
      {
        vin_rules: [
          { position: 2, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-50180
          PT907-50180-AA
        ]
      },
      # 2014-2021 4Runner for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true },
          { position: 9, possible_characters: %w[E F G H J K L M], equal: true },
          { position: 10, possible_characters: %w[5], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-891SS-HD
          00016-895SS
          00016-899SS
        ]
      },
      # 4Runner 2014-2018 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true },
          { position: 10, possible_characters: %w[5], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-89100
          PT907-89100-FF
        ]
      },
      # 4Runner 2019-2020 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[R], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true },
          { position: 10, possible_characters: %w[5], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-89190
          PT907-89190-FF
          PT907-89190-DC
          PT907-89190-MR
        ]
      },
      # 2014 - 2018 Avalon for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 7, possible_characters: %w[B], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true },
          { position: 10, possible_characters: %w[U], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-078SS-HD
          00016-PPCF313AVA
        ]
      },
      # 2014 - 2018 Avalon NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 7, possible_characters: %w[B], equal: true },
          { position: 9, possible_characters: %w[E F G H J], equal: true },
          { position: 10, possible_characters: %w[U], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-07130
        ]
      },
      # 2019-2021 Avalon
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 7, possible_characters: %w[B], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true },
          { position: 10, possible_characters: %w[U], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-07192
          PT907-07190-AA
          PT907-07190-DC
          PT907-07190-MR
        ]
      },
      # Lexus IS-C 2014
      {
        vin_rules: [
          { position: 3, possible_characters: %w[F], equal: true },
          { position: 6, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[E], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-53101
          PT907-53101-FF
        ]
      },
      # 2015 - 2017 Camry
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[F G H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-03150
        ]
      },
      # 2019-2021 Tacoma Sport and NON-Sport
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-35190
          PT907-35191
          PT907-35192
          PT907-35190-FF
          PT907-35191-FF
          PT907-35190-DC
          PT907-35190-MR
          PT907-35190-MB
        ]
      },
      # 2016 - 2018 Tacoma Sport and NON-Sport
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-35162
          PT907-35160-AA
          PT907-35160
          PT907-35161
          PT907-35161-AA
        ]
      },
      # 2014-2015 Tacoma for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-356SS-HD
        ]
      },
      # 2014-2015 Tacoma NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-35120
        ]
      },
      # 2012- Tacoma X-Runner
      {
        vin_rules: [
          { position: 3, possible_characters: %w[T], equal: true },
          { position: 4, possible_characters: %w[U], equal: true },
          { position: 6, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [370],
        part_numbers: []
      },
      # 2012-2013 Tacoma for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [369],
        part_numbers: []
      },
      # 2012-2013 Tacoma NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[N], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [18],
        part_numbers: []
      },
      # Lexus IS 2021
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-53210
          PT907-53210-FF
          PT907-53210-DC
          PT907-53210-MR
        ]
      },
      # Lexus IS 2019-2020
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-53190
          PT907-53190-FF
          PT907-53190-DC
          PT907-53190-MR
        ]
      },
      # Lexus IS 2016-2018
      {
        vin_rules: [
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-53140
          PT907-53140-FF
        ]
      },
      # 2016 - 2018 Lexus ES
      {
        vin_rules: [
          { position: 7, possible_characters: %w[G], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-33160
          PT907-33160-AA
        ]
      },
      # Toyota Landcruiser 2020-2021
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60201
          PT907-60190-FF
          PT907-60190-DC
          PT907-60201-MR
        ]
      },
      # Toyota Landcruiser 2019
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60190
          PT907-60190-FF
          PT907-60190-DC
          PT907-60190-MR
        ]
      },
      # Toyota Landcruiser 2016-2018
      {
        vin_rules: [
          { position: 7, possible_characters: %w[J], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60162
          PT907-60162-AA
        ]
      },
      # 2019-2021 Lexus RX
      {
        vin_rules: [
          { position: 7, possible_characters: %w[A], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48190
          PT907-48190-DC
          PT907-48190-MR
        ]
      },
      # 2016 - 2018 Lexus RX
      {
        vin_rules: [
          { position: 7, possible_characters: %w[A], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48160
        ]
      },
      # 2008-2017 Sequoia
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-0C100
        ]
      },
      # 2019-2021 Sequoia
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-0C190
          PT907-0C190-AA
          PT907-0C190-DC
          PT907-0C190-MR
        ]
      },
      # 2018 Sequoia
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-0C180
          PT907-0C180-AA
        ]
      },
      # Lexus LC 2019-2021
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H B E D A K C], equal: true },
          { position: 4, possible_characters: %w[Y P], equal: true },
          { position: 7, possible_characters: %w[Y], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-11190
          PT907-11190-FF
          PT907-11190-DC
          PT907-11190-MR
        ]
      },
      # Lexus LC 2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H B E D A K C], equal: true },
          { position: 4, possible_characters: %w[Y P], equal: true },
          { position: 7, possible_characters: %w[Y], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-11180
          PT907-11180-AA
        ]
      },
      # 2019-2020 Camry
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-03190
          PT907-03190-FF
          PT907-03190-DC
          PT907-03190-MR
        ]
      },
      # 2018 Camry
      {
        vin_rules: [
          { position: 7, possible_characters: %w[K], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-03181
          PT907-03181-AA
        ]
      },
      # 2018 RAV4
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-42130
          PT907-42130-FF
          PT907-42180
          PT907-42180-AA
        ]
      },
      # 2019-2020 Lexus ES
      {
        vin_rules: [
          { position: 2, possible_characters: %w[A H], equal: true },
          { position: 3, possible_characters: %w[B E G D F C], equal: true },
          { position: 7, possible_characters: %w[G 1], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-33200
          PT907-33200-FF
          PT907-33200-DC
          PT907-33200-MR
        ]
      },
      # 2019-2021 RAV4
      {
        vin_rules: [
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-42190
          PT907-42190-FF
          PT907-42190-MR
          PT907-42190-DC
          PT907-42195
          PT907-42195-FF
        ]
      },
      # Lexus RC-F 2019-2020
      {
        vin_rules: [
          { position: 0, possible_characters: %w[5], equal: false },
          { position: 3, possible_characters: %w[H S Y D G], equal: true },
          { position: 4, possible_characters: %w[P], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-24195
          PT907-24195-FF
          PT907-24195-DC
          PT907-24195-MR
        ]
      },
      # Lexus RC-F 2015-2018
      {
        vin_rules: [
          { position: 0, possible_characters: %w[5], equal: false },
          { position: 3, possible_characters: %w[H S Y D G], equal: true },
          { position: 4, possible_characters: %w[P], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[F G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-24151
          PT907-24151-FF
        ]
      },
      # Lexus RC\RC F-Sport 2019-2020
      {
        vin_rules: [
          { position: 0, possible_characters: %w[5], equal: false },
          { position: 3, possible_characters: %w[H S Y D G], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-24190
          PT907-24190-FF
          PT907-24190-DC
          PT907-24190-MR
        ]
      },
      # Lexus RC\RC F-Sport 2015-2018
      {
        vin_rules: [
          { position: 0, possible_characters: %w[5], equal: false },
          { position: 3, possible_characters: %w[H S Y D G], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[F G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-24150
          PT907-24150-FF
        ]
      },
      # Sienna 2021
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-08210
          PT907-08210-FF
          PT907-08210-DC
          PT907-08210-MR
        ]
      },
      # Sienna 2019-2020
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-08190
          PT907-08190-FF
          PT907-08190-DC
          PT907-08190-MR
          PT907-08190-MB
        ]
      },
      # Sienna 2018
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-08180
          PT907-08180-FF
        ]
      },
      # Sienna 2014-2017 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[E F G H], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-088SS-HD
        ]
      },
      # Sienna 2014-2017 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[E F G H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-08110
        ]
      },
      # Sienna 2011-2013 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [361],
        part_numbers: []
      },
      # Sienna 2011-2013 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        kit_ids: [56],
        part_numbers: []
      },
      # Sienna 2008-2010
      {
        vin_rules: [
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        kit_ids: [22],
        part_numbers: []
      },
      # Lexus LX 2019-2021
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H D F], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60191
          PT907-60191-DC
          PT907-60191-MR
        ]
      },
      # Lexus LX 2016-2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H D F], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60160
        ]
      },
      # Lexus LX 2014-2015
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H D F], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[E F], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60130
          PT907-60130-FF
        ]
      },
      # Lexus LX 2013
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H D F], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[D], equal: true }
        ],
        kit_ids: [310, 311, 312],
        part_numbers: []
      },
      # Lexus LX 2010-2012
      {
        vin_rules: [
          { position: 3, possible_characters: %w[H D F], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[A B C], equal: true }
        ],
        kit_ids: [32, 43],
        part_numbers: []
      },
      # C-HR 2019-2021
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 4, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-1C182
          PT907-1C182-FF
          PT907-1C182-DC
          PT907-1C182-MR
        ]
      },
      # C-HR 2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 4, possible_characters: %w[H], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-1C180
          PT907-1C180-AA
        ]
      },
      # Lexus GX 2019-2021
      {
        vin_rules: [
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60192
          PT907-60192-FF
          PT907-60192-DC
          PT907-60192-MR
          PT907-60192-MB
        ]
      },
      # Lexus GX 2016-2018
      {
        vin_rules: [
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-60100
          PT907-60100-FF
        ]
      },
      # Lexus GX 2009
      {
        vin_rules: [
          { position: 7, possible_characters: %w[X], equal: true }
        ],
        kit_ids: [31, 42],
        part_numbers: []
      },
      # Corolla L\LE\XLE 2020-2022
      {
        vin_rules: [
          { position: 6, possible_characters: %w[A D], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[L M N], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-02200
          PT907-02200-AA
          PT907-02200-DC
          PT907-02200-MR
        ]
      },
      # Corolla SE\XSE 2020-2022
      {
        vin_rules: [
          { position: 6, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[L M N], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-02203
          PT907-02203-AA
          PT907-02200-DC
          PT907-02200-MR
        ]
      },
      # Corolla 2014-2019 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[E F G H J K], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [435],
        part_numbers: []
      },
      # Corolla 2014-2019 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[E F G H J K], equal: true }
        ],
        kit_ids: [433],
        part_numbers: []
      },
      # Corolla Hatchback 2020-2021 and Corolla LE Hybrid 2020
      {
        vin_rules: [
          { position: 6, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-12190
          PT907-12190-AA
          PT907-12190-DC
          PT907-12190-MR
          PT907-02200
          PT907-02200-AA
          PT907-02200-DC
          PT907-02200-MR
        ]
      },
      # Corolla Hatchback 2019
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 4, possible_characters: %w[4], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-12190
          PT907-12190-AA
          PT907-12190-DC
          PT907-12190-MR
        ]
      },
      # Corolla iM 2017-2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 4, possible_characters: %w[A], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907--12160
          PT907--12160-AA
        ]
      },
      # Scion iM 2016
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 4, possible_characters: %w[A], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[G], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-12160
        ]
      },
      # Corolla 2008-2013 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[E], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          PT907-12160
        ]
      },
      # Corolla 2008-2013 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[E], equal: true }
        ],
        kit_ids: [17],
        part_numbers: []
      },
      # Scion xB 2009-2015 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K Z], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[A], equal: false }
        ],
        user_rules: set_user_ids,
        kit_ids: [381],
        part_numbers: []
      },
      # Scion xB 2009-2015 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K Z], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[A], equal: false }
        ],
        kit_ids: [24],
        part_numbers: []
      },
      # Matrix 2008-2013 for SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[E], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [364],
        part_numbers: []
      },
      # Matrix 2008-2013 NON SET
      {
        vin_rules: [
          { position: 7, possible_characters: %w[E], equal: true }
        ],
        kit_ids: [50],
        part_numbers: []
      },
      # 2021 Venza
      {
        vin_rules: [
          { position: 3, possible_characters: %w[A], equal: true },
          { position: 4, possible_characters: %w[A], equal: true },
          { position: 6, possible_characters: %w[A], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48210
          PT907-48210-FF
          PT907-48210-DC
          PT907-48210-MR
        ]
      },
      # Highlander XSE 2021
      {
        vin_rules: [
          { position: 3, possible_characters: %w[J L], equal: true },
          { position: 4, possible_characters: %w[Z], equal: true },
          { position: 6, possible_characters: %w[A B], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48204
          PT907-48204-FF
          PT907-48200-DC
          PT907-48200-MR
        ]
      },
      # Highlander 2020-2021
      {
        vin_rules: [
          { position: 4, possible_characters: %w[Z B A], equal: true },
          { position: 6, possible_characters: %w[A B C], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48200
          PT907-48200-FF
          PT907-48200-DC
          PT907-48200-MR
        ]
      },
      # Lexus UX 2019-2020
      {
        vin_rules: [
          { position: 6, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-76190
          PT907-76190-FF
          PT907-76190-DC
          PT907-76190-MR
        ]
      },
      # Highlander 2014-2019 for SET
      {
        vin_rules: [
          { position: 6, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[E F G H J K], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-482SS-HD
        ]
      },
      # Highlander 2014-2019 NON SET
      {
        vin_rules: [
          { position: 6, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[E F G H J K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-48140
          PT907-48140-FF
        ]
      },
      # Lexus IS 2014
      {
        vin_rules: [
          { position: 3, possible_characters: %w[C], equal: true },
          { position: 6, possible_characters: %w[6], equal: true },
          { position: 7, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [425],
        part_numbers: []
      },
      # Lexus CT 2011-2017
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 6, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [61, 62],
        part_numbers: []
      },
      # Highlander 2011-2013 for SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D E], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [374],
        part_numbers: []
      },
      # Highlander 2011-2013 NON SET
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D E], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[B C D], equal: true }
        ],
        kit_ids: [60],
        part_numbers: []
      },
      # Highlander 2010
      {
        vin_rules: [
          { position: 2, possible_characters: %w[D E], equal: true },
          { position: 7, possible_characters: %w[H], equal: true },
          { position: 9, possible_characters: %w[A], equal: true }
        ],
        kit_ids: [5],
        part_numbers: []
      },
      # Prius C 2019
      {
        vin_rules: [
          { position: 4, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52190
          PT907-52190-DC
          PT907-52190-MR
        ]
      },
      # Prius C 2018
      {
        vin_rules: [
          { position: 4, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52182
        ]
      },
      # Prius Prime Plugin 2019-2022
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[P], equal: true },
          { position: 9, possible_characters: %w[K L M N], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47196
          PT907-47196-FF
          PT907-47196-DC
          PT907-47196-MR
        ]
      },
      # Prius Prime Plugin 2017-2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[P], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47170
          PT907-47170-AA
        ]
      },
      # Prius 2019-2020
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K L], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47190
          PT907-47190-FF
          PT907-47190-DC
          PT907-47190-MR
        ]
      },
      # Prius 2016-2018
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K L], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47160
          PT907-47160-FF
        ]
      },
      # Prius V 2012-2017 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[Z], equal: true },
          { position: 5, possible_characters: %w[3], equal: true },
          { position: 6, possible_characters: %w[E], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D E F G H], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-479SS-HD
        ]
      },
      # Prius V 2012-2017 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[Z], equal: true },
          { position: 5, possible_characters: %w[3], equal: true },
          { position: 6, possible_characters: %w[E], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D E F G H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47120
        ]
      },
      # Prius C 2012-2017 for SET
      {
        vin_rules: [
          { position: 4, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D E F G H], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-476SS-HD
        ]
      },
      # Prius C 2012-2017 NON SET
      {
        vin_rules: [
          { position: 4, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D E F G H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52124
        ]
      },
      # Prius V 2012-2013 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[Z], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [373],
        part_numbers: []
      },
      # Prius V 2012-2013 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[Z], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[C D], equal: true }
        ],
        kit_ids: [297],
        part_numbers: []
      },
      # Prius Plugin 2012 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[P], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [372],
        part_numbers: []
      },
      # Prius Plugin 2012 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[P], equal: true }
        ],
        kit_ids: [37],
        part_numbers: []
      },
      # Prius 2010-2015 for SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[A B C D E F], equal: true }
        ],
        user_rules: set_user_ids,
        kit_ids: [],
        part_numbers: %w[
          00016-478SS-HD
          00016-PPCF313PRW
          00016-PPCF313PRN
        ]
      },
      # Prius 2010-2015 NON SET
      {
        vin_rules: [
          { position: 3, possible_characters: %w[K], equal: true },
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[A B C D E F], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-47100
        ]
      },
      # Prius 2008-2009
      {
        vin_rules: [
          { position: 7, possible_characters: %w[U 3 P], equal: true },
          { position: 9, possible_characters: %w[8 9], equal: true }
        ],
        kit_ids: [9],
        part_numbers: []
      },
      # Toyota Supra 2020-2021
      {
        vin_rules: [
          { position: 6, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[0], equal: true },
          { position: 9, possible_characters: %w[L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-C1200
          PT907-C1200-DC
        ]
      },
      # Lexus NX 2019-2021
      {
        vin_rules: [
          { position: 7, possible_characters: %w[Z], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-78190
          PT907-78190-FF
          PT907-78190-DC
          PT907-78190-MR
        ]
      },
      # Lexus NX 2015-2018
      {
        vin_rules: [
          { position: 7, possible_characters: %w[Z], equal: true },
          { position: 9, possible_characters: %w[F G H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-78150
          PT907-78150-FF
        ]
      },
      # Toyota 86 2019-2020
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[K L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-18190
          PT907-18190-FF
          PT907-18190-DC
          PT907-18190-MR
        ]
      },
      # Toyota 86 2017-2018
      {
        vin_rules: [
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907--18130
          PT907--18130-FF
        ]
      },
      # Toyota Yaris Liftback 2019
      {
        vin_rules: [
          { position: 6, possible_characters: %w[D], equal: true },
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          PT907-52191
          PT907-52191-DC
          PT907-52191-MR
        ]
      }
    ]
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/AbcSize

  private

  def set_user_ids
    [23, 24, 25]
  end
end
# rubocop:enable Metrics/ClassLength
