.class public Landroid/content/res/AssetManagerSocExtImpl;
.super Ljava/lang/Object;
.source "AssetManagerSocExtImpl.java"

# interfaces
.implements Landroid/content/res/IAssetManagerSocExt;


# instance fields
.field private blacklist mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManagerSocExtImpl;->mAssetManager:Landroid/content/res/AssetManager;

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist loadSocFrameworkRes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    return-void
.end method
