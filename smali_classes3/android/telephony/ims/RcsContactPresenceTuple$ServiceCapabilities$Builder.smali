.class public final Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
.super Ljava/lang/Object;
.source "RcsContactPresenceTuple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;


# direct methods
.method public constructor whitelist <init>(ZZ)V
    .locals 1
    .param p1, "isAudioCapable"    # Z
    .param p2, "isVideoCapable"    # Z

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;-><init>(ZZ)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    .line 241
    return-void
.end method


# virtual methods
.method public whitelist addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->-$$Nest$fgetmSupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-object p0
.end method

.method public whitelist addUnsupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    invoke-static {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;->-$$Nest$fgetmUnsupportedDuplexModeList(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-object p0
.end method

.method public whitelist build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    return-object v0
.end method
