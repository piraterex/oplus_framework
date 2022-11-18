.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraCaptureSessionImplWrapper"
.end annotation


# instance fields
.field blacklist mCcsExt:Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetExtImpl(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;)Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;->getExtImpl()Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    const-class p1, Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

    invoke-static {p1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;->mCcsExt:Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method

.method private blacklist getExtImpl()Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;
    .locals 1

    .line 1035
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$CameraCaptureSessionImplWrapper;->mCcsExt:Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;

    return-object v0
.end method
