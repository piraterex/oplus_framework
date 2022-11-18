.class public Landroid/view/SurfaceSocExtImpl;
.super Ljava/lang/Object;
.source "SurfaceSocExtImpl.java"

# interfaces
.implements Landroid/view/ISurfaceSocExt;


# instance fields
.field private blacklist mSurface:Landroid/view/Surface;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceSocExtImpl;->mSurface:Landroid/view/Surface;

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Landroid/view/SurfaceSocExtImpl;->mSurface:Landroid/view/Surface;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist hookLockCanvas()Z
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method
