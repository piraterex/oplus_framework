.class public Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$FmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAf:Z

.field private final greylist-max-o mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private greylist-max-o mEa:Z

.field private greylist-max-o mRds:Z

.field private greylist-max-o mStereo:Z

.field private greylist-max-o mTa:Z


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .locals 7
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$FmBandConfig;

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1207
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getType()I

    move-result v2

    .line 1208
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1209
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1210
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1211
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getTa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1212
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getAf()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1213
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getEa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1214
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 7
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getType()I

    move-result v2

    .line 1193
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getUpperLimit()I

    move-result v4

    .line 1194
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1195
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1196
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1197
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1198
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1199
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1200
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 12

    .line 1222
    new-instance v11, Landroid/hardware/radio/RadioManager$FmBandConfig;

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1223
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1224
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    iget-boolean v7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    iget-boolean v8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    iget-boolean v9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    iget-boolean v10, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(IIIIIZZZZZ)V

    .line 1226
    .local v0, "config":Landroid/hardware/radio/RadioManager$FmBandConfig;
    return-object v0
.end method

.method public whitelist setAf(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1261
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1262
    return-object p0
.end method

.method public whitelist setEa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1270
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1271
    return-object p0
.end method

.method public whitelist setRds(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1243
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1244
    return-object p0
.end method

.method public whitelist setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1234
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1235
    return-object p0
.end method

.method public whitelist setTa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1252
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1253
    return-object p0
.end method
