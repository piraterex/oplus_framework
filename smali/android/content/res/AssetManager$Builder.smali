.class public Landroid/content/res/AssetManager$Builder;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUserApkAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public greylist-max-o addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    .locals 1
    .param p1, "apkAssets"    # Landroid/content/res/ApkAssets;

    .line 141
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public blacklist addLoader(Landroid/content/res/loader/ResourcesLoader;)Landroid/content/res/AssetManager$Builder;
    .locals 1
    .param p1, "loader"    # Landroid/content/res/loader/ResourcesLoader;

    .line 146
    iget-object v0, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public greylist-max-o build()Landroid/content/res/AssetManager;
    .locals 10

    .line 152
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 157
    .local v0, "systemApkAssets":[Landroid/content/res/ApkAssets;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "loaderApkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 159
    .local v2, "uniqueLoaderApkAssets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/res/ApkAssets;>;"
    iget-object v3, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_2

    .line 160
    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v5}, Landroid/content/res/loader/ResourcesLoader;->getApkAssets()Ljava/util/List;

    move-result-object v5

    .line 161
    .local v5, "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_1

    .line 162
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ApkAssets;

    .line 163
    .local v7, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 164
    invoke-virtual {v1, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    .end local v7    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 159
    .end local v5    # "currentLoaderApkAssets":Ljava/util/List;, "Ljava/util/List<Landroid/content/res/ApkAssets;>;"
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_2
    array-length v3, v0

    iget-object v5, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 171
    .local v3, "totalApkAssetCount":I
    new-array v5, v3, [Landroid/content/res/ApkAssets;

    .line 173
    .local v5, "apkAssets":[Landroid/content/res/ApkAssets;
    array-length v6, v0

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 177
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 176
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 181
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .restart local v7    # "n":I
    :goto_3
    if-ge v6, v7, :cond_4

    .line 182
    array-length v8, v0

    add-int/2addr v8, v6

    iget-object v9, p0, Landroid/content/res/AssetManager$Builder;->mUserApkAssets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    .line 183
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ApkAssets;

    aput-object v9, v5, v8

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 188
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_4
    new-instance v6, Landroid/content/res/AssetManager;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Landroid/content/res/AssetManager;-><init>(ZLandroid/content/res/AssetManager-IA;)V

    .line 189
    .local v6, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v6, v5}, Landroid/content/res/AssetManager;->-$$Nest$fputmApkAssets(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)V

    .line 190
    invoke-static {v6}, Landroid/content/res/AssetManager;->-$$Nest$fgetmObject(Landroid/content/res/AssetManager;)J

    move-result-wide v8

    invoke-static {v8, v9, v5, v4}, Landroid/content/res/AssetManager;->-$$Nest$smnativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 192
    iget-object v8, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 193
    :cond_5
    iget-object v7, p0, Landroid/content/res/AssetManager$Builder;->mLoaders:Ljava/util/ArrayList;

    new-array v4, v4, [Landroid/content/res/loader/ResourcesLoader;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Landroid/content/res/loader/ResourcesLoader;

    :goto_4
    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->-$$Nest$fputmLoaders(Landroid/content/res/AssetManager;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 195
    return-object v6
.end method
