.class public final synthetic Lsystem/ext/registry/SocCommonCoreRegistry$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lsystem/ext/loader/core/ExtCreator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/hardware/camera2/CameraManagerSocExtImpl;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/CameraManagerSocExtImpl;-><init>(Ljava/lang/Object;)V

    check-cast v0, Landroid/hardware/camera2/ICameraManagerSocExt;

    return-object v0
.end method
