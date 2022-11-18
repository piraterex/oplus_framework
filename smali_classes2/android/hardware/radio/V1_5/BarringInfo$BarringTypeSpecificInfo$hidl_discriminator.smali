.class public final Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist conditional:B = 0x1t

.field public static final blacklist noinit:B


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 592
    packed-switch p0, :pswitch_data_0

    .line 595
    const-string v0, "Unknown"

    return-object v0

    .line 594
    :pswitch_0
    const-string v0, "conditional"

    return-object v0

    .line 593
    :pswitch_1
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
