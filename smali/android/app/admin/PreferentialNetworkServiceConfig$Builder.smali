.class public final Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
.super Ljava/lang/Object;
.source "PreferentialNetworkServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PreferentialNetworkServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mAllowFallbackToDefaultConnection:Z

.field blacklist mExcludedUids:[I

.field blacklist mIncludedUids:[I

.field blacklist mIsEnabled:Z

.field blacklist mNetworkId:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    .line 225
    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    .line 227
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    .line 228
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    .line 233
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/admin/PreferentialNetworkServiceConfig;
    .locals 9

    .line 307
    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both includedUids and excludedUids cannot be nonempty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :goto_0
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    iget-boolean v4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    iget-object v5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    iget-object v6, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    iget v7, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V

    return-object v0
.end method

.method public whitelist setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 243
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIsEnabled:Z

    .line 244
    return-object p0
.end method

.method public whitelist setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0
    .param p1, "uids"    # [I

    .line 296
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mExcludedUids:[I

    .line 298
    return-object p0
.end method

.method public whitelist setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0
    .param p1, "allowFallbackToDefaultConnection"    # Z

    .line 259
    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mAllowFallbackToDefaultConnection:Z

    .line 260
    return-object p0
.end method

.method public whitelist setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 0
    .param p1, "uids"    # [I

    .line 277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iput-object p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mIncludedUids:[I

    .line 279
    return-object p0
.end method

.method public whitelist setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    .locals 2
    .param p1, "preferenceId"    # I

    .line 324
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 328
    iput p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->mNetworkId:I

    .line 329
    return-object p0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid preference identifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
