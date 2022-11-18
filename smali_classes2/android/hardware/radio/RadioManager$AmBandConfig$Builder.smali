.class public Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$AmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private greylist-max-o mStereo:Z


# direct methods
.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$AmBandConfig;)V
    .locals 7
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$AmBandConfig;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getType()I

    move-result v2

    .line 1380
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1381
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    .line 1382
    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 7
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getType()I

    move-result v2

    .line 1369
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getUpperLimit()I

    move-result v4

    .line 1370
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1371
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    .line 1372
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/radio/RadioManager$AmBandConfig;
    .locals 8

    .line 1390
    new-instance v7, Landroid/hardware/radio/RadioManager$AmBandConfig;

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1391
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1392
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(IIIIIZ)V

    .line 1394
    .local v0, "config":Landroid/hardware/radio/RadioManager$AmBandConfig;
    return-object v0
.end method

.method public whitelist setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1402
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->mStereo:Z

    .line 1403
    return-object p0
.end method
