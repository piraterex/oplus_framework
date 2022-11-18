.class public Landroid/content/res/ResourcesImplSocExtImpl;
.super Ljava/lang/Object;
.source "ResourcesImplSocExtImpl.java"

# interfaces
.implements Landroid/content/res/IResourcesImpSocExt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resourcesImpl"    # Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public whitelist getCachedDrawable(Ljava/lang/Object;Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "key"    # J
    .param p5, "id"    # I

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist putCacheList(JLandroid/graphics/drawable/Drawable;IZ)V
    .locals 0
    .param p1, "key"    # J
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "resId"    # I
    .param p5, "isColorDrawable"    # Z

    .line 29
    return-void
.end method

.method public whitelist setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    return-void
.end method
