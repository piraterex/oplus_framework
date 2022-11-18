.class public interface abstract Lcom/android/server/ISystemConfigExt;
.super Ljava/lang/Object;
.source "ISystemConfigExt.java"


# virtual methods
.method public blacklist addPowerSaveWhitelistExceptIdleForCota(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 54
    return-void
.end method

.method public blacklist addPowerSaveWhitelistForCota(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public blacklist filterFileInReadPermissions(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist interceptRemoveFeatureInRead(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFilePartitionWithProductFlag(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadOplusAvailableFeatures(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public blacklist onAddFeatureInRead(Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "file"    # Ljava/io/File;

    .line 44
    return-void
.end method

.method public blacklist onAddUnAvailableFeatureInRead(Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 46
    return-void
.end method

.method public blacklist readConfigInConstructor()V
    .locals 0

    .line 26
    return-void
.end method

.method public blacklist skipTagExceptionAndReturn(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "permFile"    # Ljava/io/File;

    .line 49
    const/4 v0, 0x0

    return v0
.end method
