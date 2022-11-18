.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o BASE_TIME:J

.field private static final greylist-max-o DELTA_G:[[F

.field private static final greylist-max-o DELTA_H:[[F

.field private static final greylist-max-o EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final greylist-max-o EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final greylist-max-o EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final greylist-max-o G_COEFF:[[F

.field private static final greylist-max-o H_COEFF:[[F

.field private static final greylist-max-o SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private greylist-max-o mGcLatitudeRad:F

.field private greylist-max-o mGcLongitudeRad:F

.field private greylist-max-o mGcRadiusKm:F

.field private greylist-max-o mX:F

.field private greylist-max-o mY:F

.field private greylist-max-o mZ:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 34
    nop

    .line 53
    const/16 v0, 0xd

    new-array v1, v0, [[F

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    aput-object v3, v1, v4

    const/4 v3, 0x2

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    aput-object v6, v1, v2

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    aput-object v7, v1, v3

    const/4 v7, 0x4

    new-array v8, v7, [F

    fill-array-data v8, :array_2

    aput-object v8, v1, v6

    const/4 v8, 0x5

    new-array v9, v8, [F

    fill-array-data v9, :array_3

    aput-object v9, v1, v7

    const/4 v9, 0x6

    new-array v10, v9, [F

    fill-array-data v10, :array_4

    aput-object v10, v1, v8

    const/4 v10, 0x7

    new-array v11, v10, [F

    fill-array-data v11, :array_5

    aput-object v11, v1, v9

    const/16 v11, 0x8

    new-array v12, v11, [F

    fill-array-data v12, :array_6

    aput-object v12, v1, v10

    const/16 v12, 0x9

    new-array v13, v12, [F

    fill-array-data v13, :array_7

    aput-object v13, v1, v11

    const/16 v13, 0xa

    new-array v14, v13, [F

    fill-array-data v14, :array_8

    aput-object v14, v1, v12

    const/16 v14, 0xb

    new-array v15, v14, [F

    fill-array-data v15, :array_9

    aput-object v15, v1, v13

    const/16 v15, 0xc

    new-array v13, v15, [F

    fill-array-data v13, :array_a

    aput-object v13, v1, v14

    new-array v13, v0, [F

    fill-array-data v13, :array_b

    aput-object v13, v1, v15

    sput-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 68
    new-array v13, v0, [[F

    new-array v0, v2, [F

    aput v5, v0, v4

    aput-object v0, v13, v4

    new-array v0, v3, [F

    fill-array-data v0, :array_c

    aput-object v0, v13, v2

    new-array v0, v6, [F

    fill-array-data v0, :array_d

    aput-object v0, v13, v3

    new-array v0, v7, [F

    fill-array-data v0, :array_e

    aput-object v0, v13, v6

    new-array v0, v8, [F

    fill-array-data v0, :array_f

    aput-object v0, v13, v7

    new-array v0, v9, [F

    fill-array-data v0, :array_10

    aput-object v0, v13, v8

    new-array v0, v10, [F

    fill-array-data v0, :array_11

    aput-object v0, v13, v9

    new-array v0, v11, [F

    fill-array-data v0, :array_12

    aput-object v0, v13, v10

    new-array v0, v12, [F

    fill-array-data v0, :array_13

    aput-object v0, v13, v11

    const/16 v0, 0xa

    new-array v11, v0, [F

    fill-array-data v11, :array_14

    aput-object v11, v13, v12

    new-array v11, v14, [F

    fill-array-data v11, :array_15

    aput-object v11, v13, v0

    new-array v0, v15, [F

    fill-array-data v0, :array_16

    aput-object v0, v13, v14

    const/16 v0, 0xd

    new-array v11, v0, [F

    fill-array-data v11, :array_17

    aput-object v11, v13, v15

    sput-object v13, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    .line 83
    new-array v11, v0, [[F

    new-array v0, v2, [F

    aput v5, v0, v4

    aput-object v0, v11, v4

    new-array v0, v3, [F

    fill-array-data v0, :array_18

    aput-object v0, v11, v2

    new-array v0, v6, [F

    fill-array-data v0, :array_19

    aput-object v0, v11, v3

    new-array v0, v7, [F

    fill-array-data v0, :array_1a

    aput-object v0, v11, v6

    new-array v0, v8, [F

    fill-array-data v0, :array_1b

    aput-object v0, v11, v7

    new-array v0, v9, [F

    fill-array-data v0, :array_1c

    aput-object v0, v11, v8

    new-array v0, v10, [F

    fill-array-data v0, :array_1d

    aput-object v0, v11, v9

    const/16 v0, 0x8

    new-array v13, v0, [F

    fill-array-data v13, :array_1e

    aput-object v13, v11, v10

    new-array v13, v12, [F

    fill-array-data v13, :array_1f

    aput-object v13, v11, v0

    const/16 v0, 0xa

    new-array v13, v0, [F

    fill-array-data v13, :array_20

    aput-object v13, v11, v12

    new-array v13, v14, [F

    fill-array-data v13, :array_21

    aput-object v13, v11, v0

    new-array v0, v15, [F

    fill-array-data v0, :array_22

    aput-object v0, v11, v14

    const/16 v0, 0xd

    new-array v13, v0, [F

    fill-array-data v13, :array_23

    aput-object v13, v11, v15

    sput-object v11, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    .line 98
    new-array v11, v0, [[F

    new-array v0, v2, [F

    aput v5, v0, v4

    aput-object v0, v11, v4

    new-array v0, v3, [F

    fill-array-data v0, :array_24

    aput-object v0, v11, v2

    new-array v0, v6, [F

    fill-array-data v0, :array_25

    aput-object v0, v11, v3

    new-array v0, v7, [F

    fill-array-data v0, :array_26

    aput-object v0, v11, v6

    new-array v0, v8, [F

    fill-array-data v0, :array_27

    aput-object v0, v11, v7

    new-array v0, v9, [F

    fill-array-data v0, :array_28

    aput-object v0, v11, v8

    new-array v0, v10, [F

    fill-array-data v0, :array_29

    aput-object v0, v11, v9

    const/16 v0, 0x8

    new-array v3, v0, [F

    fill-array-data v3, :array_2a

    aput-object v3, v11, v10

    new-array v3, v12, [F

    fill-array-data v3, :array_2b

    aput-object v3, v11, v0

    const/16 v0, 0xa

    new-array v3, v0, [F

    fill-array-data v3, :array_2c

    aput-object v3, v11, v12

    new-array v3, v14, [F

    fill-array-data v3, :array_2d

    aput-object v3, v11, v0

    new-array v0, v15, [F

    fill-array-data v0, :array_2e

    aput-object v0, v11, v14

    const/16 v0, 0xd

    new-array v0, v0, [F

    fill-array-data v0, :array_2f

    aput-object v0, v11, v15

    sput-object v11, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    .line 113
    new-instance v0, Ljava/util/Calendar$Builder;

    invoke-direct {v0}, Ljava/util/Calendar$Builder;-><init>()V

    .line 114
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar$Builder;->setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;

    move-result-object v0

    const/16 v3, 0x7e4

    .line 115
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/Calendar$Builder;->setDate(III)Ljava/util/Calendar$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar$Builder;->build()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    .line 122
    array-length v0, v1

    .line 123
    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    move-result-object v0

    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    .line 122
    return-void

    nop

    :array_0
    .array-data 4
        -0x391a4700    # -29404.5f
        -0x3b4aa99a    # -1450.7f
    .end array-data

    :array_1
    .array-data 4
        -0x3ae3c000    # -2500.0f
        0x453a6000    # 2982.0f
        0x44d1999a    # 1676.8f
    .end array-data

    :array_2
    .array-data 4
        0x44aa7ccd    # 1363.9f
        -0x3aeb3000    # -2381.0f
        0x449a8666    # 1236.2f
        0x44036ccd    # 525.7f
    .end array-data

    :array_3
    .array-data 4
        0x4461c666    # 903.1f
        0x444a599a    # 809.4f
        0x42ac6666    # 86.2f
        -0x3c654ccd    # -309.4f
        0x423f999a    # 47.9f
    .end array-data

    :array_4
    .array-data 4
        -0x3c95999a    # -234.4f
        0x43b58ccd    # 363.1f
        0x433bcccd    # 187.8f
        -0x3cf34ccd    # -140.7f
        -0x3ce8cccd    # -151.2f
        0x415b3333    # 13.7f
    .end array-data

    :array_5
    .array-data 4
        0x4283cccd    # 65.9f
        0x42833333    # 65.6f
        0x42920000    # 73.0f
        -0x3d0d0000    # -121.5f
        -0x3def3333    # -36.2f
        0x41580000    # 13.5f
        -0x3d7e999a    # -64.7f
    .end array-data

    :array_6
    .array-data 4
        0x42a13333    # 80.6f
        -0x3d666666    # -76.8f
        -0x3efb3333    # -8.3f
        0x42620000    # 56.5f
        0x417ccccd    # 15.8f
        0x40cccccd    # 6.4f
        -0x3f19999a    # -7.2f
        0x411ccccd    # 9.8f
    .end array-data

    :array_7
    .array-data 4
        0x41bccccd    # 23.6f
        0x411ccccd    # 9.8f
        -0x3e740000    # -17.5f
        -0x41333333    # -0.4f
        -0x3e573333    # -21.1f
        0x4174cccd    # 15.3f
        0x415b3333    # 13.7f
        -0x3e7c0000    # -16.5f
        -0x41666666    # -0.3f
    .end array-data

    :array_8
    .array-data 4
        0x40a00000    # 5.0f
        0x41033333    # 8.2f
        0x4039999a    # 2.9f
        -0x404ccccd    # -1.4f
        -0x40733333    # -1.1f
        -0x3eab3333    # -13.3f
        0x3f8ccccd    # 1.1f
        0x410e6666    # 8.9f
        -0x3eeb3333    # -9.3f
        -0x3ec1999a    # -11.9f
    .end array-data

    :array_9
    .array-data 4
        -0x400ccccd    # -1.9f
        -0x3f39999a    # -6.2f
        -0x42333333    # -0.1f
        0x3fd9999a    # 1.7f
        -0x4099999a    # -0.9f
        0x3f19999a    # 0.6f
        -0x4099999a    # -0.9f
        0x3ff33333    # 1.9f
        0x3fb33333    # 1.4f
        -0x3fe66666    # -2.4f
        -0x3f866666    # -3.9f
    .end array-data

    :array_a
    .array-data 4
        0x40400000    # 3.0f
        -0x404ccccd    # -1.4f
        -0x3fe00000    # -2.5f
        0x4019999a    # 2.4f
        -0x4099999a    # -0.9f
        0x3e99999a    # 0.3f
        -0x40cccccd    # -0.7f
        -0x42333333    # -0.1f
        0x3fb33333    # 1.4f
        -0x40e66666    # -0.6f
        0x3e4ccccd    # 0.2f
        0x40466666    # 3.1f
    .end array-data

    :array_b
    .array-data 4
        -0x40000000    # -2.0f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        0x3fa66666    # 1.3f
        -0x40666666    # -1.2f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        -0x41b33333    # -0.2f
        -0x41000000    # -0.5f
        0x3dcccccd    # 0.1f
        -0x40733333    # -1.1f
        -0x41666666    # -0.3f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x45916733    # 4652.9f
    .end array-data

    :array_d
    .array-data 4
        0x0
        -0x3ac50666    # -2991.6f
        -0x3bc84ccd    # -734.8f
    .end array-data

    :array_e
    .array-data 4
        0x0
        -0x3d5b999a    # -82.2f
        0x4371cccd    # 241.8f
        -0x3bf84666    # -542.9f
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x438d0000    # 282.0f
        -0x3ce1999a    # -158.4f
        0x4347cccd    # 199.8f
        -0x3c50f333    # -350.1f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x423ecccd    # 47.7f
        0x43506666    # 208.4f
        -0x3d0d6666    # -121.3f
        0x4200cccd    # 32.2f
        0x42c63333    # 99.1f
    .end array-data

    :array_11
    .array-data 4
        0x0
        -0x3e673333    # -19.1f
        0x41c80000    # 25.0f
        0x4252cccd    # 52.7f
        -0x3d7f3333    # -64.4f
        0x41100000    # 9.0f
        0x42883333    # 68.1f
    .end array-data

    :array_12
    .array-data 4
        0x0
        -0x3db26666    # -51.4f
        -0x3e79999a    # -16.8f
        0x40133333    # 2.3f
        0x41bc0000    # 23.5f
        -0x3ff33333    # -2.2f
        -0x3e266666    # -27.2f
        -0x400ccccd    # -1.9f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x41066666    # 8.4f
        -0x3e8b3333    # -15.3f
        0x414ccccd    # 12.8f
        -0x3ec33333    # -11.8f
        0x416e6666    # 14.9f
        0x40666666    # 3.6f
        -0x3f233333    # -6.9f
        0x40333333    # 2.8f
    .end array-data

    :array_14
    .array-data 4
        0x0
        -0x3e45999a    # -23.3f
        0x4131999a    # 11.1f
        0x411ccccd    # 9.8f
        -0x3f5ccccd    # -5.1f
        -0x3f39999a    # -6.2f
        0x40f9999a    # 7.8f
        0x3ecccccd    # 0.4f
        -0x40400000    # -1.5f
        0x411b3333    # 9.7f
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x4059999a    # 3.4f
        -0x41b33333    # -0.2f
        0x40600000    # 3.5f
        0x4099999a    # 4.8f
        -0x3ef66666    # -8.6f
        -0x42333333    # -0.1f
        -0x3f79999a    # -4.2f
        -0x3fa66666    # -3.4f
        -0x42333333    # -0.1f
        -0x3ef33333    # -8.8f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x40266666    # 2.6f
        -0x41000000    # -0.5f
        -0x41333333    # -0.4f
        0x3f19999a    # 0.6f
        -0x41b33333    # -0.2f
        -0x40266666    # -1.7f
        -0x40333333    # -1.6f
        -0x3fc00000    # -3.0f
        -0x40000000    # -2.0f
        -0x3fd9999a    # -2.6f
    .end array-data

    :array_17
    .array-data 4
        0x0
        -0x40666666    # -1.2f
        0x3f000000    # 0.5f
        0x3fa66666    # 1.3f
        -0x4019999a    # -1.8f
        0x3dcccccd    # 0.1f
        0x3f333333    # 0.7f
        -0x42333333    # -0.1f
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
        -0x4099999a    # -0.9f
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_18
    .array-data 4
        0x40d66666    # 6.7f
        0x40f66666    # 7.7f
    .end array-data

    :array_19
    .array-data 4
        -0x3ec80000    # -11.5f
        -0x3f1ccccd    # -7.1f
        -0x3ff33333    # -2.2f
    .end array-data

    :array_1a
    .array-data 4
        0x40333333    # 2.8f
        -0x3f39999a    # -6.2f
        0x4059999a    # 3.4f
        -0x3ebccccd    # -12.2f
    .end array-data

    :array_1b
    .array-data 4
        -0x40733333    # -1.1f
        -0x40333333    # -1.6f
        -0x3f400000    # -6.0f
        0x40accccd    # 5.4f
        -0x3f500000    # -5.5f
    .end array-data

    :array_1c
    .array-data 4
        -0x41666666    # -0.3f
        0x3f19999a    # 0.6f
        -0x40cccccd    # -0.7f
        0x3dcccccd    # 0.1f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        -0x40e66666    # -0.6f
        -0x41333333    # -0.4f
        0x3f000000    # 0.5f
        0x3fb33333    # 1.4f
        -0x404ccccd    # -1.4f
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1e
    .array-data 4
        -0x42333333    # -0.1f
        -0x41666666    # -0.3f
        -0x42333333    # -0.1f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        -0x41000000    # -0.5f
        -0x40b33333    # -0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1f
    .array-data 4
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        -0x42333333    # -0.1f
        0x3f000000    # 0.5f
        -0x42333333    # -0.1f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x0
        0x3ecccccd    # 0.4f
    .end array-data

    :array_20
    .array-data 4
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        0x3ecccccd    # 0.4f
        -0x41666666    # -0.3f
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        -0x41333333    # -0.4f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
        0x0
        0x3e4ccccd    # 0.2f
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        0x0
        -0x42333333    # -0.1f
        -0x41b33333    # -0.2f
        -0x42333333    # -0.1f
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
        -0x42333333    # -0.1f
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
    .end array-data

    :array_24
    .array-data 4
        0x0
        -0x3e373333    # -25.1f
    .end array-data

    :array_25
    .array-data 4
        0x0
        -0x3e0e6666    # -30.2f
        -0x3e40cccd    # -23.9f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x40b66666    # 5.7f
        -0x40800000    # -1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x40dccccd    # 6.9f
        0x406ccccd    # 3.7f
        -0x3f4ccccd    # -5.6f
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x40200000    # 2.5f
        -0x4099999a    # -0.9f
        0x40400000    # 3.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        -0x4019999a    # -1.8f
        -0x404ccccd    # -1.4f
        0x3f666666    # 0.9f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f19999a    # 0.6f
        -0x40cccccd    # -0.7f
        -0x41b33333    # -0.2f
        -0x40666666    # -1.2f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2b
    .array-data 4
        0x0
        -0x41666666    # -0.3f
        0x3f333333    # 0.7f
        -0x41b33333    # -0.2f
        0x3f000000    # 0.5f
        -0x41666666    # -0.3f
        -0x41000000    # -0.5f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2c
    .array-data 4
        0x0
        -0x41666666    # -0.3f
        0x3e4ccccd    # 0.2f
        -0x41333333    # -0.4f
        0x3ecccccd    # 0.4f
        0x3dcccccd    # 0.1f
        0x0
        -0x41b33333    # -0.2f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        -0x41666666    # -0.3f
        0x3dcccccd    # 0.1f
        -0x41b33333    # -0.2f
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x3e4ccccd    # 0.2f
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        -0x42333333    # -0.1f
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        0x3dcccccd    # 0.1f
        0x0
        0x0
        0x0
        -0x42333333    # -0.1f
    .end array-data
.end method

.method public constructor whitelist <init>(FFFJ)V
    .locals 21
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F
    .param p4, "timeMillis"    # J

    .line 142
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    sget-object v1, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v1, v1

    .line 147
    .local v1, "MAX_N":I
    nop

    .line 148
    const v2, -0x3d4c0001    # -89.99999f

    move/from16 v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 147
    const v4, 0x42b3ffff    # 89.99999f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 149
    .end local p1    # "gdLatitudeDeg":F
    .local v2, "gdLatitudeDeg":F
    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v2, v3, v4}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    .line 153
    nop

    .line 159
    new-instance v5, Landroid/hardware/GeomagneticField$LegendreTable;

    add-int/lit8 v6, v1, -0x1

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget v9, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    .line 165
    .local v5, "legendre":Landroid/hardware/GeomagneticField$LegendreTable;
    add-int/lit8 v6, v1, 0x2

    new-array v6, v6, [F

    .line 166
    .local v6, "relativeRadiusPower":[F
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    .line 167
    const v9, 0x45c7199a

    iget v10, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v6, v10

    .line 168
    const/4 v9, 0x2

    .local v9, "i":I
    :goto_0
    array-length v11, v6

    if-ge v9, v11, :cond_0

    .line 169
    add-int/lit8 v11, v9, -0x1

    aget v11, v6, v11

    aget v12, v6, v10

    mul-float/2addr v11, v12

    aput v11, v6, v9

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 175
    .end local v9    # "i":I
    :cond_0
    new-array v9, v1, [F

    .line 176
    .local v9, "sinMLon":[F
    new-array v11, v1, [F

    .line 177
    .local v11, "cosMLon":[F
    const/4 v12, 0x0

    aput v12, v9, v7

    .line 178
    aput v8, v11, v7

    .line 179
    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v9, v10

    .line 180
    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v11, v10

    .line 182
    const/4 v7, 0x2

    .local v7, "m":I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 185
    shr-int/lit8 v10, v7, 0x1

    .line 186
    .local v10, "x":I
    sub-int v12, v7, v10

    aget v12, v9, v12

    aget v13, v11, v10

    mul-float/2addr v12, v13

    sub-int v13, v7, v10

    aget v13, v11, v13

    aget v14, v9, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v9, v7

    .line 187
    sub-int v12, v7, v10

    aget v12, v11, v12

    aget v13, v11, v10

    mul-float/2addr v12, v13

    sub-int v13, v7, v10

    aget v13, v9, v13

    aget v14, v9, v10

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v11, v7

    .line 182
    .end local v10    # "x":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    .end local v7    # "m":I
    :cond_1
    iget v7, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v7, v12

    div-float/2addr v8, v7

    .line 191
    .local v8, "inverseCosLatitude":F
    sget-wide v12, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sub-long v12, p4, v12

    long-to-float v7, v12

    const v10, 0x50eaf626

    div-float/2addr v7, v10

    .line 198
    .local v7, "yearsSinceBase":F
    const/4 v10, 0x0

    .line 199
    .local v10, "gcX":F
    const/4 v12, 0x0

    .line 200
    .local v12, "gcY":F
    const/4 v13, 0x0

    .line 202
    .local v13, "gcZ":F
    const/4 v14, 0x1

    .local v14, "n":I
    :goto_2
    if-ge v14, v1, :cond_3

    .line 203
    const/4 v15, 0x0

    .local v15, "m":I
    :goto_3
    if-gt v15, v14, :cond_2

    .line 205
    sget-object v16, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    aget-object v16, v16, v14

    aget v16, v16, v15

    sget-object v17, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    aget-object v17, v17, v14

    aget v17, v17, v15

    mul-float v17, v17, v7

    add-float v16, v16, v17

    .line 206
    .local v16, "g":F
    sget-object v17, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    aget-object v17, v17, v14

    aget v17, v17, v15

    sget-object v18, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    aget-object v18, v18, v14

    aget v18, v18, v15

    mul-float v18, v18, v7

    add-float v17, v17, v18

    .line 213
    .local v17, "h":F
    add-int/lit8 v18, v14, 0x2

    aget v18, v6, v18

    aget v19, v11, v15

    mul-float v19, v19, v16

    aget v20, v9, v15

    mul-float v20, v20, v17

    add-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v19, v1

    .end local v1    # "MAX_N":I
    .local v19, "MAX_N":I
    iget-object v1, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v1, v1, v14

    aget v1, v1, v15

    mul-float v18, v18, v1

    sget-object v1, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v20, v1, v14

    aget v20, v20, v15

    mul-float v18, v18, v20

    add-float v10, v10, v18

    .line 220
    add-int/lit8 v18, v14, 0x2

    aget v18, v6, v18

    int-to-float v3, v15

    mul-float v18, v18, v3

    aget v3, v9, v15

    mul-float v3, v3, v16

    aget v20, v11, v15

    mul-float v20, v20, v17

    sub-float v3, v3, v20

    mul-float v18, v18, v3

    iget-object v3, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v3, v3, v14

    aget v3, v3, v15

    mul-float v18, v18, v3

    aget-object v3, v1, v14

    aget v3, v3, v15

    mul-float v18, v18, v3

    mul-float v18, v18, v8

    add-float v12, v12, v18

    .line 227
    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    add-int/lit8 v18, v14, 0x2

    aget v18, v6, v18

    mul-float v3, v3, v18

    aget v18, v11, v15

    mul-float v18, v18, v16

    aget v20, v9, v15

    mul-float v20, v20, v17

    add-float v18, v18, v20

    mul-float v3, v3, v18

    iget-object v4, v5, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v4, v4, v14

    aget v4, v4, v15

    mul-float/2addr v3, v4

    aget-object v1, v1, v14

    aget v1, v1, v15

    mul-float/2addr v3, v1

    sub-float/2addr v13, v3

    .line 203
    .end local v16    # "g":F
    .end local v17    # "h":F
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, v19

    goto/16 :goto_3

    .end local v19    # "MAX_N":I
    .restart local v1    # "MAX_N":I
    :cond_2
    move/from16 v19, v1

    .line 202
    .end local v1    # "MAX_N":I
    .end local v15    # "m":I
    .restart local v19    # "MAX_N":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_2

    .end local v19    # "MAX_N":I
    .restart local v1    # "MAX_N":I
    :cond_3
    move/from16 v19, v1

    .line 237
    .end local v1    # "MAX_N":I
    .end local v14    # "n":I
    .restart local v19    # "MAX_N":I
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    iget v1, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    float-to-double v14, v1

    sub-double/2addr v3, v14

    .line 238
    .local v3, "latDiffRad":D
    float-to-double v14, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    move/from16 p1, v2

    .end local v2    # "gdLatitudeDeg":F
    .restart local p1    # "gdLatitudeDeg":F
    float-to-double v1, v13

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v1, v1, v16

    add-double/2addr v14, v1

    double-to-float v1, v14

    iput v1, v0, Landroid/hardware/GeomagneticField;->mX:F

    .line 240
    iput v12, v0, Landroid/hardware/GeomagneticField;->mY:F

    .line 241
    neg-float v1, v10

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v1, v14

    float-to-double v14, v13

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v1, v14

    double-to-float v1, v1

    iput v1, v0, Landroid/hardware/GeomagneticField;->mZ:F

    .line 243
    return-void
.end method

.method private greylist-max-o computeGeocentricCoordinates(FFF)V
    .locals 16
    .param p1, "gdLatitudeDeg"    # F
    .param p2, "gdLongitudeDeg"    # F
    .param p3, "altitudeMeters"    # F

    .line 311
    move-object/from16 v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v1, p3, v1

    .line 312
    .local v1, "altitudeKm":F
    const v2, 0x4c1b2f2f    # 4.0680636E7f

    .line 313
    .local v2, "a2":F
    const v3, 0x4c1a253b    # 4.04083E7f

    .line 314
    .local v3, "b2":F
    move/from16 v4, p1

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 315
    .local v5, "gdLatRad":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 316
    .local v7, "clat":F
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 317
    .local v8, "slat":F
    div-float v9, v8, v7

    .line 318
    .local v9, "tlat":F
    mul-float v10, v2, v7

    mul-float/2addr v10, v7

    mul-float v11, v3, v8

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 319
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 321
    .local v10, "latRad":F
    mul-float v11, v10, v1

    add-float/2addr v11, v3

    mul-float/2addr v11, v9

    mul-float v12, v10, v1

    add-float/2addr v12, v2

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    double-to-float v11, v11

    iput v11, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 324
    move/from16 v11, p2

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v12, v12

    iput v12, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 326
    mul-float v12, v1, v1

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v1

    mul-float v14, v2, v7

    mul-float/2addr v14, v7

    mul-float v15, v3, v8

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    float-to-double v14, v14

    .line 327
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v13, v2, v2

    mul-float/2addr v13, v7

    mul-float/2addr v13, v7

    mul-float v14, v3, v3

    mul-float/2addr v14, v8

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    mul-float v14, v2, v7

    mul-float/2addr v14, v7

    mul-float v15, v3, v8

    mul-float/2addr v15, v8

    add-float/2addr v14, v15

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 331
    .local v12, "radSq":F
    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    iput v13, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    .line 332
    return-void
.end method

.method private static greylist-max-o computeSchmidtQuasiNormFactors(I)[[F
    .locals 9
    .param p0, "maxN"    # I

    .line 398
    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [[F

    .line 399
    .local v0, "schmidtQuasiNorm":[[F
    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 400
    const/4 v2, 0x1

    .local v2, "n":I
    :goto_0
    if-gt v2, p0, :cond_2

    .line 401
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [F

    aput-object v3, v0, v2

    .line 402
    aget-object v3, v0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, v0, v5

    aget v5, v5, v4

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 404
    const/4 v3, 0x1

    .local v3, "m":I
    :goto_1
    if-gt v3, v2, :cond_1

    .line 405
    aget-object v5, v0, v2

    aget-object v6, v0, v2

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    sub-int v7, v2, v3

    add-int/2addr v7, v1

    .line 406
    if-ne v3, v1, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, v1

    :goto_2
    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-int v8, v2, v3

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    aput v6, v5, v3

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 400
    .end local v3    # "m":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "n":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist getDeclination()F
    .locals 4

    .line 272
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getFieldStrength()F
    .locals 2

    .line 295
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v0

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getHorizontalStrength()F
    .locals 4

    .line 288
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getInclination()F
    .locals 4

    .line 280
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    float-to-double v0, v0

    .line 281
    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    move-result v2

    float-to-double v2, v2

    .line 280
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getX()F
    .locals 1

    .line 249
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public whitelist getY()F
    .locals 1

    .line 256
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public whitelist getZ()F
    .locals 1

    .line 263
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
