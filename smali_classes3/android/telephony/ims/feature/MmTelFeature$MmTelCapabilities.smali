.class public Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
.super Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmTelCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities$MmTelCapability;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_TYPE_CALL_COMPOSER:I = 0x10

.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x11

.field public static final blacklist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_SMS:I = 0x8

.field public static final whitelist CAPABILITY_TYPE_UT:I = 0x4

.field public static final whitelist CAPABILITY_TYPE_VIDEO:I = 0x2

.field public static final whitelist CAPABILITY_TYPE_VOICE:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 361
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 362
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 0
    .param p1, "capabilities"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>(I)V

    .line 382
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 370
    iget v0, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 371
    return-void
.end method


# virtual methods
.method public final whitelist addCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 440
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 441
    return-void
.end method

.method public final whitelist isCapable(I)Z
    .locals 1
    .param p1, "capabilities"    # I

    .line 459
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist removeCapabilities(I)V
    .locals 0
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 449
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 450
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MmTel Capabilities - ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, " Video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, " UT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, " SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, " CALL_COMPOSER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
