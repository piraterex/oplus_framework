.class Landroid/app/ActivityThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mHandled:Z

.field final synthetic blacklist this$0:Landroid/app/ActivityThread;

.field final synthetic blacklist val$decorView:Lcom/android/internal/policy/DecorView;

.field final synthetic blacklist val$r:Landroid/app/ActivityThread$ActivityClientRecord;

.field final synthetic blacklist val$startingWindowLeash:Landroid/view/SurfaceControl;

.field final synthetic blacklist val$view:Landroid/window/SplashScreenView;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 4322
    iput-object p1, p0, Landroid/app/ActivityThread$1;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    iput-object p3, p0, Landroid/app/ActivityThread$1;->val$r:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object p4, p0, Landroid/app/ActivityThread$1;->val$decorView:Lcom/android/internal/policy/DecorView;

    iput-object p5, p0, Landroid/app/ActivityThread$1;->val$startingWindowLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4323
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDraw$0$android-app-ActivityThread$1(Landroid/window/SplashScreenView;)V
    .locals 1
    .param p1, "view"    # Landroid/window/SplashScreenView;

    .line 4336
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public whitelist onDraw()V
    .locals 5

    .line 4326
    iget-boolean v0, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    if-eqz v0, :cond_0

    .line 4327
    return-void

    .line 4329
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$1;->mHandled:Z

    .line 4334
    iget-object v0, p0, Landroid/app/ActivityThread$1;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    iget-object v2, p0, Landroid/app/ActivityThread$1;->val$r:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/ActivityThread$1;->val$decorView:Lcom/android/internal/policy/DecorView;

    iget-object v4, p0, Landroid/app/ActivityThread$1;->val$startingWindowLeash:Landroid/view/SurfaceControl;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread;->-$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    .line 4336
    iget-object v0, p0, Landroid/app/ActivityThread$1;->val$view:Landroid/window/SplashScreenView;

    new-instance v1, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/app/ActivityThread$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread$1;Landroid/window/SplashScreenView;)V

    invoke-virtual {v0, v1}, Landroid/window/SplashScreenView;->post(Ljava/lang/Runnable;)Z

    .line 4337
    return-void
.end method
