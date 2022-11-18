.class public final Landroid/companion/AssociationRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "AssociationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/AssociationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mDeviceFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private blacklist mForceConfirmation:Z

.field private blacklist mSelfManaged:Z

.field private greylist-max-o mSingleDevice:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 322
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 319
    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    .line 320
    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    .line 322
    return-void
.end method


# virtual methods
.method public whitelist addDeviceFilter(Landroid/companion/DeviceFilter;)Landroid/companion/AssociationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/DeviceFilter<",
            "*>;)",
            "Landroid/companion/AssociationRequest$Builder;"
        }
    .end annotation

    .line 347
    .local p1, "deviceFilter":Landroid/companion/DeviceFilter;, "Landroid/companion/DeviceFilter<*>;"
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 351
    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/companion/AssociationRequest;
    .locals 10

    .line 410
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->markUsed()V

    .line 411
    iget-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request for a self-managed association MUST provide the display name of the device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    :goto_0
    new-instance v0, Landroid/companion/AssociationRequest;

    iget-boolean v3, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    iget-object v1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-boolean v7, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    iget-boolean v8, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/CharSequence;ZZLandroid/companion/AssociationRequest-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .locals 1

    .line 314
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationRequest$Builder;
    .locals 0
    .param p1, "deviceProfile"    # Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 360
    iput-object p1, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceProfile:Ljava/lang/String;

    .line 361
    return-object p0
.end method

.method public whitelist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationRequest$Builder;
    .locals 1
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 375
    return-object p0
.end method

.method public whitelist setForceConfirmation(Z)Landroid/companion/AssociationRequest$Builder;
    .locals 0
    .param p1, "forceConfirmation"    # Z

    .line 401
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 402
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mForceConfirmation:Z

    .line 403
    return-object p0
.end method

.method public whitelist setSelfManaged(Z)Landroid/companion/AssociationRequest$Builder;
    .locals 0
    .param p1, "selfManaged"    # Z

    .line 388
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 389
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSelfManaged:Z

    .line 390
    return-object p0
.end method

.method public whitelist setSingleDevice(Z)Landroid/companion/AssociationRequest$Builder;
    .locals 0
    .param p1, "singleDevice"    # Z

    .line 336
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 337
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 338
    return-object p0
.end method
