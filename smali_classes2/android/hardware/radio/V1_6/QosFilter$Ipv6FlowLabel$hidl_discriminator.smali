.class public final Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel$hidl_discriminator;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final blacklist noinit:B = 0x0t

.field public static final blacklist value:B = 0x1t


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 219
    packed-switch p0, :pswitch_data_0

    .line 222
    const-string v0, "Unknown"

    return-object v0

    .line 221
    :pswitch_0
    const-string/jumbo v0, "value"

    return-object v0

    .line 220
    :pswitch_1
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
