.class public Landroid/window/BackNavigationInfo$Builder;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/BackNavigationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private blacklist mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

.field private blacklist mScreenshotSurface:Landroid/view/SurfaceControl;

.field private blacklist mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 298
    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    .line 300
    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    .line 302
    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    .line 304
    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 306
    iput-object v0, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/BackNavigationInfo;
    .locals 9

    .line 372
    new-instance v8, Landroid/window/BackNavigationInfo;

    iget v1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    iget-object v2, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v5, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    iget-object v7, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;Landroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;)V

    return-object v8
.end method

.method public blacklist setDepartingAnimationTarget(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "departingAnimationTarget"    # Landroid/view/RemoteAnimationTarget;

    .line 322
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 323
    return-object p0
.end method

.method public blacklist setOnBackInvokedCallback(Landroid/window/IOnBackInvokedCallback;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "onBackInvokedCallback"    # Landroid/window/IOnBackInvokedCallback;

    .line 364
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 365
    return-object p0
.end method

.method public blacklist setOnBackNavigationDone(Landroid/os/RemoteCallback;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "onBackNavigationDone"    # Landroid/os/RemoteCallback;

    .line 355
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 356
    return-object p0
.end method

.method public blacklist setScreenshotBuffer(Landroid/hardware/HardwareBuffer;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "screenshotBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 338
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    .line 339
    return-object p0
.end method

.method public blacklist setScreenshotSurface(Landroid/view/SurfaceControl;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "screenshotSurface"    # Landroid/view/SurfaceControl;

    .line 330
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mScreenshotSurface:Landroid/view/SurfaceControl;

    .line 331
    return-object p0
.end method

.method public blacklist setTaskWindowConfiguration(Landroid/app/WindowConfiguration;)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "taskWindowConfiguration"    # Landroid/app/WindowConfiguration;

    .line 347
    iput-object p1, p0, Landroid/window/BackNavigationInfo$Builder;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    .line 348
    return-object p0
.end method

.method public blacklist setType(I)Landroid/window/BackNavigationInfo$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 313
    iput p1, p0, Landroid/window/BackNavigationInfo$Builder;->mType:I

    .line 314
    return-object p0
.end method
