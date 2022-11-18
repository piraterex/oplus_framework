.class Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blacklist INTERLEAVE2_TABLE:[S

.field private static final blacklist INTERLEAVE3_TABLE:[I

.field private static final blacklist INTERLEAVE4_TABLE:[I

.field private static final blacklist INTERLEAVE5_TABLE:[I

.field private static final blacklist INTERLEAVE7_TABLE:[J

.field private static final blacklist ZEROES:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000"

.field static final blacklist bitLengths:[B


# instance fields
.field private blacklist m_ints:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 18
    const/16 v0, 0x100

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    .line 57
    const/16 v1, 0x80

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    .line 80
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    .line 119
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    .line 141
    const/16 v1, 0x200

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    .line 276
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "intLen"    # I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 303
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 14
    .param p1, "bigInt"    # Ljava/math/BigInteger;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6

    .line 330
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 337
    .local v0, "barr":[B
    array-length v2, v0

    .line 338
    .local v2, "barrLen":I
    const/4 v3, 0x0

    .line 339
    .local v3, "barrStart":I
    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 343
    add-int/lit8 v2, v2, -0x1

    .line 344
    const/4 v3, 0x1

    .line 346
    :cond_1
    add-int/lit8 v1, v2, 0x7

    const/16 v4, 0x8

    div-int/2addr v1, v4

    .line 347
    .local v1, "intLen":I
    new-array v5, v1, [J

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 349
    add-int/lit8 v5, v1, -0x1

    .line 350
    .local v5, "iarrJ":I
    rem-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v3

    .line 351
    .local v6, "rem":I
    const-wide/16 v7, 0x0

    .line 352
    .local v7, "temp":J
    move v9, v3

    .line 353
    .local v9, "barrI":I
    if-ge v3, v6, :cond_3

    .line 355
    :goto_0
    if-ge v9, v6, :cond_2

    .line 357
    shl-long/2addr v7, v4

    .line 358
    aget-byte v10, v0, v9

    and-int/lit16 v10, v10, 0xff

    .line 359
    .local v10, "barrBarrI":I
    int-to-long v11, v10

    or-long/2addr v7, v11

    .line 355
    .end local v10    # "barrBarrI":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 361
    :cond_2
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v11, v5, -0x1

    .end local v5    # "iarrJ":I
    .local v11, "iarrJ":I
    aput-wide v7, v10, v5

    move v5, v11

    .line 364
    .end local v11    # "iarrJ":I
    .restart local v5    # "iarrJ":I
    :cond_3
    :goto_1
    if-ltz v5, :cond_5

    .line 366
    const-wide/16 v7, 0x0

    .line 367
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_4

    .line 369
    shl-long/2addr v7, v4

    .line 370
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "barrI":I
    .local v11, "barrI":I
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    .line 371
    .local v9, "barrBarrI":I
    int-to-long v12, v9

    or-long/2addr v7, v12

    .line 367
    .end local v9    # "barrBarrI":I
    add-int/lit8 v10, v10, 0x1

    move v9, v11

    goto :goto_2

    .line 373
    .end local v10    # "i":I
    .end local v11    # "barrI":I
    .local v9, "barrI":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v7, v10, v5

    .line 364
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 375
    :cond_5
    return-void

    .line 327
    .end local v0    # "barr":[B
    .end local v1    # "intLen":I
    .end local v2    # "barrLen":I
    .end local v3    # "barrStart":I
    .end local v5    # "iarrJ":I
    .end local v6    # "rem":I
    .end local v7    # "temp":J
    .end local v9    # "barrI":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid F2m field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([J)V
    .locals 0
    .param p1, "ints"    # [J

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 308
    return-void
.end method

.method public constructor blacklist <init>([JII)V
    .locals 2
    .param p1, "ints"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 314
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    goto :goto_0

    .line 318
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 319
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :goto_0
    return-void
.end method

.method private static blacklist add([JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 728
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist add([JI[JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .param p6, "count"    # I

    .line 734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 736
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist addBoth([JI[JI[JII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y1"    # [J
    .param p3, "y1Off"    # I
    .param p4, "y2"    # [J
    .param p5, "y2Off"    # I
    .param p6, "count"    # I

    .line 742
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 744
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V
    .locals 9
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "otherDegree"    # I
    .param p3, "bits"    # I

    .line 662
    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    .line 664
    .local v0, "otherLen":I
    ushr-int/lit8 v7, p3, 0x6

    .line 665
    .local v7, "words":I
    and-int/lit8 v8, p3, 0x3f

    .line 667
    .local v8, "shift":I
    if-nez v8, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static {v1, v7, v2, v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 670
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    move v2, v7

    move v5, v0

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v1

    .line 674
    .local v1, "carry":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 676
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int v4, v0, v7

    aget-wide v5, v3, v4

    xor-long/2addr v5, v1

    aput-wide v5, v3, v4

    .line 678
    :cond_1
    return-void
.end method

.method private static blacklist addShiftedDown([JI[JIII)J
    .locals 11
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .line 695
    rsub-int/lit8 v0, p5, 0x40

    .line 696
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 697
    .local v1, "prev":J
    move v3, p4

    .line 698
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 700
    add-int v4, p3, v3

    aget-wide v4, p2, v4

    .line 701
    .local v4, "next":J
    add-int v6, p1, v3

    aget-wide v7, p0, v6

    ushr-long v9, v4, p5

    or-long/2addr v9, v1

    xor-long/2addr v7, v9

    aput-wide v7, p0, v6

    .line 702
    shl-long v1, v4, v0

    .line 703
    .end local v4    # "next":J
    goto :goto_0

    .line 704
    :cond_0
    return-wide v1
.end method

.method private static blacklist addShiftedUp([JI[JIII)J
    .locals 12
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .line 682
    rsub-int/lit8 v0, p5, 0x40

    .line 683
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 684
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v4, p4

    if-ge v3, v4, :cond_0

    .line 686
    add-int v5, p3, v3

    aget-wide v5, p2, v5

    .line 687
    .local v5, "next":J
    add-int v7, p1, v3

    aget-wide v8, p0, v7

    shl-long v10, v5, p5

    or-long/2addr v10, v1

    xor-long/2addr v8, v10

    aput-wide v8, p0, v7

    .line 688
    ushr-long v1, v5, v0

    .line 684
    .end local v5    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static blacklist bitLength(J)I
    .locals 5
    .param p0, "w"    # J

    .line 508
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    .line 509
    .local v0, "u":I
    if-nez v0, :cond_0

    .line 511
    long-to-int v0, p0

    .line 512
    const/4 v1, 0x0

    .local v1, "b":I
    goto :goto_0

    .line 516
    .end local v1    # "b":I
    :cond_0
    const/16 v1, 0x20

    .line 519
    .restart local v1    # "b":I
    :goto_0
    ushr-int/lit8 v2, v0, 0x10

    .line 520
    .local v2, "t":I
    if-nez v2, :cond_2

    .line 522
    ushr-int/lit8 v2, v0, 0x8

    .line 523
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    if-nez v2, :cond_1

    aget-byte v3, v3, v0

    goto :goto_1

    :cond_1
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x8

    .local v3, "k":I
    :goto_1
    goto :goto_3

    .line 527
    .end local v3    # "k":I
    :cond_2
    ushr-int/lit8 v3, v2, 0x8

    .line 528
    .local v3, "v":I
    if-nez v3, :cond_3

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x10

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x18

    :goto_2
    move v3, v4

    .line 531
    .local v3, "k":I
    :goto_3
    add-int v4, v1, v3

    return v4
.end method

.method private blacklist degreeFrom(I)I
    .locals 5
    .param p1, "limit"    # I

    .line 467
    add-int/lit8 v0, p1, 0x3e

    ushr-int/lit8 v0, v0, 0x6

    .line 471
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    .line 473
    const/4 v1, 0x0

    return v1

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v1, v0

    .line 477
    .local v1, "w":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 479
    shl-int/lit8 v3, v0, 0x6

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    .line 477
    :cond_1
    goto :goto_0
.end method

.method private static blacklist distribute([JIIII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "src"    # I
    .param p2, "dst1"    # I
    .param p3, "dst2"    # I
    .param p4, "count"    # I

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 752
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    .line 753
    .local v1, "v":J
    add-int v3, p2, v0

    aget-wide v4, p0, v3

    xor-long/2addr v4, v1

    aput-wide v4, p0, v3

    .line 754
    add-int v3, p3, v0

    aget-wide v4, p0, v3

    xor-long/2addr v4, v1

    aput-wide v4, p0, v3

    .line 750
    .end local v1    # "v":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist flipBit([JII)V
    .locals 7
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    .line 816
    ushr-int/lit8 v0, p2, 0x6

    .line 818
    .local v0, "theInt":I
    and-int/lit8 v1, p2, 0x3f

    .line 819
    .local v1, "theBit":I
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    .line 820
    .local v2, "flipper":J
    add-int v4, p1, v0

    aget-wide v5, p0, v4

    xor-long/2addr v5, v2

    aput-wide v5, p0, v4

    .line 821
    return-void
.end method

.method private static blacklist flipVector([JI[JIII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "yLen"    # I
    .param p5, "bits"    # I

    .line 1651
    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    .line 1652
    and-int/lit8 p5, p5, 0x3f

    .line 1654
    if-nez p5, :cond_0

    .line 1656
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0

    .line 1660
    :cond_0
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide v0

    .line 1661
    .local v0, "carry":J
    aget-wide v2, p0, p1

    xor-long/2addr v2, v0

    aput-wide v2, p0, p1

    .line 1663
    .end local v0    # "carry":J
    :goto_0
    return-void
.end method

.method private static blacklist flipWord([JIIJ)V
    .locals 6
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J

    .line 765
    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr v0, p1

    .line 766
    .local v0, "n":I
    and-int/lit8 v1, p2, 0x3f

    .line 767
    .local v1, "shift":I
    if-nez v1, :cond_0

    .line 769
    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    goto :goto_0

    .line 773
    :cond_0
    aget-wide v2, p0, v0

    shl-long v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 774
    rsub-int/lit8 v2, v1, 0x40

    ushr-long/2addr p3, v2

    .line 775
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 777
    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    .line 780
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist interleave([JI[JIII)V
    .locals 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "width"    # I

    .line 1743
    packed-switch p5, :pswitch_data_0

    .line 1755
    :pswitch_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v0, p5

    add-int/lit8 v6, v0, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_n([JI[JIII)V

    goto :goto_0

    .line 1752
    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave7([JI[JII)V

    .line 1753
    goto :goto_0

    .line 1749
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave5([JI[JII)V

    .line 1750
    goto :goto_0

    .line 1746
    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3([JI[JII)V

    .line 1747
    nop

    .line 1758
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist interleave2_32to64(I)J
    .locals 8
    .param p0, "x"    # I

    .line 1908
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v1, v0, v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 1909
    .local v1, "r00":I
    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-short v2, v0, v2

    ushr-int/lit8 v3, p0, 0x18

    aget-short v0, v0, v3

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    .line 1910
    .local v0, "r32":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static blacklist interleave2_n(JI)J
    .locals 8
    .param p0, "x"    # J
    .param p2, "rounds"    # I

    .line 1884
    :goto_0
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 1886
    add-int/lit8 p2, p2, -0x2

    .line 1887
    long-to-int v2, p0

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/16 v2, 0x10

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1888
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v6

    shl-long v1, v6, v1

    or-long/2addr v1, v4

    ushr-long v4, p0, v0

    long-to-int v0, v4

    and-int/2addr v0, v3

    .line 1889
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/4 v0, 0x2

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/16 v2, 0x30

    ushr-long v4, p0, v2

    long-to-int v2, v4

    and-int/2addr v2, v3

    .line 1890
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v2

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    goto :goto_0

    .line 1892
    :cond_0
    if-lez p2, :cond_1

    .line 1894
    long-to-int v2, p0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    ushr-long v4, p0, v0

    long-to-int v0, v4

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    shl-long v0, v4, v1

    or-long p0, v2, v0

    .line 1896
    :cond_1
    return-wide p0
.end method

.method private static blacklist interleave2_n([JI[JIII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "rounds"    # I

    .line 1876
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1878
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3, p5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_n(JI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist interleave3(J)J
    .locals 8
    .param p0, "x"    # J

    .line 1770
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1771
    .local v0, "z":J
    long-to-int v2, p0

    const v3, 0x1fffff

    and-int/2addr v2, v3

    .line 1772
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v4

    or-long/2addr v4, v0

    const/16 v2, 0x15

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1773
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v6

    const/4 v2, 0x1

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0x2a

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1774
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v2

    const/4 v6, 0x2

    shl-long/2addr v2, v6

    or-long/2addr v2, v4

    .line 1771
    return-wide v2
.end method

.method private static blacklist interleave3([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    .line 1762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1764
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1766
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist interleave3_13to65(I)J
    .locals 8
    .param p0, "x"    # I

    .line 1834
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v1, v0, v1

    .line 1835
    .local v1, "r00":I
    ushr-int/lit8 v2, p0, 0x7

    aget v0, v0, v2

    .line 1836
    .local v0, "r35":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x23

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static blacklist interleave3_21to63(I)J
    .locals 10
    .param p0, "x"    # I

    .line 1794
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v1, v0, v1

    .line 1795
    .local v1, "r00":I
    ushr-int/lit8 v2, p0, 0x7

    and-int/lit8 v2, v2, 0x7f

    aget v2, v0, v2

    .line 1796
    .local v2, "r21":I
    ushr-int/lit8 v3, p0, 0xe

    aget v0, v0, v3

    .line 1797
    .local v0, "r42":I
    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shl-long/2addr v3, v7

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v9, 0x15

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    int-to-long v7, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private static blacklist interleave4_16to64(I)J
    .locals 8
    .param p0, "x"    # I

    .line 1901
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v1, v0, v1

    .line 1902
    .local v1, "r00":I
    ushr-int/lit8 v2, p0, 0x8

    aget v0, v0, v2

    .line 1903
    .local v0, "r32":I
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static blacklist interleave5(J)J
    .locals 5
    .param p0, "x"    # J

    .line 1810
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0x1fff

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v0

    const/16 v2, 0xd

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1811
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x1a

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1812
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x27

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1813
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    .line 1814
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1810
    return-wide v0
.end method

.method private static blacklist interleave5([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    .line 1802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1804
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave5(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1806
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist interleave7(J)J
    .locals 8
    .param p0, "x"    # J

    .line 1849
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1850
    .local v0, "z":J
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    long-to-int v3, p0

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v3, v2, v3

    or-long/2addr v3, v0

    const/16 v5, 0x9

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v7, 0x1

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x12

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v7, 0x2

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x1b

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x24

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v7, 0x4

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x2d

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v7, 0x5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    const/16 v5, 0x36

    ushr-long v5, p0, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x6

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    return-wide v2
.end method

.method private static blacklist interleave7([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I

    .line 1841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1843
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave7(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1845
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist multiplyWord(J[JI[JI)V
    .locals 17
    .param p0, "a"    # J
    .param p2, "b"    # [J
    .param p3, "bLen"    # I
    .param p4, "c"    # [J
    .param p5, "cOff"    # I

    .line 845
    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    const-wide/16 v9, 0x1

    and-long v0, p0, v9

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_0

    .line 847
    const/4 v0, 0x0

    move-object/from16 v13, p2

    invoke-static {v7, v8, v13, v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0

    .line 845
    :cond_0
    move-object/from16 v13, p2

    .line 849
    :goto_0
    const/4 v0, 0x1

    move v14, v0

    move-wide/from16 v0, p0

    .line 850
    .end local p0    # "a":J
    .local v0, "a":J
    .local v14, "k":I
    :goto_1
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    move-wide v15, v2

    .end local v0    # "a":J
    .local v15, "a":J
    cmp-long v0, v2, v11

    if-eqz v0, :cond_2

    .line 852
    and-long v0, v15, v9

    cmp-long v0, v0, v11

    if-eqz v0, :cond_1

    .line 854
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v14

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v0

    .line 855
    .local v0, "carry":J
    cmp-long v2, v0, v11

    if-eqz v2, :cond_1

    .line 857
    add-int v2, v8, v6

    aget-wide v3, v7, v2

    xor-long/2addr v3, v0

    aput-wide v3, v7, v2

    .line 860
    .end local v0    # "carry":J
    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-wide v0, v15

    goto :goto_1

    .line 862
    :cond_2
    return-void
.end method

.method private static blacklist reduceBit([JIII[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .line 1587
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1588
    sub-int v0, p2, p3

    .line 1589
    .local v0, "n":I
    array-length v1, p4

    .line 1590
    .local v1, "j":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1592
    aget v2, p4, v1

    add-int/2addr v2, v0

    invoke-static {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_0

    .line 1594
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1595
    return-void
.end method

.method private static blacklist reduceBitWise([JIII[I)V
    .locals 1
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bitlength"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .line 1576
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    .line 1578
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    .line 1583
    :cond_1
    return-void
.end method

.method private static blacklist reduceInPlace([JIII[I)I
    .locals 20
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .line 1532
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v0, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    add-int/lit8 v1, v8, 0x3f

    ushr-int/lit8 v10, v1, 0x6

    .line 1533
    .local v10, "mLen":I
    if-ge v0, v10, :cond_0

    .line 1535
    return v0

    .line 1538
    :cond_0
    shl-int/lit8 v1, v0, 0x6

    shl-int/lit8 v2, v8, 0x1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1539
    .local v11, "numBits":I
    shl-int/lit8 v1, v0, 0x6

    sub-int/2addr v1, v11

    move v12, v0

    move v13, v1

    .line 1540
    .end local p2    # "len":I
    .local v12, "len":I
    .local v13, "excessBits":I
    :goto_0
    const/16 v0, 0x40

    if-lt v13, v0, :cond_1

    .line 1542
    add-int/lit8 v12, v12, -0x1

    .line 1543
    add-int/lit8 v13, v13, -0x40

    goto :goto_0

    .line 1546
    :cond_1
    array-length v14, v9

    .local v14, "kLen":I
    add-int/lit8 v0, v14, -0x1

    aget v15, v9, v0

    .local v15, "kMax":I
    if-le v14, v3, :cond_2

    add-int/lit8 v0, v14, -0x2

    aget v0, v9, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    .line 1547
    .local v16, "kNext":I
    add-int/lit8 v0, v15, 0x40

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1548
    .local v5, "wordWiseLimit":I
    sub-int v0, v11, v5

    sub-int v1, v8, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v13

    shr-int/lit8 v4, v0, 0x6

    .line 1549
    .local v4, "vectorableWords":I
    if-le v4, v3, :cond_4

    .line 1551
    sub-int v3, v12, v4

    .line 1552
    .local v3, "vectorWiseWords":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    move/from16 p2, v3

    .end local v3    # "vectorWiseWords":I
    .local p2, "vectorWiseWords":I
    move/from16 v17, v4

    .end local v4    # "vectorableWords":I
    .local v17, "vectorableWords":I
    move/from16 v4, p3

    move/from16 v18, v11

    move v11, v5

    .end local v5    # "wordWiseLimit":I
    .local v11, "wordWiseLimit":I
    .local v18, "numBits":I
    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    .line 1553
    :goto_2
    move/from16 v0, p2

    .end local p2    # "vectorWiseWords":I
    .local v0, "vectorWiseWords":I
    if-le v12, v0, :cond_3

    .line 1555
    add-int/lit8 v12, v12, -0x1

    add-int v1, v7, v12

    const-wide/16 v2, 0x0

    aput-wide v2, v6, v1

    move/from16 p2, v0

    goto :goto_2

    .line 1557
    :cond_3
    shl-int/lit8 v1, v0, 0x6

    move/from16 v18, v12

    move v12, v1

    .end local v18    # "numBits":I
    .local v1, "numBits":I
    goto :goto_3

    .line 1549
    .end local v0    # "vectorWiseWords":I
    .end local v1    # "numBits":I
    .end local v17    # "vectorableWords":I
    .restart local v4    # "vectorableWords":I
    .restart local v5    # "wordWiseLimit":I
    .local v11, "numBits":I
    :cond_4
    move/from16 v17, v4

    move/from16 v18, v11

    move v11, v5

    .end local v4    # "vectorableWords":I
    .end local v5    # "wordWiseLimit":I
    .local v11, "wordWiseLimit":I
    .restart local v17    # "vectorableWords":I
    .restart local v18    # "numBits":I
    move/from16 v19, v18

    move/from16 v18, v12

    move/from16 v12, v19

    .line 1560
    .local v12, "numBits":I
    .local v18, "len":I
    :goto_3
    if-le v12, v11, :cond_5

    .line 1562
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move v3, v11

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    .line 1563
    move v12, v11

    .line 1566
    :cond_5
    if-le v12, v8, :cond_6

    .line 1568
    invoke-static {v6, v7, v12, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    .line 1571
    :cond_6
    return v10
.end method

.method private static blacklist reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 2
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .line 1499
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    .line 1500
    .local v0, "rLen":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method private static blacklist reduceVectorWise([JIIII[I)V
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "words"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    .line 1640
    shl-int/lit8 v0, p3, 0x6

    sub-int/2addr v0, p4

    .line 1641
    .local v0, "baseBit":I
    array-length v1, p5

    .line 1642
    .local v1, "j":I
    :goto_0
    add-int/lit8 v7, v1, -0x1

    .end local v1    # "j":I
    .local v7, "j":I
    if-ltz v7, :cond_0

    .line 1644
    add-int v4, p1, p3

    sub-int v5, p2, p3

    aget v1, p5, v7

    add-int v6, v0, v1

    move-object v1, p0

    move v2, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    move v1, v7

    goto :goto_0

    .line 1646
    :cond_0
    add-int v4, p1, p3

    sub-int v5, p2, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p0

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    .line 1647
    return-void
.end method

.method private static blacklist reduceWord([JIIJI[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J
    .param p5, "m"    # I
    .param p6, "ks"    # [I

    .line 1624
    sub-int v0, p2, p5

    .line 1625
    .local v0, "offset":I
    array-length v1, p6

    .line 1626
    .local v1, "j":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1628
    aget v2, p6, v1

    add-int/2addr v2, v0

    invoke-static {p0, p1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_0

    .line 1630
    :cond_0
    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    .line 1631
    return-void
.end method

.method private static blacklist reduceWordWise([JIIII[I)V
    .locals 12
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "toBit"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    .line 1599
    ushr-int/lit8 v7, p3, 0x6

    move v0, p2

    .line 1601
    .end local p2    # "len":I
    .local v0, "len":I
    .local v7, "toPos":I
    :goto_0
    add-int/lit8 v8, v0, -0x1

    .end local v0    # "len":I
    .local v8, "len":I
    const-wide/16 v0, 0x0

    if-le v8, v7, :cond_1

    .line 1603
    add-int v2, p1, v8

    aget-wide v9, p0, v2

    .line 1604
    .local v9, "word":J
    cmp-long v2, v9, v0

    if-eqz v2, :cond_0

    .line 1606
    add-int v2, p1, v8

    aput-wide v0, p0, v2

    .line 1607
    shl-int/lit8 v2, v8, 0x6

    move-object v0, p0

    move v1, p1

    move-wide v3, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1609
    .end local v9    # "word":J
    :cond_0
    move v0, v8

    goto :goto_0

    .line 1612
    :cond_1
    and-int/lit8 v9, p3, 0x3f

    .line 1613
    .local v9, "partial":I
    add-int v2, p1, v7

    aget-wide v2, p0, v2

    ushr-long v10, v2, v9

    .line 1614
    .local v10, "word":J
    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    .line 1616
    add-int v0, p1, v7

    aget-wide v1, p0, v0

    shl-long v3, v10, v9

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1617
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, v10

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1620
    .end local v9    # "partial":I
    .end local v10    # "word":J
    :cond_2
    return-void
.end method

.method private blacklist resizedInts(I)[J
    .locals 4
    .param p1, "newLen"    # I

    .line 536
    new-array v0, p1, [J

    .line 537
    .local v0, "newInts":[J
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    return-object v0
.end method

.method private static blacklist shiftUp([JIII)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "count"    # I
    .param p3, "shift"    # I

    .line 596
    rsub-int/lit8 v0, p3, 0x40

    .line 597
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 598
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 600
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    .line 601
    .local v4, "next":J
    add-int v6, p1, v3

    shl-long v7, v4, p3

    or-long/2addr v7, v1

    aput-wide v7, p0, v6

    .line 602
    ushr-long v1, v4, v0

    .line 598
    .end local v4    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static blacklist shiftUp([JI[JIII)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .line 609
    rsub-int/lit8 v0, p5, 0x40

    .line 610
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 611
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 613
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    .line 614
    .local v4, "next":J
    add-int v6, p3, v3

    shl-long v7, v4, p5

    or-long/2addr v7, v1

    aput-wide v7, p2, v6

    .line 615
    ushr-long v1, v4, v0

    .line 611
    .end local v4    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static blacklist squareInPlace([JII[I)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "xLen"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 1732
    shl-int/lit8 v0, p1, 0x1

    .line 1733
    .local v0, "pos":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1735
    aget-wide v1, p0, p1

    .line 1736
    .local v1, "xVal":J
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v3

    aput-wide v3, p0, v0

    .line 1737
    add-int/lit8 v0, v0, -0x1

    long-to-int v3, v1

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v3

    aput-wide v3, p0, v0

    .line 1738
    .end local v1    # "xVal":J
    goto :goto_0

    .line 1739
    :cond_0
    return-void
.end method

.method private static blacklist testBit([JII)Z
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    .line 806
    ushr-int/lit8 v0, p2, 0x6

    .line 808
    .local v0, "theInt":I
    and-int/lit8 v1, p2, 0x3f

    .line 809
    .local v1, "theBit":I
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    .line 810
    .local v2, "tester":J
    add-int v4, p1, v0

    aget-wide v4, p0, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method


# virtual methods
.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 7

    .line 622
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    new-array v4, v4, [J

    aput-wide v1, v4, v3

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 628
    .local v0, "resultLen":I
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v4

    .line 629
    .local v4, "ints":[J
    aget-wide v5, v4, v3

    xor-long/2addr v1, v5

    aput-wide v1, v4, v3

    .line 630
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v1
.end method

.method public blacklist addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V
    .locals 5
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "words"    # I

    .line 709
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 710
    .local v0, "otherUsedLen":I
    if-nez v0, :cond_0

    .line 712
    return-void

    .line 715
    :cond_0
    add-int v1, v0, p2

    .line 716
    .local v1, "minLen":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 718
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 722
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 2

    .line 2176
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method blacklist copyTo([JI)V
    .locals 3
    .param p1, "z"    # [J
    .param p2, "zOff"    # I

    .line 379
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    return-void
.end method

.method public blacklist degree()I
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    .line 454
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    .line 456
    const/4 v1, 0x0

    return v1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, v1, v0

    .line 460
    .local v1, "w":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 462
    shl-int/lit8 v3, v0, 0x6

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    .line 460
    :cond_1
    goto :goto_0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 2139
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2141
    return v1

    .line 2143
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 2144
    .local v0, "other":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    .line 2145
    .local v2, "usedLen":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 2147
    return v1

    .line 2149
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2151
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v4, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v6, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2153
    return v1

    .line 2149
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2156
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist getLength()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    return v0
.end method

.method public blacklist getUsedLength()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public blacklist getUsedLengthFrom(I)I
    .locals 6
    .param p1, "from"    # I

    .line 419
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 420
    .local v0, "a":[J
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 422
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 424
    return v1

    .line 428
    :cond_0
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 430
    :goto_0
    add-int/lit8 p1, p1, -0x1

    aget-wide v1, v0, p1

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    goto :goto_0

    .line 433
    :cond_1
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 438
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    aget-wide v2, v0, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 440
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 443
    :cond_3
    if-gtz p1, :cond_4

    .line 445
    return v1

    .line 443
    :cond_4
    goto :goto_1
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 2161
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2162
    .local v0, "usedLen":I
    const/4 v1, 0x1

    .line 2163
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2165
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v3, v2

    .line 2166
    .local v3, "mi":J
    mul-int/lit8 v1, v1, 0x1f

    .line 2167
    long-to-int v5, v3

    xor-int/2addr v1, v5

    .line 2168
    mul-int/lit8 v1, v1, 0x1f

    .line 2169
    const/16 v5, 0x20

    ushr-long v5, v3, v5

    long-to-int v5, v5

    xor-int/2addr v1, v5

    .line 2163
    .end local v3    # "mi":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2171
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public blacklist isOne()Z
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 385
    .local v0, "a":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 387
    return v1

    .line 389
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 391
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 393
    return v1

    .line 389
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist isZero()Z
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 402
    .local v0, "a":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 404
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 406
    const/4 v2, 0x0

    return v2

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 20
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 2062
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    .line 2063
    .local v1, "uzDegree":I
    if-eqz v1, :cond_5

    .line 2067
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2069
    return-object p0

    .line 2073
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 2075
    .local v3, "uz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    add-int/lit8 v4, v0, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    .line 2078
    .local v4, "t":I
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2079
    .local v5, "vz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    move-object/from16 v8, p2

    invoke-static {v6, v7, v0, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2082
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2083
    .local v6, "g1z":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget-object v9, v6, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v10, 0x1

    aput-wide v10, v9, v7

    .line 2084
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v9, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2086
    .local v9, "g2z":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v1, v11, v7

    add-int/lit8 v12, v0, 0x1

    aput v12, v11, v2

    .line 2087
    .local v11, "uvDeg":[I
    new-array v12, v10, [Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    aput-object v3, v12, v7

    aput-object v5, v12, v2

    .line 2089
    .local v12, "uv":[Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    new-array v13, v10, [I

    fill-array-data v13, :array_0

    .line 2090
    .local v13, "ggDeg":[I
    new-array v10, v10, [Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    aput-object v6, v10, v7

    aput-object v9, v10, v2

    move-object v2, v10

    .line 2092
    .local v2, "gg":[Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    const/4 v7, 0x1

    .line 2093
    .local v7, "b":I
    aget v10, v11, v7

    .line 2094
    .local v10, "duv1":I
    aget v14, v13, v7

    .line 2095
    .local v14, "dgg1":I
    rsub-int/lit8 v15, v7, 0x1

    aget v15, v11, v15

    sub-int v15, v10, v15

    .line 2099
    .local v15, "j":I
    :goto_0
    if-gez v15, :cond_1

    .line 2101
    neg-int v15, v15

    .line 2102
    aput v10, v11, v7

    .line 2103
    aput v14, v13, v7

    .line 2104
    rsub-int/lit8 v7, v7, 0x1

    .line 2105
    aget v10, v11, v7

    .line 2106
    aget v14, v13, v7

    .line 2109
    :cond_1
    aget-object v0, v12, v7

    rsub-int/lit8 v16, v7, 0x1

    move/from16 v17, v1

    .end local v1    # "uzDegree":I
    .local v17, "uzDegree":I
    aget-object v1, v12, v16

    rsub-int/lit8 v16, v7, 0x1

    move-object/from16 v18, v3

    .end local v3    # "uz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v18, "uz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    aget v3, v11, v16

    invoke-direct {v0, v1, v3, v15}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V

    .line 2111
    aget-object v0, v12, v7

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v0

    .line 2112
    .local v0, "duv2":I
    if-nez v0, :cond_2

    .line 2114
    rsub-int/lit8 v1, v7, 0x1

    aget-object v1, v2, v1

    return-object v1

    .line 2118
    :cond_2
    rsub-int/lit8 v1, v7, 0x1

    aget v1, v13, v1

    .line 2119
    .local v1, "dgg2":I
    aget-object v3, v2, v7

    rsub-int/lit8 v16, v7, 0x1

    move/from16 v19, v4

    .end local v4    # "t":I
    .local v19, "t":I
    aget-object v4, v2, v16

    invoke-direct {v3, v4, v1, v15}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;II)V

    .line 2120
    add-int/2addr v1, v15

    .line 2122
    if-le v1, v14, :cond_3

    .line 2124
    move v3, v1

    move v14, v3

    .end local v14    # "dgg1":I
    .local v3, "dgg1":I
    goto :goto_1

    .line 2126
    .end local v3    # "dgg1":I
    .restart local v14    # "dgg1":I
    :cond_3
    if-ne v1, v14, :cond_4

    .line 2128
    aget-object v3, v2, v7

    invoke-direct {v3, v14}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v3

    move v14, v3

    .line 2132
    .end local v1    # "dgg2":I
    :cond_4
    :goto_1
    sub-int v1, v0, v10

    add-int/2addr v15, v1

    .line 2133
    move v10, v0

    .line 2134
    .end local v0    # "duv2":I
    move/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto :goto_0

    .line 2065
    .end local v2    # "gg":[Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v5    # "vz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v6    # "g1z":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v7    # "b":I
    .end local v9    # "g2z":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v10    # "duv1":I
    .end local v11    # "uvDeg":[I
    .end local v12    # "uv":[Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v13    # "ggDeg":[I
    .end local v14    # "dgg1":I
    .end local v15    # "j":I
    .end local v17    # "uzDegree":I
    .end local v18    # "uz":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v19    # "t":I
    .local v1, "uzDegree":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public blacklist modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 31
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 1001
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1002
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 1004
    return-object p0

    .line 1006
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1007
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 1009
    return-object p1

    .line 1015
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 1016
    .local v5, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 1018
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 1019
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 1025
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 1026
    .local v6, "aLen":I
    add-int/lit8 v7, v3, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    .line 1027
    .local v7, "bLen":I
    add-int v8, v2, v3

    add-int/lit8 v8, v8, 0x3e

    ushr-int/lit8 v15, v8, 0x6

    .line 1029
    .local v15, "cLen":I
    const/4 v14, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 1031
    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v16, v8, v14

    .line 1032
    .local v16, "a0":J
    const-wide/16 v8, 0x1

    cmp-long v8, v16, v8

    if-nez v8, :cond_3

    .line 1034
    return-object v5

    .line 1040
    :cond_3
    new-array v13, v15, [J

    .line 1041
    .local v13, "c0":[J
    iget-object v10, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/16 v18, 0x0

    move-wide/from16 v8, v16

    move v11, v7

    move-object v12, v13

    move/from16 v19, v2

    move-object v2, v13

    .end local v13    # "c0":[J
    .local v2, "c0":[J
    .local v19, "aDeg":I
    move/from16 v13, v18

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1046
    invoke-static {v2, v14, v15, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v8

    return-object v8

    .line 1052
    .end local v16    # "a0":J
    .end local v19    # "aDeg":I
    .local v2, "aDeg":I
    :cond_4
    move/from16 v19, v2

    .end local v2    # "aDeg":I
    .restart local v19    # "aDeg":I
    add-int/lit8 v2, v3, 0x7

    add-int/lit8 v2, v2, 0x3f

    ushr-int/lit8 v2, v2, 0x6

    .line 1057
    .local v2, "bMax":I
    const/16 v9, 0x10

    new-array v13, v9, [I

    .line 1062
    .local v13, "ti":[I
    shl-int/lit8 v10, v2, 0x4

    new-array v12, v10, [J

    .line 1063
    .local v12, "T0":[J
    move v10, v2

    .line 1064
    .local v10, "tOff":I
    aput v10, v13, v8

    .line 1065
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v8, v14, v12, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    const/4 v8, 0x2

    move/from16 v16, v10

    .end local v10    # "tOff":I
    .local v8, "i":I
    .local v16, "tOff":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 1068
    add-int v10, v16, v2

    move/from16 v16, v10

    aput v10, v13, v8

    .line 1069
    and-int/lit8 v10, v8, 0x1

    if-nez v10, :cond_5

    .line 1071
    ushr-int/lit8 v21, v16, 0x1

    const/16 v25, 0x1

    move-object/from16 v20, v12

    move-object/from16 v22, v12

    move/from16 v23, v16

    move/from16 v24, v2

    invoke-static/range {v20 .. v25}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    goto :goto_1

    .line 1075
    :cond_5
    sub-int v23, v16, v2

    move-object/from16 v20, v12

    move/from16 v21, v2

    move-object/from16 v22, v12

    move-object/from16 v24, v12

    move/from16 v25, v16

    move/from16 v26, v2

    invoke-static/range {v20 .. v26}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    .line 1066
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1082
    .end local v8    # "i":I
    :cond_6
    array-length v8, v12

    new-array v8, v8, [J

    .line 1083
    .local v8, "T1":[J
    const/16 v21, 0x0

    const/16 v23, 0x0

    array-length v9, v12

    const/16 v25, 0x4

    move-object/from16 v20, v12

    move-object/from16 v22, v8

    move/from16 v24, v9

    invoke-static/range {v20 .. v25}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1086
    iget-object v11, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1087
    .local v11, "a":[J
    shl-int/lit8 v9, v15, 0x3

    new-array v10, v9, [J

    .line 1089
    .local v10, "c":[J
    const/16 v17, 0xf

    .line 1095
    .local v17, "MASK":I
    const/4 v9, 0x0

    .local v9, "aPos":I
    :goto_2
    if-ge v9, v6, :cond_8

    .line 1097
    aget-wide v20, v11, v9

    .line 1098
    .local v20, "aVal":J
    move/from16 v18, v9

    move/from16 v27, v15

    move-wide/from16 v14, v20

    .line 1101
    .end local v15    # "cLen":I
    .end local v20    # "aVal":J
    .local v14, "aVal":J
    .local v18, "cOff":I
    .local v27, "cLen":I
    :goto_3
    move/from16 v28, v3

    .end local v3    # "bDeg":I
    .local v28, "bDeg":I
    long-to-int v3, v14

    and-int v3, v3, v17

    .line 1102
    .local v3, "u":I
    const/16 v29, 0x4

    ushr-long v14, v14, v29

    .line 1103
    move-object/from16 v30, v4

    .end local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v30, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    long-to-int v4, v14

    and-int v4, v4, v17

    .line 1104
    .local v4, "v":I
    aget v23, v13, v3

    aget v25, v13, v4

    move-object/from16 v20, v10

    move/from16 v21, v18

    move-object/from16 v22, v12

    move-object/from16 v24, v8

    move/from16 v26, v2

    invoke-static/range {v20 .. v26}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1105
    ushr-long v14, v14, v29

    .line 1106
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-nez v20, :cond_7

    .line 1108
    nop

    .line 1095
    .end local v3    # "u":I
    .end local v4    # "v":I
    .end local v14    # "aVal":J
    .end local v18    # "cOff":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v27

    move/from16 v3, v28

    move-object/from16 v4, v30

    const/4 v14, 0x0

    goto :goto_2

    .line 1110
    .restart local v3    # "u":I
    .restart local v4    # "v":I
    .restart local v14    # "aVal":J
    .restart local v18    # "cOff":I
    :cond_7
    add-int v18, v18, v27

    .line 1111
    .end local v3    # "u":I
    .end local v4    # "v":I
    move/from16 v3, v28

    move-object/from16 v4, v30

    goto :goto_3

    .line 1095
    .end local v14    # "aVal":J
    .end local v18    # "cOff":I
    .end local v27    # "cLen":I
    .end local v28    # "bDeg":I
    .end local v30    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v3, "bDeg":I
    .local v4, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v15    # "cLen":I
    :cond_8
    move/from16 v28, v3

    move-object/from16 v30, v4

    move/from16 v27, v15

    .line 1115
    .end local v3    # "bDeg":I
    .end local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v9    # "aPos":I
    .end local v15    # "cLen":I
    .restart local v27    # "cLen":I
    .restart local v28    # "bDeg":I
    .restart local v30    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    array-length v3, v10

    .line 1116
    .local v3, "cOff":I
    :goto_4
    sub-int v4, v3, v27

    move v3, v4

    if-eqz v4, :cond_9

    .line 1118
    sub-int v4, v3, v27

    const/16 v14, 0x8

    move-object v9, v10

    move-object v15, v10

    .end local v10    # "c":[J
    .local v15, "c":[J
    move v10, v4

    move-object v4, v11

    .end local v11    # "a":[J
    .local v4, "a":[J
    move-object v11, v15

    move-object/from16 v18, v12

    .end local v12    # "T0":[J
    .local v18, "T0":[J
    move v12, v3

    move-object/from16 v20, v13

    .end local v13    # "ti":[I
    .local v20, "ti":[I
    move/from16 v13, v27

    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "bMax":I
    .local v21, "bMax":I
    invoke-static/range {v9 .. v14}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-object v11, v4

    move-object v10, v15

    move-object/from16 v12, v18

    move-object/from16 v13, v20

    move/from16 v2, v21

    goto :goto_4

    .line 1116
    .end local v4    # "a":[J
    .end local v15    # "c":[J
    .end local v18    # "T0":[J
    .end local v20    # "ti":[I
    .end local v21    # "bMax":I
    .restart local v2    # "bMax":I
    .restart local v10    # "c":[J
    .restart local v11    # "a":[J
    .restart local v12    # "T0":[J
    .restart local v13    # "ti":[I
    :cond_9
    move/from16 v21, v2

    move-object v15, v10

    const/4 v2, 0x0

    .line 1125
    .end local v2    # "bMax":I
    .end local v3    # "cOff":I
    .end local v10    # "c":[J
    .restart local v15    # "c":[J
    .restart local v21    # "bMax":I
    move/from16 v3, v27

    .end local v27    # "cLen":I
    .local v3, "cLen":I
    invoke-static {v15, v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v2

    return-object v2
.end method

.method public blacklist modMultiplyAlt(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 33
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 1133
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1134
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 1136
    return-object p0

    .line 1138
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1139
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 1141
    return-object p1

    .line 1147
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 1148
    .local v5, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 1150
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 1151
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 1157
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 1158
    .local v6, "aLen":I
    add-int/lit8 v7, v3, 0x3f

    ushr-int/lit8 v14, v7, 0x6

    .line 1159
    .local v14, "bLen":I
    add-int v7, v2, v3

    add-int/lit8 v7, v7, 0x3e

    ushr-int/lit8 v15, v7, 0x6

    .line 1161
    .local v15, "cLen":I
    const-wide/16 v16, 0x1

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-ne v6, v13, :cond_4

    .line 1163
    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v18, v8, v7

    .line 1164
    .local v18, "a0":J
    cmp-long v8, v18, v16

    if-nez v8, :cond_3

    .line 1166
    return-object v5

    .line 1172
    :cond_3
    new-array v13, v15, [J

    .line 1173
    .local v13, "c0":[J
    iget-object v10, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/16 v16, 0x0

    move-wide/from16 v8, v18

    move v11, v14

    move-object v12, v13

    move/from16 v20, v2

    move-object v2, v13

    .end local v13    # "c0":[J
    .local v2, "c0":[J
    .local v20, "aDeg":I
    move/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1178
    invoke-static {v2, v7, v15, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v7

    return-object v7

    .line 1214
    .end local v18    # "a0":J
    .end local v20    # "aDeg":I
    .local v2, "aDeg":I
    :cond_4
    move/from16 v20, v2

    .end local v2    # "aDeg":I
    .restart local v20    # "aDeg":I
    const/4 v2, 0x4

    .local v2, "width":I
    const/16 v18, 0x10

    .local v18, "positions":I
    const/16 v12, 0x40

    .local v12, "top":I
    const/16 v11, 0x8

    .line 1222
    .local v11, "banks":I
    const/16 v10, 0x40

    if-ge v12, v10, :cond_5

    move/from16 v8, v18

    goto :goto_0

    :cond_5
    add-int/lit8 v8, v18, -0x1

    :goto_0
    move/from16 v19, v8

    .line 1223
    .local v19, "shifts":I
    add-int v8, v3, v19

    add-int/lit8 v8, v8, 0x3f

    ushr-int/lit8 v9, v8, 0x6

    .line 1225
    .local v9, "bMax":I
    mul-int v8, v9, v11

    .local v8, "bTotal":I
    mul-int v21, v2, v11

    .line 1230
    .local v21, "stride":I
    shl-int v10, v13, v2

    new-array v10, v10, [I

    .line 1231
    .local v10, "ci":[I
    move/from16 v23, v6

    .line 1233
    .local v23, "cTotal":I
    aput v23, v10, v7

    .line 1234
    add-int v23, v23, v8

    .line 1235
    aput v23, v10, v13

    .line 1236
    const/16 v24, 0x2

    move/from16 v7, v24

    .local v7, "i":I
    :goto_1
    array-length v13, v10

    if-ge v7, v13, :cond_6

    .line 1238
    add-int v23, v23, v15

    .line 1239
    aput v23, v10, v7

    .line 1236
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_1

    .line 1241
    .end local v7    # "i":I
    :cond_6
    add-int v23, v23, v15

    .line 1244
    const/4 v7, 0x1

    add-int/lit8 v13, v23, 0x1

    .line 1246
    .end local v23    # "cTotal":I
    .local v13, "cTotal":I
    new-array v7, v13, [J

    .line 1249
    .local v7, "c":[J
    move/from16 v23, v3

    .end local v3    # "bDeg":I
    .local v23, "bDeg":I
    iget-object v3, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v7

    .end local v7    # "c":[J
    .local v28, "c":[J
    move-object v7, v3

    move v3, v8

    .end local v8    # "bTotal":I
    .local v3, "bTotal":I
    move/from16 v8, v26

    move/from16 v30, v9

    .end local v9    # "bMax":I
    .local v30, "bMax":I
    move-object/from16 v9, v28

    move-object/from16 v31, v10

    .end local v10    # "ci":[I
    .local v31, "ci":[I
    move/from16 v10, v27

    move/from16 v32, v11

    .end local v11    # "banks":I
    .local v32, "banks":I
    move v11, v6

    move-object/from16 v22, v4

    move v4, v12

    .end local v12    # "top":I
    .local v4, "top":I
    .local v22, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move v12, v2

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave([JI[JIII)V

    .line 1253
    move v7, v6

    .line 1254
    .local v7, "bOff":I
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v12, v28

    const/4 v9, 0x0

    .end local v28    # "c":[J
    .local v12, "c":[J
    invoke-static {v8, v9, v12, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1255
    const/4 v8, 0x1

    move v11, v8

    .local v11, "bank":I
    :goto_2
    move/from16 v10, v32

    .end local v32    # "banks":I
    .local v10, "banks":I
    if-ge v11, v10, :cond_7

    .line 1257
    move/from16 v9, v30

    .end local v30    # "bMax":I
    .restart local v9    # "bMax":I
    add-int v24, v7, v9

    move/from16 v26, v24

    .end local v7    # "bOff":I
    .local v26, "bOff":I
    move-object v7, v12

    move v8, v6

    .end local v9    # "bMax":I
    .restart local v30    # "bMax":I
    move-object v9, v12

    move-object/from16 v27, v5

    move v5, v10

    .end local v10    # "banks":I
    .local v5, "banks":I
    .local v27, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move/from16 v10, v24

    move/from16 v24, v11

    .end local v11    # "bank":I
    .local v24, "bank":I
    move/from16 v11, v30

    move/from16 v28, v14

    move-object v14, v12

    .end local v12    # "c":[J
    .local v14, "c":[J
    .local v28, "bLen":I
    move/from16 v12, v24

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1255
    add-int/lit8 v11, v24, 0x1

    move/from16 v32, v5

    move-object v12, v14

    move/from16 v7, v26

    move-object/from16 v5, v27

    move/from16 v14, v28

    .end local v24    # "bank":I
    .restart local v11    # "bank":I
    goto :goto_2

    .end local v26    # "bOff":I
    .end local v27    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v28    # "bLen":I
    .local v5, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v7    # "bOff":I
    .restart local v10    # "banks":I
    .restart local v12    # "c":[J
    .local v14, "bLen":I
    :cond_7
    move-object/from16 v27, v5

    move v5, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v14, v12

    .line 1267
    .end local v7    # "bOff":I
    .end local v10    # "banks":I
    .end local v11    # "bank":I
    .end local v12    # "c":[J
    .local v5, "banks":I
    .local v14, "c":[J
    .restart local v27    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v28    # "bLen":I
    const/4 v7, 0x1

    shl-int v8, v7, v2

    sub-int/2addr v8, v7

    .line 1269
    .local v8, "MASK":I
    const/4 v7, 0x0

    move/from16 v24, v8

    .line 1272
    .end local v8    # "MASK":I
    .local v7, "k":I
    .local v24, "MASK":I
    :goto_3
    const/4 v8, 0x0

    .line 1275
    .local v8, "aPos":I
    :goto_4
    aget-wide v9, v14, v8

    ushr-long/2addr v9, v7

    .line 1276
    .local v9, "aVal":J
    const/4 v11, 0x0

    .restart local v11    # "bank":I
    move v12, v6

    .line 1279
    .local v12, "bOff":I
    :goto_5
    move/from16 v26, v13

    .end local v13    # "cTotal":I
    .local v26, "cTotal":I
    long-to-int v13, v9

    and-int v13, v13, v24

    .line 1280
    .local v13, "index":I
    if-eqz v13, :cond_8

    .line 1287
    move/from16 v29, v3

    move-object/from16 v3, v31

    .end local v31    # "ci":[I
    .local v3, "ci":[I
    .local v29, "bTotal":I
    aget v31, v3, v13

    move/from16 v32, v13

    .end local v13    # "index":I
    .local v32, "index":I
    add-int v13, v8, v31

    move/from16 v31, v2

    move/from16 v2, v30

    .end local v30    # "bMax":I
    .local v2, "bMax":I
    .local v31, "width":I
    invoke-static {v14, v13, v14, v12, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_6

    .line 1280
    .end local v29    # "bTotal":I
    .end local v32    # "index":I
    .local v2, "width":I
    .local v3, "bTotal":I
    .restart local v13    # "index":I
    .restart local v30    # "bMax":I
    .local v31, "ci":[I
    :cond_8
    move/from16 v29, v3

    move/from16 v32, v13

    move-object/from16 v3, v31

    move/from16 v31, v2

    move/from16 v2, v30

    .line 1289
    .end local v13    # "index":I
    .end local v30    # "bMax":I
    .local v2, "bMax":I
    .local v3, "ci":[I
    .restart local v29    # "bTotal":I
    .local v31, "width":I
    .restart local v32    # "index":I
    :goto_6
    const/4 v13, 0x1

    add-int/2addr v11, v13

    if-ne v11, v5, :cond_e

    .line 1291
    nop

    .line 1297
    .end local v9    # "aVal":J
    .end local v11    # "bank":I
    .end local v12    # "bOff":I
    .end local v32    # "index":I
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v6, :cond_d

    .line 1299
    add-int v9, v7, v21

    move v7, v9

    if-lt v9, v4, :cond_c

    .line 1301
    const/16 v13, 0x40

    if-lt v7, v13, :cond_b

    .line 1303
    nop

    .line 1320
    .end local v8    # "aPos":I
    array-length v8, v3

    .line 1321
    .local v8, "ciPos":I
    :goto_7
    add-int/lit8 v13, v8, -0x1

    const/4 v12, 0x1

    .end local v8    # "ciPos":I
    .local v13, "ciPos":I
    if-le v13, v12, :cond_a

    .line 1323
    int-to-long v8, v13

    and-long v8, v8, v16

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 1328
    ushr-int/lit8 v8, v13, 0x1

    aget v9, v3, v8

    aget v11, v3, v13

    move-object v8, v14

    move-object v10, v14

    move/from16 v25, v12

    move v12, v15

    move/from16 v30, v25

    move/from16 v25, v26

    move/from16 v26, v13

    .end local v13    # "ciPos":I
    .local v25, "cTotal":I
    .local v26, "ciPos":I
    move/from16 v13, v18

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_8

    .line 1335
    .end local v25    # "cTotal":I
    .restart local v13    # "ciPos":I
    .local v26, "cTotal":I
    :cond_9
    move/from16 v30, v12

    move/from16 v25, v26

    move/from16 v26, v13

    .end local v13    # "ciPos":I
    .restart local v25    # "cTotal":I
    .local v26, "ciPos":I
    aget v8, v3, v26

    add-int/lit8 v13, v26, -0x1

    aget v9, v3, v13

    aget v10, v3, v30

    invoke-static {v14, v8, v9, v10, v15}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->distribute([JIIII)V

    .line 1321
    :goto_8
    move/from16 v8, v26

    move/from16 v26, v25

    goto :goto_7

    .line 1342
    .end local v25    # "cTotal":I
    .restart local v13    # "ciPos":I
    .local v26, "cTotal":I
    :cond_a
    move/from16 v30, v12

    aget v8, v3, v30

    invoke-static {v14, v8, v15, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v8

    return-object v8

    .line 1310
    .end local v13    # "ciPos":I
    .local v8, "aPos":I
    :cond_b
    move/from16 v25, v26

    const/16 v30, 0x1

    .end local v26    # "cTotal":I
    .restart local v25    # "cTotal":I
    rsub-int/lit8 v7, v31, 0x40

    .line 1311
    sub-int v12, v4, v7

    shl-int v9, v24, v12

    and-int v9, v24, v9

    move/from16 v24, v9

    .end local v24    # "MASK":I
    .local v9, "MASK":I
    goto :goto_9

    .line 1299
    .end local v9    # "MASK":I
    .end local v25    # "cTotal":I
    .restart local v24    # "MASK":I
    .restart local v26    # "cTotal":I
    :cond_c
    move/from16 v25, v26

    const/16 v13, 0x40

    const/16 v30, 0x1

    .line 1317
    .end local v26    # "cTotal":I
    .restart local v25    # "cTotal":I
    :goto_9
    move/from16 v9, v29

    .end local v29    # "bTotal":I
    .local v9, "bTotal":I
    invoke-static {v14, v6, v9, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 1318
    .end local v8    # "aPos":I
    move/from16 v30, v2

    move/from16 v13, v25

    move/from16 v2, v31

    move-object/from16 v31, v3

    move v3, v9

    goto/16 :goto_3

    .line 1297
    .end local v9    # "bTotal":I
    .end local v25    # "cTotal":I
    .restart local v8    # "aPos":I
    .restart local v26    # "cTotal":I
    .restart local v29    # "bTotal":I
    :cond_d
    move/from16 v25, v26

    move/from16 v9, v29

    const/16 v13, 0x40

    const/16 v30, 0x1

    .end local v26    # "cTotal":I
    .end local v29    # "bTotal":I
    .restart local v9    # "bTotal":I
    .restart local v25    # "cTotal":I
    move/from16 v30, v2

    move/from16 v13, v25

    move/from16 v2, v31

    move-object/from16 v31, v3

    move v3, v9

    goto/16 :goto_4

    .line 1293
    .end local v25    # "cTotal":I
    .local v9, "aVal":J
    .restart local v11    # "bank":I
    .restart local v12    # "bOff":I
    .restart local v26    # "cTotal":I
    .restart local v29    # "bTotal":I
    .restart local v32    # "index":I
    :cond_e
    move/from16 v25, v26

    move/from16 v26, v29

    const/16 v13, 0x40

    const/16 v30, 0x1

    .end local v29    # "bTotal":I
    .restart local v25    # "cTotal":I
    .local v26, "bTotal":I
    add-int/2addr v12, v2

    .line 1294
    ushr-long v9, v9, v31

    .line 1295
    .end local v32    # "index":I
    move/from16 v30, v2

    move/from16 v13, v25

    move/from16 v2, v31

    move-object/from16 v31, v3

    move/from16 v3, v26

    goto/16 :goto_5
.end method

.method public blacklist modMultiplyLD(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 30
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 869
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 870
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 872
    return-object p0

    .line 874
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 875
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 877
    return-object p1

    .line 883
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 884
    .local v5, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 886
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 887
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 893
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 894
    .local v6, "aLen":I
    add-int/lit8 v7, v3, 0x3f

    ushr-int/lit8 v7, v7, 0x6

    .line 895
    .local v7, "bLen":I
    add-int v8, v2, v3

    add-int/lit8 v8, v8, 0x3e

    ushr-int/lit8 v14, v8, 0x6

    .line 897
    .local v14, "cLen":I
    const/4 v15, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 899
    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v16, v8, v15

    .line 900
    .local v16, "a0":J
    const-wide/16 v8, 0x1

    cmp-long v8, v16, v8

    if-nez v8, :cond_3

    .line 902
    return-object v5

    .line 908
    :cond_3
    new-array v13, v14, [J

    .line 909
    .local v13, "c0":[J
    iget-object v10, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/16 v18, 0x0

    move-wide/from16 v8, v16

    move v11, v7

    move-object v12, v13

    move/from16 v19, v2

    move-object v2, v13

    .end local v13    # "c0":[J
    .local v2, "c0":[J
    .local v19, "aDeg":I
    move/from16 v13, v18

    invoke-static/range {v8 .. v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 914
    invoke-static {v2, v15, v14, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v8

    return-object v8

    .line 920
    .end local v16    # "a0":J
    .end local v19    # "aDeg":I
    .local v2, "aDeg":I
    :cond_4
    move/from16 v19, v2

    .end local v2    # "aDeg":I
    .restart local v19    # "aDeg":I
    add-int/lit8 v2, v3, 0x7

    add-int/lit8 v2, v2, 0x3f

    ushr-int/lit8 v2, v2, 0x6

    .line 925
    .local v2, "bMax":I
    const/16 v9, 0x10

    new-array v10, v9, [I

    .line 930
    .local v10, "ti":[I
    shl-int/lit8 v11, v2, 0x4

    new-array v11, v11, [J

    .line 931
    .local v11, "T0":[J
    move v12, v2

    .line 932
    .local v12, "tOff":I
    aput v12, v10, v8

    .line 933
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v8, v15, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 936
    add-int v13, v12, v2

    move v12, v13

    aput v13, v10, v8

    .line 937
    and-int/lit8 v13, v8, 0x1

    if-nez v13, :cond_5

    .line 939
    ushr-int/lit8 v21, v12, 0x1

    const/16 v25, 0x1

    move-object/from16 v20, v11

    move-object/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v2

    invoke-static/range {v20 .. v25}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    goto :goto_1

    .line 943
    :cond_5
    sub-int v23, v12, v2

    move-object/from16 v20, v11

    move/from16 v21, v2

    move-object/from16 v22, v11

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v2

    invoke-static/range {v20 .. v26}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    .line 934
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 950
    .end local v8    # "i":I
    :cond_6
    array-length v8, v11

    new-array v8, v8, [J

    .line 951
    .local v8, "T1":[J
    const/16 v21, 0x0

    const/16 v23, 0x0

    array-length v9, v11

    const/16 v25, 0x4

    move-object/from16 v20, v11

    move-object/from16 v22, v8

    move/from16 v24, v9

    invoke-static/range {v20 .. v25}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 954
    iget-object v9, v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 955
    .local v9, "a":[J
    new-array v13, v14, [J

    .line 957
    .local v13, "c":[J
    const/16 v16, 0xf

    .line 963
    .local v16, "MASK":I
    const/16 v17, 0x38

    .local v17, "k":I
    :goto_2
    if-ltz v17, :cond_8

    .line 965
    const/16 v20, 0x1

    move/from16 v15, v20

    .local v15, "j":I
    :goto_3
    if-ge v15, v6, :cond_7

    .line 967
    aget-wide v20, v9, v15

    move/from16 v27, v3

    move-object/from16 v28, v4

    .end local v3    # "bDeg":I
    .end local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v27, "bDeg":I
    .local v28, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    ushr-long v3, v20, v17

    long-to-int v3, v3

    .line 968
    .local v3, "aVal":I
    and-int v4, v3, v16

    .line 969
    .local v4, "u":I
    ushr-int/lit8 v20, v3, 0x4

    and-int v29, v20, v16

    .line 970
    .local v29, "v":I
    add-int/lit8 v21, v15, -0x1

    aget v23, v10, v4

    aget v25, v10, v29

    move-object/from16 v20, v13

    move-object/from16 v22, v11

    move-object/from16 v24, v8

    move/from16 v26, v2

    invoke-static/range {v20 .. v26}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 965
    .end local v3    # "aVal":I
    .end local v4    # "u":I
    .end local v29    # "v":I
    add-int/lit8 v15, v15, 0x2

    move/from16 v3, v27

    move-object/from16 v4, v28

    goto :goto_3

    .end local v27    # "bDeg":I
    .end local v28    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v3, "bDeg":I
    .local v4, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    :cond_7
    move/from16 v27, v3

    move-object/from16 v28, v4

    .line 972
    .end local v3    # "bDeg":I
    .end local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v15    # "j":I
    .restart local v27    # "bDeg":I
    .restart local v28    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v13, v4, v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 963
    add-int/lit8 v17, v17, -0x8

    move/from16 v3, v27

    move-object/from16 v4, v28

    const/4 v15, 0x0

    goto :goto_2

    .end local v27    # "bDeg":I
    .end local v28    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v3    # "bDeg":I
    .restart local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    :cond_8
    move/from16 v27, v3

    move-object/from16 v28, v4

    .line 975
    .end local v3    # "bDeg":I
    .end local v4    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v17    # "k":I
    .restart local v27    # "bDeg":I
    .restart local v28    # "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    const/16 v3, 0x38

    .local v3, "k":I
    :goto_4
    if-ltz v3, :cond_b

    .line 977
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    if-ge v4, v6, :cond_9

    .line 979
    aget-wide v20, v9, v4

    move-object v15, v5

    move/from16 v17, v6

    .end local v5    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v6    # "aLen":I
    .local v15, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v17, "aLen":I
    ushr-long v5, v20, v3

    long-to-int v5, v5

    .line 980
    .local v5, "aVal":I
    and-int v6, v5, v16

    .line 981
    .local v6, "u":I
    ushr-int/lit8 v20, v5, 0x4

    and-int v29, v20, v16

    .line 982
    .restart local v29    # "v":I
    aget v23, v10, v6

    aget v25, v10, v29

    move-object/from16 v20, v13

    move/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v24, v8

    move/from16 v26, v2

    invoke-static/range {v20 .. v26}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 977
    .end local v5    # "aVal":I
    .end local v6    # "u":I
    .end local v29    # "v":I
    add-int/lit8 v4, v4, 0x2

    move-object v5, v15

    move/from16 v6, v17

    goto :goto_5

    .end local v15    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v17    # "aLen":I
    .local v5, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .local v6, "aLen":I
    :cond_9
    move-object v15, v5

    move/from16 v17, v6

    .line 984
    .end local v4    # "j":I
    .end local v5    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v6    # "aLen":I
    .restart local v15    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v17    # "aLen":I
    if-lez v3, :cond_a

    .line 986
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v13, v5, v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    goto :goto_6

    .line 984
    :cond_a
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 975
    :goto_6
    add-int/lit8 v3, v3, -0x8

    move-object v5, v15

    move/from16 v6, v17

    goto :goto_4

    .end local v15    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .end local v17    # "aLen":I
    .restart local v5    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v6    # "aLen":I
    :cond_b
    move-object v15, v5

    const/4 v5, 0x0

    .line 993
    .end local v3    # "k":I
    .end local v5    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .restart local v15    # "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    invoke-static {v13, v5, v14, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    return-object v3
.end method

.method public blacklist modReduce(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 1347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    .line 1348
    .local v0, "buf":[J
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    .line 1349
    .local v1, "rLen":I
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public blacklist modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 9
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1668
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1670
    return-object p0

    .line 1673
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 1674
    .local v1, "_2len":I
    new-array v2, v1, [J

    .line 1676
    .local v2, "r":[J
    const/4 v3, 0x0

    .line 1677
    .local v3, "pos":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1679
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    .line 1680
    .local v4, "mi":J
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .local v6, "pos":I
    long-to-int v7, v4

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 1681
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    const/16 v7, 0x20

    ushr-long v7, v4, v7

    long-to-int v7, v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 1682
    .end local v4    # "mi":J
    goto :goto_0

    .line 1684
    :cond_1
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v5

    invoke-direct {v4, v2, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v4
.end method

.method public blacklist modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 5
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 1689
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1690
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1692
    return-object p0

    .line 1695
    :cond_0
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    .line 1696
    .local v1, "mLen":I
    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 1697
    .local v2, "r":[J
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1699
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1701
    invoke-static {v2, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1702
    array-length v3, v2

    invoke-static {v2, v4, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_0

    .line 1705
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 30
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    .line 1358
    .local v0, "aDeg":I
    if-nez v0, :cond_0

    .line 1360
    return-object p0

    .line 1362
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    .line 1363
    .local v1, "bDeg":I
    if-nez v1, :cond_1

    .line 1365
    return-object p1

    .line 1371
    :cond_1
    move-object/from16 v2, p0

    .local v2, "A":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object/from16 v3, p1

    .line 1372
    .local v3, "B":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-le v0, v1, :cond_2

    .line 1374
    move-object/from16 v2, p1

    move-object/from16 v3, p0

    .line 1375
    move v4, v0

    .local v4, "tmp":I
    move v0, v1

    move v1, v4

    .line 1381
    .end local v4    # "tmp":I
    :cond_2
    add-int/lit8 v4, v0, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    .line 1382
    .local v4, "aLen":I
    add-int/lit8 v5, v1, 0x3f

    ushr-int/lit8 v5, v5, 0x6

    .line 1383
    .local v5, "bLen":I
    add-int v6, v0, v1

    add-int/lit8 v6, v6, 0x3e

    ushr-int/lit8 v13, v6, 0x6

    .line 1385
    .local v13, "cLen":I
    const/4 v14, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 1387
    iget-object v6, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v15, v6, v14

    .line 1388
    .local v15, "a0":J
    const-wide/16 v6, 0x1

    cmp-long v6, v15, v6

    if-nez v6, :cond_3

    .line 1390
    return-object v3

    .line 1396
    :cond_3
    new-array v12, v13, [J

    .line 1397
    .local v12, "c0":[J
    iget-object v8, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v11, 0x0

    move-wide v6, v15

    move v9, v5

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1403
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v6, v12, v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v6

    .line 1409
    .end local v12    # "c0":[J
    .end local v15    # "a0":J
    :cond_4
    add-int/lit8 v7, v1, 0x7

    add-int/lit8 v7, v7, 0x3f

    ushr-int/lit8 v22, v7, 0x6

    .line 1414
    .local v22, "bMax":I
    const/16 v7, 0x10

    new-array v12, v7, [I

    .line 1419
    .local v12, "ti":[I
    shl-int/lit8 v8, v22, 0x4

    new-array v11, v8, [J

    .line 1420
    .local v11, "T0":[J
    move/from16 v8, v22

    .line 1421
    .local v8, "tOff":I
    aput v8, v12, v6

    .line 1422
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v6, v14, v11, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1423
    const/4 v6, 0x2

    move/from16 v23, v8

    .end local v8    # "tOff":I
    .local v6, "i":I
    .local v23, "tOff":I
    :goto_0
    if-ge v6, v7, :cond_6

    .line 1425
    add-int v8, v23, v22

    move/from16 v23, v8

    aput v8, v12, v6

    .line 1426
    and-int/lit8 v8, v6, 0x1

    if-nez v8, :cond_5

    .line 1428
    ushr-int/lit8 v16, v23, 0x1

    const/16 v20, 0x1

    move-object v15, v11

    move-object/from16 v17, v11

    move/from16 v18, v23

    move/from16 v19, v22

    invoke-static/range {v15 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    goto :goto_1

    .line 1432
    :cond_5
    sub-int v18, v23, v22

    move-object v15, v11

    move/from16 v16, v22

    move-object/from16 v17, v11

    move-object/from16 v19, v11

    move/from16 v20, v23

    move/from16 v21, v22

    invoke-static/range {v15 .. v21}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    .line 1423
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1439
    .end local v6    # "i":I
    :cond_6
    array-length v6, v11

    new-array v6, v6, [J

    .line 1440
    .local v6, "T1":[J
    const/16 v16, 0x0

    const/16 v18, 0x0

    array-length v7, v11

    const/16 v20, 0x4

    move-object v15, v11

    move-object/from16 v17, v6

    move/from16 v19, v7

    invoke-static/range {v15 .. v20}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1443
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1444
    .local v10, "a":[J
    shl-int/lit8 v7, v13, 0x3

    new-array v9, v7, [J

    .line 1446
    .local v9, "c":[J
    const/16 v24, 0xf

    .line 1452
    .local v24, "MASK":I
    const/4 v7, 0x0

    .local v7, "aPos":I
    :goto_2
    if-ge v7, v4, :cond_8

    .line 1454
    aget-wide v15, v10, v7

    .line 1455
    .local v15, "aVal":J
    move v8, v7

    move-wide v14, v15

    .line 1458
    .end local v15    # "aVal":J
    .local v8, "cOff":I
    .local v14, "aVal":J
    :goto_3
    move/from16 v25, v0

    .end local v0    # "aDeg":I
    .local v25, "aDeg":I
    long-to-int v0, v14

    and-int v0, v0, v24

    .line 1459
    .local v0, "u":I
    const/16 v26, 0x4

    ushr-long v14, v14, v26

    .line 1460
    move/from16 v27, v1

    .end local v1    # "bDeg":I
    .local v27, "bDeg":I
    long-to-int v1, v14

    and-int v1, v1, v24

    .line 1461
    .local v1, "v":I
    aget v18, v12, v0

    aget v20, v12, v1

    move-wide/from16 v28, v14

    .end local v14    # "aVal":J
    .local v28, "aVal":J
    move-object v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v11

    move-object/from16 v19, v6

    move/from16 v21, v22

    invoke-static/range {v15 .. v21}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1462
    ushr-long v14, v28, v26

    .line 1463
    .end local v28    # "aVal":J
    .restart local v14    # "aVal":J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_7

    .line 1465
    nop

    .line 1452
    .end local v0    # "u":I
    .end local v1    # "v":I
    .end local v8    # "cOff":I
    .end local v14    # "aVal":J
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    const/4 v14, 0x0

    goto :goto_2

    .line 1467
    .restart local v0    # "u":I
    .restart local v1    # "v":I
    .restart local v8    # "cOff":I
    .restart local v14    # "aVal":J
    :cond_7
    add-int/2addr v8, v13

    .line 1468
    .end local v0    # "u":I
    .end local v1    # "v":I
    move/from16 v0, v25

    move/from16 v1, v27

    goto :goto_3

    .line 1452
    .end local v8    # "cOff":I
    .end local v14    # "aVal":J
    .end local v25    # "aDeg":I
    .end local v27    # "bDeg":I
    .local v0, "aDeg":I
    .local v1, "bDeg":I
    :cond_8
    move/from16 v25, v0

    move/from16 v27, v1

    .line 1472
    .end local v0    # "aDeg":I
    .end local v1    # "bDeg":I
    .end local v7    # "aPos":I
    .restart local v25    # "aDeg":I
    .restart local v27    # "bDeg":I
    array-length v0, v9

    .line 1473
    .local v0, "cOff":I
    :goto_4
    sub-int v1, v0, v13

    move v0, v1

    if-eqz v1, :cond_9

    .line 1475
    sub-int v8, v0, v13

    const/16 v1, 0x8

    move-object v7, v9

    move-object v14, v9

    .end local v9    # "c":[J
    .local v14, "c":[J
    move-object v15, v10

    .end local v10    # "a":[J
    .local v15, "a":[J
    move v10, v0

    move-object/from16 v16, v11

    .end local v11    # "T0":[J
    .local v16, "T0":[J
    move v11, v13

    move-object/from16 v17, v12

    .end local v12    # "ti":[I
    .local v17, "ti":[I
    move v12, v1

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    goto :goto_4

    .line 1473
    .end local v14    # "c":[J
    .end local v15    # "a":[J
    .end local v16    # "T0":[J
    .end local v17    # "ti":[I
    .restart local v9    # "c":[J
    .restart local v10    # "a":[J
    .restart local v11    # "T0":[J
    .restart local v12    # "ti":[I
    :cond_9
    move-object v14, v9

    .line 1483
    .end local v0    # "cOff":I
    .end local v9    # "c":[J
    .restart local v14    # "c":[J
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-direct {v0, v14, v1, v13}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public blacklist reduce(I[I)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 1488
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1489
    .local v0, "buf":[J
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    .line 1490
    .local v1, "rLen":I
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1492
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1493
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1495
    :cond_0
    return-void
.end method

.method public blacklist square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    .locals 9
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 1710
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1711
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1713
    return-object p0

    .line 1716
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 1717
    .local v1, "_2len":I
    new-array v2, v1, [J

    .line 1719
    .local v2, "r":[J
    const/4 v3, 0x0

    .line 1720
    .local v3, "pos":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1722
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v4, v4, v5

    .line 1723
    .local v4, "mi":J
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .local v6, "pos":I
    long-to-int v7, v4

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 1724
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    const/16 v7, 0x20

    ushr-long v7, v4, v7

    long-to-int v7, v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v6

    .line 1725
    .end local v4    # "mi":J
    goto :goto_0

    .line 1727
    :cond_1
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-direct {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v4
.end method

.method public blacklist testBitZero()Z
    .locals 5

    .line 800
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-wide v0, v0, v2

    const-wide/16 v3, 0x1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 15

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 544
    .local v0, "usedLen":I
    if-nez v0, :cond_0

    .line 546
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    .line 550
    .local v1, "highestInt":J
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 551
    .local v4, "temp":[B
    const/4 v5, 0x0

    .line 552
    .local v5, "barrI":I
    const/4 v6, 0x0

    .line 553
    .local v6, "trailingZeroBytesDone":Z
    const/4 v7, 0x7

    .local v7, "j":I
    :goto_0
    if-ltz v7, :cond_3

    .line 555
    mul-int/lit8 v8, v7, 0x8

    ushr-long v8, v1, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 556
    .local v8, "thisByte":B
    if-nez v6, :cond_1

    if-eqz v8, :cond_2

    .line 558
    :cond_1
    const/4 v6, 0x1

    .line 559
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "barrI":I
    .local v9, "barrI":I
    aput-byte v8, v4, v5

    move v5, v9

    .line 553
    .end local v8    # "thisByte":B
    .end local v9    # "barrI":I
    .restart local v5    # "barrI":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 563
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    .line 564
    .local v7, "barrLen":I
    new-array v3, v7, [B

    .line 565
    .local v3, "barr":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_4

    .line 567
    aget-byte v9, v4, v8

    aput-byte v9, v3, v8

    .line 565
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 571
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v8, v0, -0x2

    .local v8, "iarrJ":I
    :goto_2
    if-ltz v8, :cond_6

    .line 573
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v9, v9, v8

    .line 574
    .local v9, "mi":J
    const/4 v11, 0x7

    .local v11, "j":I
    :goto_3
    if-ltz v11, :cond_5

    .line 576
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "barrI":I
    .local v12, "barrI":I
    mul-int/lit8 v13, v11, 0x8

    ushr-long v13, v9, v13

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v3, v5

    .line 574
    add-int/lit8 v11, v11, -0x1

    move v5, v12

    goto :goto_3

    .line 571
    .end local v9    # "mi":J
    .end local v11    # "j":I
    .end local v12    # "barrI":I
    .restart local v5    # "barrI":I
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 579
    .end local v8    # "iarrJ":I
    :cond_6
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v8
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 2181
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2182
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 2184
    const-string v1, "0"

    return-object v1

    .line 2187
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2188
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2190
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2193
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2194
    .local v3, "len":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 2196
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2200
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    goto :goto_0

    .line 2201
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
