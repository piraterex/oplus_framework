.class public Landroid/view/SurfaceViewSocExtImpl;
.super Ljava/lang/Object;
.source "SurfaceViewSocExtImpl.java"

# interfaces
.implements Landroid/view/ISurfaceViewSocExt;


# instance fields
.field private blacklist mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Landroid/view/SurfaceViewSocExtImpl;->mSurfaceView:Landroid/view/SurfaceView;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist setSurfaceViewCreated(Landroid/view/SurfaceView;Z)V
    .locals 0
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;
    .param p2, "created"    # Z

    .line 16
    return-void
.end method
