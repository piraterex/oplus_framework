.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityThread;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Landroid/window/SplashScreenView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$2:Landroid/window/SplashScreenView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$0:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;->f$2:Landroid/window/SplashScreenView;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->lambda$syncTransferSplashscreenViewTransaction$1$android-app-ActivityThread(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method
