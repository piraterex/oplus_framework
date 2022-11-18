.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final blacklist LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getResource(I)I
    .locals 3
    .param p0, "errorCode"    # I

    .line 45
    const v0, 0x1040457

    packed-switch p0, :pswitch_data_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Http"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v0

    .line 47
    :pswitch_0
    const v0, 0x104045f

    return v0

    .line 50
    :pswitch_1
    return v0

    .line 53
    :pswitch_2
    const v0, 0x104045e

    return v0

    .line 56
    :pswitch_3
    const v0, 0x1040464

    return v0

    .line 59
    :pswitch_4
    const v0, 0x1040458

    return v0

    .line 62
    :pswitch_5
    const v0, 0x1040460

    return v0

    .line 65
    :pswitch_6
    const v0, 0x1040459

    return v0

    .line 68
    :pswitch_7
    const v0, 0x104045d

    return v0

    .line 71
    :pswitch_8
    const v0, 0x1040462

    return v0

    .line 74
    :pswitch_9
    const v0, 0x1040461

    return v0

    .line 77
    :pswitch_a
    const v0, 0x1040008

    return v0

    .line 80
    :pswitch_b
    const v0, 0x104045a

    return v0

    .line 83
    :pswitch_c
    const v0, 0x1040007

    return v0

    .line 86
    :pswitch_d
    const v0, 0x104045b

    return v0

    .line 89
    :pswitch_e
    const v0, 0x104045c

    return v0

    .line 92
    :pswitch_f
    const v0, 0x1040463

    return v0

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
