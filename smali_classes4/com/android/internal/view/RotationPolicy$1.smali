.class Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$enabled:Z

.field final synthetic blacklist val$rotation:I


# direct methods
.method constructor blacklist <init>(ZI)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    iput p2, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 147
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 148
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$enabled:Z

    if-eqz v1, :cond_0

    .line 149
    iget v1, p0, Lcom/android/internal/view/RotationPolicy$1;->val$rotation:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v1, "RotationPolicy"

    const-string v2, "Unable to save auto-rotate setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "exc":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
