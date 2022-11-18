.class public interface abstract Landroid/app/IContextImplExt$IStaticExt;
.super Ljava/lang/Object;
.source "IContextImplExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IContextImplExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStaticExt"
.end annotation


# virtual methods
.method public blacklist checkExternalStorageStateMounted(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 42
    return-void
.end method

.method public blacklist fixupDirIfNeed(Ljava/io/File;Landroid/os/storage/StorageManager;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "sm"    # Landroid/os/storage/StorageManager;

    .line 46
    return-void
.end method

.method public blacklist hookSetResources(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .param p1, "mResources"    # Landroid/content/res/Resources;
    .param p2, "mPackageName"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public blacklist hookStartServiceCommon(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 33
    const/4 v0, 0x0

    return v0
.end method
