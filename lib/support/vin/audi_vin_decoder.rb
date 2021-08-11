# frozen_string_literal: true

# rubocop:disable Metrics/ClassLength
class Vin::AudiVinDecoder < Vin::VinDecoder
    # rubocop:disable Metrics/MethodLength
    def vin_associations
    [
      # 2017-2018 & 2020-2021 A4 All road
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1 U], equal: true },
          { position: 3, possible_characters: %w[7 8 9], equal: true },
          { position: 4, possible_characters: %w[2], equal: false },
          { position: 7, possible_characters: %w[4 2], equal: true },
          { position: 9, possible_characters: %w[H J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-DB-DSP
          ZAW-061-193-DC-DSP
          ZAW-061-193-DE-DSP
          ZAW-061-193-DF-DSP
          ZAW-061-193-AB-DSP
          ZAW-061-193-D-DSP
          ZAW-061-193-AC-DSP
        ]
      },
      # 2017-2019 A3/S3 Sedan and Cab
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[A G H B J F K 6 5 4 7 Y W], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[H J K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-17301-A
          FB-17301-B
          FB-17301-C
          FB-17301-D
          ZAW-061-193-FE-DSP
          ZAW-061-193-FF-DSP
          ZAW-061-193-FG-DSP
          ZAW-061-193-FH-DSP
          WT-17301
          ZAW-061-193-AA-DSP
        ]
      },
      # 2017 - 2018 A3 Sportback - 2018 parts have not been added 5-10-17 MLW
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[T S U], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-FJ-DSP
          ZAW-061-193-FK-DSP
          ZAW-061-193-FL-DSP
          ZAW-061-193-FM-DSP
          ZAW-061-193-AJ-DSP
          ZAW-061-193-B-DSP
        ]
      },
      # 2018 RS3
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18304-A
          FB-18304-B
          FB-18304-C
          FB-18304-D
          WT-17301
          ZAW-061-193-AA-DSP
        ]
      },
      # 2020 RS3
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[B], equal: true },
          { position: 7, possible_characters: %w[F], equal: true },
          { position: 9, possible_characters: %w[L], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          WT-17301
        ]
      },
      # 2017 A4/A4(B9)
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[A D E F G K L M N P R], equal: true },
          { position: 7, possible_characters: %w[4], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-CR-DSP
          ZAW-061-193-CS-DSP
          ZAW-061-193-CT-DSP
          ZAW-061-193-DA-DSP
          ZAW-061-193-AB-DSP
          ZAW-061-193-CS-DSP
          ZAW-061-193-C-DSP
        ]
      },
      # 2018-2021 A4/A4(B9)
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[A D E F G K L M N P R], equal: true },
          { position: 7, possible_characters: %w[4], equal: true },
          { position: 9, possible_characters: %w[J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18402-A
          FB-18402-B
          FB-18402-C
          ZAW-061-193-DG-DSP
          FB-18403-B
          ZAW-061-193-DH-DSP
          FB-18403-D
          ZAW-061-193-C-DSP
          ZAW-061-193-AB-DSP
        ]
      },
      # 2017 S4
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[B C], equal: true },
          { position: 7, possible_characters: %w[4], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-17403-A
          FB-17403-B
          FB-17403-C
          FB-17403-D
          FB-17401-A
          FB-17401-B
          ZAW-061-193-CT-DSP
          FB-17401-D
        ]
      },
      # 2018-2021 S4
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[B C], equal: true },
          { position: 7, possible_characters: %w[4], equal: true },
          { position: 9, possible_characters: %w[J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18402-A
          FB-18402-B
          FB-18402-C
          ZAW-061-193-DG-DSP
          FB-18403-B
          ZAW-061-193-DH-DSP
          FB-18403-D
          ZAW-061-193-C-DSP
          ZAW-061-193-AB-DSP
        ]
      },
      # 2018-2021 A5/S5
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[W Y 2 3 4 5 N P R S T U K L M 7 8 9], equal: true },
          { position: 7, possible_characters: %w[5], equal: true },
          { position: 9, possible_characters: %w[J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18501
          ZAW-061-193-EC-DSP
          ZAW-061-193-EE-DSP
          ZAW-061-193-EF-DSP
          ZAW-061-193-EG-DSP
          ZAW-061-193-EH-DSP
          ZAW-061-193-EJ-DSP
          ZAW-061-193-EK-DSP
          ZAW-061-193-EL-DSP
          ZAW-061-193-AG-DSP
          ZAW-061-193-H-DSP
        ]
      },
      # 2018-2021 A5/S5 Sportback
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[A B C D E F], equal: true },
          { position: 7, possible_characters: %w[5], equal: true },
          { position: 9, possible_characters: %w[J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18501
          ZAW-061-193-EC-DSP
          ZAW-061-193-EE-DSP
          ZAW-061-193-EF-DSP
          ZAW-061-193-EG-DSP
          ZAW-061-193-H-DSP
          ZAW-061-193-AG-DSP
          ZAW-061-193-EK-DSP
        ]
      },
      # 2017-2021 A6/S6
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[C D F G H M L K E], equal: true },
          { position: 7, possible_characters: %w[C 2], equal: true },
          { position: 9, possible_characters: %w[H J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-JH-DSP
          FB-18501
          ZAW-061-193-DJ-DSP
          ZAW-061-193-DK-DSP
          ZAW-061-193-DL-DSP
          ZAW-061-193-DM-DSP
          ZAW-061-193-AD-DSP
          ZAW-061-193-E-DSP
        ]
      },
      # 2020-2021 A6 Allroad
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U 1], equal: true },
          { position: 3, possible_characters: %w[7 8 9], equal: true },
          { position: 7, possible_characters: %w[2 4], equal: true },
          { position: 9, possible_characters: %w[L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-KC-DSP
        ]
      },
      # A7/S7 2017
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[W 2], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          HF-17701-A
          ZAW-061-193-FP-DSP
          ZAW-061-193-FQ-DSP
          ZAW-061-193-FR-DSP
          ZAW-061-193-FS-DSP
          ZAW-061-193-FT-DSP
          HF-17702-C
          HF-17702-D
          ZAW-061-193-K-DSP
          ZAW-061-193-AK-DSP
          ZAW-061-193-GB-DSP
        ]
      },
      # A7/S7 2018
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[W 2], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          HF-17701-A
          ZAW-061-193-FP-DSP
          ZAW-061-193-FQ-DSP
          ZAW-061-193-FR-DSP
          ZAW-061-193-FS-DSP
          ZAW-061-193-FT-DSP
          HF-17702-C
          HF-17702-D
          ZAW-061-193-K-DSP
          ZAW-061-193-AK-DSP
          ZAW-061-193-GB-DSP
        ]
      },
      # A7 2019
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[W 2 R V S], equal: true },
          { position: 7, possible_characters: %w[C 2], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          HF-17701-A
          ZAW-061-193-FP-DSP
          ZAW-061-193-FQ-DSP
          ZAW-061-193-FR-DSP
          ZAW-061-193-FS-DSP
          ZAW-061-193-FT-DSP
          HF-17702-C
          HF-17702-D
          ZAW-061-193-T-DSP
          ZAW-061-193-GB-DSP
        ]
      },
      # RS7 2017
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[W], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          HF-17703-A
          HF-17703-B
          HF-17703-C
          HF-17703-D
          ZAW-061-193-K-DSP
          ZAW-061-193-AK-DSP
        ]
      },
      # RS7 2018
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[W], equal: true },
          { position: 7, possible_characters: %w[C], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          HF-17703-A
          HF-17703-B
          HF-17703-C
          HF-17703-D
          ZAW-061-193-K-DSP
          ZAW-061-193-AK-DSP
        ]
      },
      # A7/S7/RS7 W&T 2019-2021
      {
        vin_rules: [
          { position: 4, possible_characters: %w[2 F P], equal: true },
          { position: 6, possible_characters: %w[F], equal: true },
          { position: 7, possible_characters: %w[2], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-T-DSP
        ]
      },
      # A8 2019-2021
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[8 B], equal: true },
          { position: 7, possible_characters: %w[8 B], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-S-DSP
        ]
      },
      # 2018-2021 RS5
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[A], equal: true },
          { position: 7, possible_characters: %w[5], equal: true },
          { position: 9, possible_characters: %w[J K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-H-DSP
        ]
      },
      # 2017 A8L/A8L Sport
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[U], equal: true },
          { position: 3, possible_characters: %w[4], equal: true },
          { position: 7, possible_characters: %w[D], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-DN-DSP
          ZAW-061-193-DP-DSP
          ZAW-061-193-DQ-DSP
          ZAW-061-193-DR-DSP
          ZAW-061-193-AE-DSP
          ZAW-061-193-F-DSP
        ]
      },
      # 2017 - 2018 S8 Plus
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[J], equal: true },
          { position: 7, possible_characters: %w[D], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-DN-DSP
          ZAW-061-193-DP-DSP
          ZAW-061-193-DQ-DSP
          ZAW-061-193-DR-DSP
          ZAW-061-193-AE-DSP
          ZAW-061-193-F-DSP
        ]
      },
      # 2019 e-Tron
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[V L], equal: true },
          { position: 7, possible_characters: %w[E], equal: true },
          { position: 9, possible_characters: %w[K], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-JE-DSP
          ZAW-061-193-JP-DSP
          ZAW-061-193-JR-DSP
          ZAW-061-193-JS-DSP
          ZAW-061-193-JQ-DSP
          ZAW-061-193-JT-DSP
        ]
      },
      # 2017 - 2018 R8
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[U], equal: true },
          { position: 2, possible_characters: %w[A], equal: true },
          { position: 3, possible_characters: %w[4 E K V], equal: true },
          { position: 7, possible_characters: %w[X], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-DS-DSP
          ZAW-061-193-DT-DSP
          ZAW-061-193-EA-DSP
          ZAW-061-193-EB-DSP
          ZAW-061-193-AF-DSP
          ZAW-061-193-G-DSP
        ]
      },
      # 2017-2018 Q3/Q3 S-Line
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[B H F E J G], equal: true },
          { position: 7, possible_characters: %w[S], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-GH-DSP
          ZAW-061-193-GJ-DSP
          ZAW-061-193-GK-DSP
          ZAW-061-193-GL-DSP
          ZAW-061-193-GM-DSP
          ZAW-061-193-GN-DSP
          ZAW-061-193-AL-DSP
          ZAW-061-193-L-DSP
          ZAW-061-193-GP-DSP
          ZAW-061-193-GQ-DSP
        ]
      },
      # 2019-2021 Q3/Q3 S-Line
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A B H F E J G D], equal: true },
          { position: 7, possible_characters: %w[3], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-BA-DSP
        ]
      },
      # 2018 Q5 and Q5 S-Line
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A B C], equal: true },
          { position: 7, possible_characters: %w[Y], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-GR-DSP
          ZAW-061-193-GS-DSP
          ZAW-061-193-GT-DSP
          ZAW-061-193-HA-DSP
          ZAW-061-193-HB-DSP
          ZAW-061-193-HC-DSP
          ZAW-061-193-HE-DSP
          ZAW-061-193-HF-DSP
          ZAW-061-193-M-DSP
          ZAW-061-193-AM-DSP
        ]
      },
      # 2021 Q5 Sportback
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[5 6], equal: true },
          { position: 4, possible_characters: %w[A], equal: true },
          { position: 7, possible_characters: %w[Y], equal: true },
          { position: 9, possible_characters: %w[M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-KD-DSP
        ]
      },
      # 2019-2021 Q5 and Q5 S-Line
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A B C E F G 5], equal: true },
          { position: 7, possible_characters: %w[Y], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-GR-DSP
          ZAW-061-193-GS-DSP
          ZAW-061-193-GT-DSP
          ZAW-061-193-M-DSP
          ZAW-061-193-AM-DSP
        ]
      },
      # 2017 - 2018 Q7
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A L V], equal: true },
          { position: 7, possible_characters: %w[7], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-HG-DSP
          ZAW-061-193-HH-DSP
          ZAW-061-193-HJ-DSP
          ZAW-061-193-HK-DSP
          ZAW-061-193-N-DSP
          ZAW-061-193-AN-DSP
        ]
      },
      # 2019-2021 Q7
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A L V], equal: true },
          { position: 7, possible_characters: %w[7], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-HG-DSP
          ZAW-061-193-HH-DSP
          ZAW-061-193-N-DSP
          ZAW-061-193-AN-DSP
        ]
      },
      # 2019-2021 Q8
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W], equal: true },
          { position: 1, possible_characters: %w[A], equal: true },
          { position: 2, possible_characters: %w[1], equal: true },
          { position: 3, possible_characters: %w[A B C E F], equal: true },
          { position: 7, possible_characters: %w[1], equal: true },
          { position: 9, possible_characters: %w[K L M], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-R-DSP
        ]
      },
      # 2018 TT/TTS
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W T], equal: true },
          { position: 1, possible_characters: %w[U R], equal: true },
          { position: 2, possible_characters: %w[A U], equal: true },
          { position: 3, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          FB-18T03-A2018TTRS
          FB-18T03-C2018TTRS
          ZAW-061-193-J-DSP
          ZAW-061-193-AH-DSP
          ZAW-061-193-ER-DSP
          ZAW-061-193-ES-DSP
          ZAW-061-193-ET-DSP
          ZAW-061-193-FA-DSP
        ]
      },
      # 2017 TT/TTS
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W T], equal: true },
          { position: 1, possible_characters: %w[U R], equal: true },
          { position: 2, possible_characters: %w[A U], equal: true },
          { position: 3, possible_characters: %w[C], equal: true },
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[H], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-EM-DSP
          ZAW-061-193-EN-DSP
          ZAW-061-193-EP-DSP
          ZAW-061-193-EQ-DSP
          ZAW-061-193-ER-DSP
          ZAW-061-193-ES-DSP
          ZAW-061-193-ET-DSP
          ZAW-061-193-FA-DSP
          ZAW-061-193-J-DSP
          ZAW-061-193-AH-DSP
        ]
      },
      # 2017 - 2018 TT Roadster
      {
        vin_rules: [
          { position: 0, possible_characters: %w[W T], equal: true },
          { position: 1, possible_characters: %w[U R], equal: true },
          { position: 2, possible_characters: %w[A U], equal: true },
          { position: 3, possible_characters: %w[T], equal: true },
          { position: 7, possible_characters: %w[V], equal: true },
          { position: 9, possible_characters: %w[H J], equal: true }
        ],
        kit_ids: [],
        part_numbers: %w[
          ZAW-061-193-EM-DSP
          ZAW-061-193-EN-DSP
          ZAW-061-193-EP-DSP
          ZAW-061-193-EQ-DSP
          ZAW-061-193-J-DSP
          ZAW-061-193-AH-DSP
        ]
      }
    ]
    end
  # rubocop:enable Metrics/MethodLength
end
# rubocop:enable Metrics/ClassLength
